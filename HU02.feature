Feature: Visualización de centros de salud cercanos

    Scenario: Búsqueda de centros de salud cercanos
        Given el paciente se encuentre en el menú de la aplicación
        When selecciona la opción “Centros de salud cercanos”
        Then se desplegará una lista con los centros de salud cercanos con la dirección y distancia a la que se encuentran

    Scenario: Llamada de emergencia en caso de accidentes
        Given el paciente se encuentra en el menú de la aplicación
        When selecciona la opción “Llamada de emergencia”
        Then se llamará automáticamente al centro de salud más cercano