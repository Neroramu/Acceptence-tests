Feature: Búsqueda y clasificación de centros de salud cercanos

    Scenario: Búsqueda y obtención de lista de centros de salud cercanos.
        Given que el usuario ha permitido el acceso a su ubicación actual.
        When realiza una búsqueda de centros de salud cercanos.
        Then se muestran los resultados ordenados por distancia, comenzando por el centro de salud más cercano a su ubicación actual.

    Scenario: Filtro de resultados por tipo de servicios médicos ofrecidos.
        Given que el usuario está interesado en un servicio médico específico .
        When filtra la lista de resultados por tipo de servicio médico ofrecido.
        Then se muestran solo los centros de salud que ofrecen el servicio médico deseado.