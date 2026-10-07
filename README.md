# Chispa Salvaje

Juego de acción en mundo abierto para tablet (y PC). Todo está en un único archivo: `index.html`.

## Cómo jugar
- Abre `index.html` en el navegador de la tablet (o publícalo con GitHub Pages).
- **Arrastra el dedo** en cualquier parte de la pantalla para moverte. Disparas solo al enemigo más cercano.
- **DASH**: esquiva (eres invencible un instante), golpea a lo que atraviesas y destruye balas → carga la Supernova.
- **SUPERNOVA**: se carga matando. Arrasa todo lo que hay en pantalla.
- En PC: WASD / flechas, Espacio = dash, E = supernova, P = pausa.

## Objetivo
1. Explora los 4 biomas (Bosque, Volcán, Pantano, Cañón de Cuarzo). La flecha te lleva al guardián más cercano.
2. Derrota a los 4 mini jefes: Rey Gelatina, Señor Magma, Bruja del Pantano y Escorpión de Cuarzo.
3. Cada uno suelta un **núcleo** ◆. Con los 4 se rompe el sello del centro del mapa.
4. Derrota al **Devorador de Estrellas** (3 fases, con láseres).

## Mecánicas
- Subes de nivel muy rápido y eliges 1 de 3 cartas (común, rara, épica, legendaria).
- Combo con multiplicador de experiencia; con 50, 100, 250… entras en **FRENESÍ** (doble disparo).
- Cofres con ruleta y opción de **JACKPOT** (3 mejoras a la vez).
- Enemigos élite dorados, oleadas sorpresa y explosiones en cadena.
- Las ★ que recoges se guardan para comprar mejoras permanentes en el menú.

## Novedades (v2)
- **Curación**: fuentes de vida en el mapa (+50% de vida, se recargan en 45 s), corazones que sueltan los enemigos, carta de Regeneración, curación en cada hito de combo y vida llena al vencer a un guardián.
- **Altares de poder**: Furia (daño x2), Prisa (+50% velocidad y cadencia), Escudo (invulnerable) y Agujero Negro (atraes todo).
- **Misiones**: siempre hay 3 activas; al cumplirlas ganas ★, un cofre gratis y un cambio de cartas.
- **Duende Dorado**: aparece de vez en cuando y huye; cada golpe suelta monedas y si lo atrapas, lluvia de estrellas.
- **Multikills** (¡TRIPLE!, ¡MASACRE!, ¡ANIQUILACIÓN!) con estrellas extra.
- **Cartas**: botón 🎲 para cambiarlas y 10% de probabilidad de ELECCIÓN DOBLE.
- **15 logros** permanentes que dan estrellas.
- **5 personajes** desbloqueables: Chispa, Brasa, Escarcha, Brote y Trueno.
- **Guardado automático** cada 8 s y al pausar o salir: en el menú aparece «Continuar».
- **Modo infinito** después de ganar y opción para quitar la vibración.

## Multijugador en el mismo dispositivo (v3)
- En el menú elige **1, 2 o 3 jugadores**.
- Cada jugador controla su personaje desde **su esquina**: J1 abajo a la izquierda, J2 arriba a la derecha (sentado enfrente, sus controles salen girados) y J3 abajo a la derecha.
- Cada esquina tiene su joystick (toca cerca de tu esquina), su DASH, su SUPERNOVA y su barra de vida.
- El equipo comparte nivel, cartas de mejora, estrellas y misiones. La cámara se aleja para que todos quepáis en pantalla.
- Si alguien cae, quédate a su lado 2,5 s para **revivirle**. Las fuentes de vida curan y reviven a todo el equipo. La partida acaba si caéis todos.
- Más jugadores = más enemigos y jefes con más vida.
- En PC: J1 WASD + Espacio/E, J2 flechas + Enter/., J3 IJKL + U/O.

## App para Android (APK)
- Cada vez que cambia el juego, GitHub construye `ChispaSalvaje.apk` automáticamente y lo publica en **Releases** del repositorio.
- Instalación: descarga el APK desde la tablet, ábrelo y permite «instalar apps desconocidas» para el navegador o el gestor de archivos.
- La app va a pantalla completa, en horizontal (gira sola si das la vuelta a la tablet), no se apaga la pantalla y funciona sin internet.
- El botón Atrás pausa la partida; al salir de la app la partida se guarda.
- Código de la app: carpeta `android/` (WebView + `build.sh`, sin Gradle). La clave de firma `android/chispa.keystore` está en el repositorio para que las actualizaciones se instalen encima sin perder partidas.
