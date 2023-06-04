Feature: Visualización y registro de información a los pacientes sobre sus enfermedades

    Scenario: Registro de formulario para consulta con el médico
        Given el paciente se encuentre en el formulario del registro
        When ingrese todos los datos necesarios para el registro
        Then la consulta se registra exitosamente

    Scenario: Modificar o eliminar el registro de consulta
        Given el paciente se encuentre en la visualización de consultas
        When se encuentre en la opción de “Modificar” o “Eliminar” consultas
            And seleccione la opción deseada por el paciente
        Then se eliminará o modificará la consulta según la selección del paciente