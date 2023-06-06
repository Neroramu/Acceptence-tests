Feature: Consulta de tratamiento de pacientes

    Scenario: Consulta de lista de pacientes.
        Given que el médico se encuentra en el menú de opciones.
        When selecciona la opción de lista de pacientes.
        Then la aplicación desplegará una lista con todos sus pacientes.

    Example:
        | Opciones  |
        | Lista de Pacientes |

        | Mario |
        | Luis  |
        | Juan  |

    Scenario: Consulta de detalles de pacientes en específico.
        Given que el médico se encuentra en la lista de pacientes.
        When busca y selecciona el paciente deseado de la lista.
        Then se mostrará información detallada del paciente.

    Example:
        | Opciones  |
        | Lista de Pacientes |
        | Mario |

        | Nombre    | Mario     |
        | Edad      | 25        |
        | Sexo      | Masculino |
        | Dirección | Calle 1   |
        | Teléfono  | 12345678  |
        | Correo    |           |