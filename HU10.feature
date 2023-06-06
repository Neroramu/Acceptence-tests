Feature: Evaluación de centros de salud cercanos a través de reseñas y puntuaciones

    Scenario: Visualizar reseñas de centro de salud
        Given que el usuario necesita obtener información sobre la reputación de un centro de salud cercano
        When seleccione un centro de salud de la lista de centros de salud cercanos
        Then la aplicación mostrará las reseñas y puntuaciones de otros usuarios sobre ese centro de salud.

    Example:
        | Centros de salud cercanos |
        | Centro de salud 1         |
        | Centro de salud 2         |
        | Centro de salud 3         |

        | Reputacion del Centro de salud 2 |
        | Usuario   | Reseña    | Puntuación    |
        | Usuario 1 | Reseña 1  | Puntuación 1  |
        | Usuario 2 | Reseña 2  | Puntuación 2  |
        | Usuario 3 | Reseña 3  | Puntuación 3  |

    Scenario: Visualizar tablas comparativas de centros de salud
        Given que el usuario necesita comparar la reputación de varios centros de salud cercanos.
        When seleccione varios centros de salud de la lista de centros de salud cercanos 
        Then la aplicación mostrará una tabla comparativa de las reseñas y puntuaciones de los centros de salud seleccionados.

    Example:
        | Centros de salud cercanos | Reputacion |
        | Centro de salud 1         | 4.5        |
        | Centro de salud 2         | 3.5        |
        | Centro de salud 3         | 2.5        |


    Scenario: Brindar reseñas a centros de salud visitados
        Given que el usuario necesita dejar su propia reseña y puntuación sobre un centro de salud visitado.
        When seleccione un centro de salud de la lista de centros de salud cercanos .
            And haya visitado ese centro de salud.
        Then el sistema permitirá al usuario dejar su propia reseña y puntuación sobre ese centro de salud.

    Example:
        | Eliga un centro de salud |
        | Centro de salud 1        |
        | Centro de salud 2        |
        | Centro de salud 3        |

        | Reseña y puntuación |
        | Reseña 1            |
        | Puntuación 1        |