Feature: Visualización de centros de salud cercanos

    Scenario: Activación del servicio de búsqueda
        Given que el usuario acepta los permisos de ubicación
            And el usuario activa el GPS
        When el sistema confirma con éxito la activación del GPS
        Then el sistema de búsqueda ya se encuentra activada.

    Example:
        | Permisos | GPS | Resultado |

    Scenario: No activación del servicio de búsqueda
        Given que el usuario no acepta los permisos de ubicación
        When el sistema no detecta la activación del GPS
        Then no se mostrará las ubicaciones cercanas al buscarlas. 

    Example:
        | Permisos | GPS | Resultado |
        |    si    |  no |    no     |
        |    no    |  si |    no     |
        |    no    |  no |    no     |

    Scenario: Visualización de resultados
        Given que el usuario se encuentra en menú de opciones. 
        When selecciona buscar centros de salud cercanos.
        Then se muestra la ubicación de los resultados en un mapa.

    Example:
        | Centros de salud cercanos |
        | Nombre        | Dirección         | Teléfono      | Horario       | Ubicación         |
        | Fe y Alegria  | Av. 9 de Octubre  | 042-123456    | 08:00 - 16:00 | -2.1234, -78.1234 |
        | San Francisco | Av. Baldo Mera    | 042-112314    | 10:00 - 18:00 | -2.1231, -45.1768 |
        | San Vicente   | Av. 12 de Octubre | 042-123456    | 08:00 - 16:00 | -2.1234, -78.1234 |