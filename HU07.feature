Feature: Visualización de centros de salud cercanos

    Scenario: Activación del servicio de búsqueda
        Given que el usuario acepta los permisos de ubicación
            And el usuario activa el GPS
        When el sistema confirma con éxito la activación del GPS
        Then el sistema de búsqueda ya se encuentra activada.

    Scenario: No activación del servicio de búsqueda
        Given que el usuario no acepta los permisos de ubicación
        When el sistema no detecta la activación del GPS
        Then no se mostrará las ubicaciones cercanas al buscarlas. 

    Scenario: Visualización de resultados
        Given que el usuario se encuentra en menú de opciones. 
        When selecciona buscar centros de salud cercanos.
        Then se muestra la ubicación de los resultados en un mapa.