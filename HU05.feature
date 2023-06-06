Feature: Procedimiento del registro de tratamiento

    Scenario: Registrar tratamiento a un paciente.
        Given que el médico ha iniciado sesión en la aplicación.
            And ha accedido al perfil del paciente al que desea registrar.
        When selecciona la opción de “registrar tratamiento” en el perfil del paciente.
            And completa el formulario de registro del tratamiento con los detalles necesarios.
        Then la aplicación debe proporcionar recordatorios para administrar el medicamento según la frecuencia registrada en el tratamiento.

    Example:
        | Elegir paciente |
        | Mario          |

        | Registrar tratamiento |

        | Tipo de tratamiento | Frecuencia | Medicamento | Dosis | Duración | Fecha de inicio | Fecha de finalización |
        | Oral                | 3 veces    | Paracetamol | 500mg | 5 días   | 01/01/2021      | 05/01/2021            |

    Scenario: Eliminar el tratamiento a un paciente.
        Given que el médico se encuentra en el perfil del paciente.
            And selecciona el tratamiento del paciente a eliminar.
        When selecciona la opción de “eliminar tratamiento” en el perfil del paciente.
        Then la aplicación elimina el registro del tratamiento especificado del paciente.

    Example:
        | Elegir paciente |
        | Mario          |

        | Eliminar tratamiento  |

        | Tipo de tratamiento | Frecuencia | Medicamento | Dosis | Duración | Fecha de inicio | Fecha de finalización |
        | Oral                | 1 vez      | Amoxicilina | 500mg | 7 días   | 01/01/2021      | 07/01/2021            |

    Scenario: Editar el tratamiento a un paciente.
        Given que el médico se encuentra en el perfil del paciente.
            And selecciona el perfil del paciente al que desea editar el tratamiento.
        When selecciona la opción de “editar tratamiento” en el perfil del paciente.
            And edita los campos necesarios del formulario del tratamiento.
        Then la aplicación actualiza el nuevo registro del paciente.

    Example:
        | Elegir paciente |
        | Mario          |

        | Editar tratamiento |

        | Tipo de tratamiento | Frecuencia | Medicamento | Dosis | Duración | Fecha de inicio | Fecha de finalización |
        | Oral                | 2 veces    | Paracetamol | 500mg | 5 días   | 01/01/2021      | 05/01/2021            |

        | Oral                | 3 veces    | Paracetamol | 500mg | 5 días   | 01/01/2021      | 05/01/2021            |