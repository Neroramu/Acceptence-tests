Feature: Eliminar actividad registrada en el recordatorio

    Scenario: Eliminar recordatorios de medicamentos.
        Given que el paciente desea eliminar su tratamiento de medicinas dentro del recordatorio.
        When el paciente ingresa a sus recordatorios de medicamentos.
            And sea redirigido al detallado del tratamiento que está llevando.
        Then al paciente le saldrá un mensaje para confirmar la eliminación del recordatorio sobre su tratamiento.

    Example:
        | Eliminar |
        | Eliminar recordatorio de medicamentos |
        | Nombre del medicamento | Cantidad de medicamento |
        | Paracetamol            | 2                       |
        | Ibuprofeno             | 1                       |
        | Amoxicilina            | 3                       |


    Scenario: Eliminar recordatorios de citas médicas
        Given que el paciente desea eliminar sus citas médicas dentro del recordatorio.
        When el paciente ingresa a sus recordatorios de citas médicas.
            And sea redirigido al detallado de todas sus citas pendientes.
        Then al paciente le saldrá un mensaje para confirmar la eliminación del recordatorio.

    Example:
        | Eliminar |
        | Eliminar recordatorio de citas médicas |
        | Nombre del médico | Especialidad | Fecha de la cita | Hora de la cita |
        | Dr. Juan Perez    | Pediatría    | 12/12/2020       | 10:00           |
        | Dr. Juan Perez    | Pediatría    | 12/12/2020       | 10:00           |
        | Dr. Juan Perez    | Pediatría    | 12/12/2020       | 10:00           |

    Scenario: No eliminar recordatorios de citas médicas/medicamentos.
        Given que el paciente desea eliminar sus citas médicas/medicamentos en el formulario del recordatorio.
        When el paciente ingresa a sus recordatorios de citas médicas/medicamentos.
            And sea redirigido al detallado de todas sus citas pendientes/medicamentos.
        Then al paciente le saldrá un mensaje para confirmar o cancelar la eliminación del recordatorio.

    Example:
        | Eliminar |
        | Eliminar recordatorio de medicamentos  |
        | Nombre del medicamento | Cantidad de medicamento |
        | Paracetamol            | 2                       |
        | Ibuprofeno             | 1                       |
        | Amoxicilina            | 3                       |
        | Seguro que desea eliminar el recordatorio? |
        | Si | No |

        | Eliminar |
        | Eliminar recordatorio de citas médicas |
        | Nombre del médico | Especialidad | Fecha de la cita | Hora de la cita |
        | Dr. Juan Perez    | Pediatría    | 12/12/2020       | 10:00           |
        | Dr. Juan Perez    | Pediatría    | 07/01/2021       | 17:00           |
        | Dr. Juan Perez    | Pediatría    | 15/07/2021       | 08:00           |
        | Seguro que desea eliminar el recordatorio? |
        | Si | No |
        

    