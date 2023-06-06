Feature: Búsqueda y clasificación de centros de salud cercanos

    Scenario: Búsqueda y obtención de lista de centros de salud cercanos.
        Given que el usuario ha permitido el acceso a su ubicación actual.
        When realiza una búsqueda de centros de salud cercanos.
        Then se muestran los resultados ordenados por distancia, comenzando por el centro de salud más cercano a su ubicación actual.

    Example:
        | Tipo de centro de salud  | Distancia |
        | Centro de salud 1        | 0.5 km    |
        | Centro de salud 2        | 1.2 km    |
        | Centro de salud 3        | 2.3 km    |
        | Centro de salud 4        | 3.1 km    |
        | Centro de salud 5        | 4.5 km    |

    Scenario: Filtro de resultados por tipo de servicios médicos ofrecidos.
        Given que el usuario está interesado en un servicio médico específico .
        When filtra la lista de resultados por tipo de servicio médico ofrecido.
        Then se muestran solo los centros de salud que ofrecen el servicio médico deseado.

    Example:
        | Tipo de servicio medico |
        | Servicio 1              |
        | Servicio 2              |
        | Servicio 3              |

        | Tipo de centro de salud  del servicio 1 | Distancia |
        | Centro de salud 2                       | 1.2 km    |
        | Centro de salud 4                       | 3.1 km    |