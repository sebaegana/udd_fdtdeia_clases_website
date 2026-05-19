# Preguntas de Selección Múltiple — Módulo 1, Sesión 4
## Fundamentos de Datos para la Toma de Decisiones Estratégicas con IA

---

**Pregunta 1**

Una empresa entrena un modelo de IA para otorgar créditos. El modelo fue entrenado con 10 años de datos históricos de aprobaciones. Al analizar los resultados, se detecta que el modelo rechaza sistemáticamente a clientes de bajos ingresos, aunque estadísticamente representen buen riesgo crediticio. Además, el equipo técnico informa que el modelo tiene una precisión del 98%.

¿Cuáles de las siguientes afirmaciones describen correctamente los problemas presentes en este caso?

I. El modelo presenta sesgo histórico, porque los datos de entrenamiento reflejan decisiones de aprobación del pasado que podrían haber sido discriminatorias.

II. El modelo presenta sesgo de representación, porque el grupo de bajos ingresos probablemente estuvo sub-representado en el histórico de aprobaciones.

III. Una precisión del 98% confirma que el modelo es confiable y debe aprobarse.

IV. El líder debería exigir una auditoría de los datos históricos antes de aprobar el proyecto.

a) Solo I

b) Solo I y III

c) I, II y IV

d) I, II, III y IV

e) Solo II y III

**Respuesta correcta: c) I, II y IV**

*La precisión alta no confirma confiabilidad cuando existen sesgos estructurales en los datos. Las afirmaciones I, II y IV identifican correctamente los problemas y la acción esperada del líder.*

---

**Pregunta 2**

Un equipo presenta un modelo para predecir deserción escolar. Las variables utilizadas son: asistencia del último mes, notas del semestre, número de inasistencias injustificadas, y si el alumno se retiró del colegio. El modelo alcanza un 100% de precisión en el set de prueba. El equipo técnico concluye que el modelo está listo para producción.

¿Cuáles de las siguientes afirmaciones son correctas?

I. Un 100% de precisión es señal de que el modelo aprendió perfectamente los patrones de deserción.

II. La variable "si el alumno se retiró del colegio" constituye data leakage, porque es exactamente lo que el modelo intenta predecir.

III. En producción, el modelo fallará porque la variable filtrada no estará disponible al momento de predecir.

IV. El líder debería rechazar la aprobación y solicitar eliminar las variables que solo se conocen después del evento que se quiere predecir.

V. Una precisión superior al 95% siempre es una señal positiva y no requiere revisión adicional.

a) Solo I y V

b) Solo II y III

c) II, III y IV

d) I, II y IV

e) Todas las anteriores

**Respuesta correcta: c) II, III y IV**

*La precisión perfecta es una señal de alerta, no de éxito. La inclusión del outcome como variable predictora invalida completamente el modelo. Las afirmaciones I y V son incorrectas porque ignoran el problema de leakage.*
