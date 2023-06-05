Feature: Selección de recordatorio de actividades médicas

    Scenario: Selección de recordatorio de administración de medicamentos
        Given que el paciente se encuentra en el formulario para agregar un nuevo recordatorio.
        When el paciente selecciona el tipo de recordatorio de administración de medicamentos.
        Given el paciente es redirigido al formulario para agregar un nuevo recordatorio de medicamentos.


    Scenario: Selección de recordatorio de citas médicas
        Given que el paciente se encuentra en el formulario para agregar un nuevo recordatorio.
        When el paciente selecciona el tipo de recordatorio de citas médicas.
        Then el paciente es redirigido al formulario para agregar un nuevo recordatorio de citas médicas.

    Scenario: No selección de tipo de recordatorio
        Given que el paciente se encuentra en el formulario para agregar un nuevo recordatorio.
        When el paciente no selecciona un tipo de recordatorio.
        Then el paciente es alertado con el mensaje "Debe seleccionar un tipo de recordatorio".