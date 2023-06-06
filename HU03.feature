Feature: Visualización de la información de los recordatorios realizados

    Scenario: Visualización de recordatorios de medicamentos.
        Given que el paciente ya registró sus medicamentos en el formulario del recordatorio.
        When el paciente ingresa a sus recordatorios de medicamentos.
        Then el paciente es redirigido al detallado de todos sus medicamentos y la frecuencia que debe tomarlos.

    Example:
        | Medicamento |   Frecuencia   | 
        | Paracetamol | 3 veces al día |
        | Ibuprofeno  | 2 veces al día |
        | Amoxicilina | 1 vez al día   |

    Scenario: Visualización de recordatorios de citas médicas
        Given que el paciente ya registró sus citas médicas en el formulario del recordatorio.
        When el paciente ingresa a sus recordatorios de citas médicas.
        Then el paciente es redirigido al detallado de todas sus citas pendientes.

    Example:
        |    Especialidad     |    Fecha    |    Hora    | 
        | Medicina general    |  12/05/2021 |  10:00 am  |
        | Odontología general |  15/05/2021 |  11:00 am  |
        | Medicina general    |  20/05/2021 |  12:00 pm  |

    Scenario: No visualización de recordatorios de citas médicas/medicamentos.
        Given que el paciente no registró sus citas médicas/medicamentos en el formulario del recordatorio.
        When el paciente ingresa a sus recordatorios de citas médicas/medicamentos.
        Then el paciente es alertado con el mensaje "Aún no ha registrado ningún recordatorio".

    Example:
        | Recordatorios |
        | Aun no ha registrado ningún recordatorio |