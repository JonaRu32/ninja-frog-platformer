# 🐸 Ninja Frog Platformer

Juego de plataformas en **Godot 4.7** para la tarea *Personaje y enemigo* de **Programación Multimedia (2º DAM)**.

Para probarlo, importa el `project.godot` desde Godot y dale a **F5**. Hay que llegar al trofeo del final sin morir: esquiva a los enemigos, salta los huecos y coge las manzanas que puedas.

## Controles

- **← →** o **A / D**: moverte
- **↑**, **W** o **Espacio**: saltar (hasta **3 veces** seguidas)

## Desafíos

Los enemigos están en `escenas/enemigos/` y los objetos (manzanas y trofeo) en `escenas/objetos/`.

- [x] **1. Enemigo sencillo** (`enemigo_sencillo`): cuatro `RayCast2D`; da media vuelta si choca con una pared o se acaba el suelo. Hay dos en el nivel
- [x] **2. Bala con AnimationPlayer** (`bala_animada`): la animación `recorrido` la mueve en línea recta y en bucle
- [x] **3. Bala StaticBody2D + Area2D** (`bala_estatica`): se mueve cambiando `position` cada frame y el área `FinRecorrido` la devuelve al principio
- [x] **4. Enemigo con bola orbitando** (`enemigo_bola`): si lo tocas, lo matas; si te toca la bola, mueres
- [x] **5. Enemigo que da puñetazos** (`enemigo_punetazo`): te ve con un `RayCast2D` a cada lado y el puñetazo solo mata en algunos frames (`frame_changed`)

## Créditos

- Base: ejemplo de clase de Rubén Montero ([RubenTeacher/GodotCharacterTest](https://github.com/RubenTeacher/GodotCharacterTest))
- Gráficos: [Pixel Adventure 1](https://pixelfrog-assets.itch.io/pixel-adventure-1), de Pixel Frog
- Old Man: spritesheets del diario de clase de Programación Multimedia
