Feature: Consulta de tratamiento de pacientes

    Scenario: Consulta de lista de pacientes.
        Given que el médico se encuentra en el menú de opciones.
        When selecciona la opción de lista de pacientes.
        Then la aplicación desplegará una lista con todos sus pacientes.

    Scenario: Consulta de detalles de pacientes en específico.
        Given que el médico se encuentra en la lista de pacientes.
        When busca y selecciona el paciente deseado de la lista.
        Then se mostrará información detallada del paciente.