Feature: Procedimiento del registro de tratamiento

    Scenario: Registrar tratamiento a un paciente.
        Given que el médico ha iniciado sesión en la aplicación.
            And ha accedido al perfil del paciente al que desea registrar.
        When selecciona la opción de “registrar tratamiento” en el perfil del paciente.
            And completa el formulario de registro del tratamiento con los detalles necesarios.
        Then la aplicación debe proporcionar recordatorios para administrar el medicamento según la frecuencia registrada en el tratamiento.

    Scenario: Eliminar el tratamiento a un paciente.
        Given que el médico se encuentra en el perfil del paciente.
            And selecciona el tratamiento del paciente a eliminar.
        When selecciona la opción de “eliminar tratamiento” en el perfil del paciente.
        Then la aplicación elimina el registro del tratamiento especificado del paciente.

    Scenario: Editar el tratamiento a un paciente.
        Given que el médico se encuentra en el perfil del paciente.
            And selecciona el perfil del paciente al que desea editar el tratamiento.
        When selecciona la opción de “editar tratamiento” en el perfil del paciente.
            And edita los campos necesarios del formulario del tratamiento.
        Then la aplicación actualiza el nuevo registro del paciente.