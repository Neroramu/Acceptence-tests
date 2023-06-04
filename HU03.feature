Feature: Visualización de notificaciones médico - paciente

    Scenario: Registro de notificaciones e instrucciones dadas por un médico
        Given el paciente se encuentre en el menú de la aplicación
        When selecciona la opción “centro de notificaciones”
            And seleccione una opción de registro
        Then se desplegará el formulario para registrar las notificaciones
            And recibirlas en el momento especificado en la aplicación

    Scenario: Modificar o eliminar las instrucciones
        Given el paciente se encuentre en la lista de instrucciones
            And seleccione la instrucción deseada
        When se encuentre en la opción de “Modificar” o “Eliminar” consultas
        Then se realizará la acción seleccionada por el paciente