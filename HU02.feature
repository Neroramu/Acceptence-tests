Feature: Registro de actividades a realizar para medicamentos

    Scenario: Registro de recordatorio de medicamentos
        Given que el paciente se encuentra en el formulario para agregar un nuevo recordatorio de medicamentos.
        When el paciente ingresa el nombre del medicamento.
            And agrega la cantidad de medicamento.
            And selecciona el botón aceptar.
        Then el paciente es redirigido al formulario para configurar los métodos de recordatorio.

    Example:
        | Nombre del medicamento | Cantidad de medicamento |
        | Paracetamol            | 2                       |
        | Ibuprofeno             | 1                       |
        | Amoxicilina            | 3                       |


    Scenario: Registro de recordatorio de citas médicas
        Given que el paciente se encuentra en el formulario para agregar un nuevo recordatorio de citas médicas.
        When el paciente ingresa la fecha de la cita médica.
            And agrega el lugar, el nombre del doctor, la especialidad.
            And selecciona el botón aceptar.
        Then el paciente es redirigido al formulario para configurar los métodos de recordatorio.

    Example:
        | Fecha de la cita médica | Lugar de la cita médica | Nombre del doctor | Especialidad |
        | 12/12/2020              | Hospital San Juan       | Dr. Juan Perez    | Cardiología  |
        | 15/12/2020              | Hospital San Juan       | Dr. Juan Perez    | Cardiología  |
        | 20/12/2020              | Hospital San Juan       | Dr. Juan Perez    | Cardiología  |

    Scenario: Faltan campos por completar en el registro del recordatorio
        Given que el paciente se encuentra en el formulario para agregar un nuevo recordatorio.
        When el paciente intenta continuar sin haber completado al menos un campo del formulario.
        Then el paciente es alertado con el mensaje "Debe completar al menos un campo".

    Example:
        | Nombre del medicamento | Cantidad de medicamento |
        | Paracetamol            | 2                       |
        | Ibuprofeno             |                         |
        | Amoxicilina            | 3                       |

        | Fecha de la cita médica | Lugar de la cita médica | Nombre del doctor | Especialidad |
        | 12/12/2020              | Hospital San Juan       | Dr. Juan Perez    | Cardiología  |
        |                         | Hospital San Juan       | Dr. Juan Perez    | Cardiología  |
        |                         |                         | Dr. Juan Perez    | Cardiología  |
