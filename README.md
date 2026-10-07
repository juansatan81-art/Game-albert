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

## Recompensas sin interrupciones (v4)
- Los **cofres** se abren en segundo plano: una tarjeta con ruleta aparece a la derecha y la partida sigue.
- Las **subidas de nivel** se guardan: aparece el botón «⬆ MEJORA ×N» y el menú de cartas solo se abre solo cuando no hay enemigos cerca (ni jefe). Puedes tocar el botón cuando quieras o «Elegir luego».
- Opción en pausa **«Mejoras: automáticas»**: elige sola la mejor carta y te lo muestra en un aviso lateral.
- Cartas y anuncios más rápidos y pequeños; 1 s de protección al cerrar el menú de cartas.
- Mejoras: los enemigos ya no se amontonan, flechas hacia cofres, altares y fuentes cercanas, recogida más rápida y menos números de daño cuando hay mucho jaleo.

## Modo historia: 20 mundos (v5)

### La historia
La **Hoguera Primordial** encendía todas las estrellas. Un día el **Devorador** se la tragó y repartió sus pedazos por 20 mundos, cada uno vigilado por un fragmento suyo y cuatro guardianes. Solo una chispa escapó: **Chispa**.

En cada mundo, Chispa derrota a los guardianes, rompe el sello y vence al fragmento del Devorador, recuperando una **llama**. Al cruzar la grieta hacia el siguiente mundo, el viaje la apaga casi del todo: por eso **empieza desde cero en cada mundo**. Mientras tanto, los fragmentos derrotados huyen y se juntan en el **Corazón del Vacío**, que crece mundo a mundo (se ve en las escenas de los mundos 5, 10 y 15).

En el mundo 20, Chispa destruye el Corazón del Devorador, las 20 llamas vuelven a la Hoguera y las estrellas regresan. Pero en el último panel, en una galaxia lejana, **un nuevo ojo se abre**: queda abierto el Capítulo 2.

### Mundos
1 Valle Ascua · 2 Arrecife Abisal · 3 Desierto de Cristal · 4 Taiga Helada · 5 Jungla Neón · 6 Ciudad Reloj · 7 Islas Nube · 8 Caverna Fúngica · 9 Mar de Lava · 10 Jardín de Papel · 11 Tormenta Eterna · 12 Biblioteca Infinita · 13 Planeta Gominola · 14 Ruinas Lunares · 15 Bosque Sombra · 16 Dunas Nocturnas · 17 Nebulosa Rosa · 18 Fábrica Infinita · 19 Espejo Roto · 20 Corazón del Vacío.

Cada mundo tiene sus colores, su mapa, sus decorados, sus 4 guardianes con nombre propio y un ataque especial, y su propio Devorador.

### Enemigos nuevos (uno nuevo por mundo)
Enjambre, Embestidor (carga en línea), Divisor (se parte en dos), Francotirador (láser de aviso y disparo rápido), Orbitador (te rodea), Sanador (cura a los demás), Parpadeo (se teletransporta), Torreta giratoria, Minero (deja minas), Congelador (te ralentiza), Saltarín (cae sobre ti), Fantasma (se vuelve invisible), Invocador y Excavador (sale bajo tus pies). Nuevos guardianes: Gólem e Hidra.

### Progresión y equilibrio
- Cada mundo es más difícil (vida y daño de enemigos, más élites, jefes más fuertes). Al principio de cada mundo hay un calentamiento suave.
- Curación más escasa: fuentes 35 % cada 70 s, menos corazones, subir de nivel cura 4 %, guardianes curan 50 %.
- Si caes, el mundo empieza de cero, pero las estrellas y mejoras permanentes se guardan.
- 12 aspectos para Chispa que se desbloquean avanzando por los mundos y 3 logros nuevos.
- Optimización: el mapa se dibuja por trozos en caché y la calidad baja sola si el dispositivo va lento.
