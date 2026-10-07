#!/usr/bin/env bash
# Construye ChispaSalvaje.apk sin Gradle, usando las herramientas del SDK de Android instaladas.
set -euo pipefail
cd "$(dirname "$0")"
SDK="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-}}"
[ -n "$SDK" ] || { echo "Falta ANDROID_HOME"; exit 1; }
BT="$(ls -d "$SDK"/build-tools/* | sort -V | tail -1)"
PLAT="$(ls -d "$SDK"/platforms/android-* | grep -E 'android-[0-9]+$' | sort -V | tail -1)"
VC="${VERSION_CODE:-1}"
VN="1.0.$VC"
echo "build-tools: $BT"; echo "plataforma: $PLAT"; echo "versión: $VN"

rm -rf build assets && mkdir -p build/gen build/obj build/dex assets/fonts
cp fonts/* assets/fonts/
# El juego, con las fuentes incluidas para que funcione sin internet
python3 - <<'PY'
import re
s=open('../index.html',encoding='utf-8').read()
s=re.sub(r'<link rel="preconnect"[^>]*>\n','',s)
s=re.sub(r'<link rel="stylesheet" href="https://fonts\.googleapis\.com[^"]*">','<link rel="stylesheet" href="fonts/fonts.css">',s)
assert 'fonts.googleapis' not in s
open('assets/index.html','w',encoding='utf-8').write(s)
PY

"$BT/aapt2" compile --dir res -o build/res.zip
"$BT/aapt2" link -o build/base.apk -I "$PLAT/android.jar" --manifest AndroidManifest.xml -A assets \
  --java build/gen --min-sdk-version 21 --target-sdk-version 34 --version-code "$VC" --version-name "$VN" build/res.zip
javac -nowarn -source 11 -target 11 -encoding UTF-8 -classpath "$PLAT/android.jar" -d build/obj $(find src build/gen -name '*.java')
"$BT/d8" --release --min-api 21 --lib "$PLAT/android.jar" --output build/dex $(find build/obj -name '*.class')
cp build/base.apk build/unsigned.apk
(cd build/dex && zip -q -j ../unsigned.apk classes.dex)
"$BT/zipalign" -f -p 4 build/unsigned.apk build/aligned.apk
"$BT/apksigner" sign --ks chispa.keystore --ks-key-alias chispa --ks-pass pass:chispasalvaje --key-pass pass:chispasalvaje \
  --out ../ChispaSalvaje.apk build/aligned.apk
"$BT/apksigner" verify --verbose ../ChispaSalvaje.apk | head -5
ls -la ../ChispaSalvaje.apk
