Feature: Información de horarios de atención de centros de salud cercanos

    Scenario: Visualización de horarios de centros de salud cercanos
        Given que el usuario necesita obtener información sobre los horarios de atención de un centro de salud cercano.
        When seleccione un centro de salud de la lista de centros de salud cercanos.
        Then la aplicación mostrará los horarios de atención actualizados de ese centro de salud.

    Example:
        | Centro de salud   | Horario de atención |
        | Jesus Consolador  | 7:00 - 20:00        |
        | Fe y Esperanza    | 8:00 - 19:00        |
        | Unidad y Amistad  | 6:00 - 21:00        |