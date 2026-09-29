# 🐸 Ninja Frog Platformer

Juego de plataformas en **Godot 4.7** para la tarea *Personaje y enemigo* de **Programación Multimedia (2º DAM)**.

Para probarlo, importa el `project.godot` desde Godot y dale a **F5**.

## Controles

- **← →** o **A / D**: moverte
- **↑**: saltar (hasta **3 veces** seguidas)

## Desafíos

- [ ] **1. Enemigo sencillo**: detecta muros y precipicios con `RayCast2D` y da media vuelta
- [ ] **2. Bala (AnimationPlayer)**: cruza el aire y vuelve a aparecer al principio del recorrido
- [ ] **3. Bala (StaticBody2D + Area2D)**: avanza cambiando `position` cada frame y un área la devuelve al principio
- [ ] **4. Enemigo con bola orbitando**: si lo tocas, lo matas; si te toca la bola, mueres
- [ ] **5. Enemigo que da puñetazos**: te detecta con `RayCast2D` y el golpe solo mata en ciertos frames

## Créditos

- Base: ejemplo de clase de Rubén Montero ([RubenTeacher/GodotCharacterTest](https://github.com/RubenTeacher/GodotCharacterTest))
- Gráficos: [Pixel Adventure 1](https://pixelfrog-assets.itch.io/pixel-adventure-1), de Pixel Frog
