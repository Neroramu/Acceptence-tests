Feature: Información de horarios de atención de centros de salud cercanos

    Scenario: Visualización de horarios de centros de salud cercanos
        Given que el usuario necesita obtener información sobre los horarios de atención de un centro de salud cercano.
        When seleccione un centro de salud de la lista de centros de salud cercanos.
        Then la aplicación mostrará los horarios de atención actualizados de ese centro de salud.