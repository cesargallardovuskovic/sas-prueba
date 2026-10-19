# SAS · Ambiente de prueba

Asistencia Social y Subsidios (PROEXSI). Versión de demostración con datos ficticios en memoria: fichas sociales, atenciones, postulaciones a ayudas y subsidios, pagos, bodega y una campaña de Navidad.

- Usuarios: `admin`, `rgutierrez` (encargada), `tfigueroa` y `dsoto` (asistentes sociales), `lmorales` (recepción), `fvalenzuela` (finanzas), `rtapia` (bodega), `auditor` (consulta) · Clave: `CambiarEsta2026`
- Los datos se reinician cada vez que el servicio se reinicia.
- Se publica en Render como *Web Service* con Docker (plan gratuito).

## Publicar o actualizar en Render

1. Cree un repositorio (GitHub o GitLab) con estos tres archivos: `Dockerfile`, `sas-app.tar.gz` y este `README.md`.
2. En Render: **New › Web Service**, conecte el repositorio, *Runtime* **Docker**, plan **Free**. No necesita variables adicionales.
3. Para actualizar, reemplace `sas-app.tar.gz` por el de la nueva entrega y haga *commit*: Render vuelve a desplegar solo.
4. El plan gratuito se suspende tras 15 minutos sin uso; el primer ingreso después tarda cerca de un minuto en despertar.

`sas-app.tar.gz` es la publicación de `SAS.Web` compilada en modo demostración (`dotnet publish src/SAS.Web -c Release -p:Demo=true`).
