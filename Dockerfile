# SAS · Ambiente de prueba (datos ficticios en memoria; se reinician al reiniciar el servicio)
FROM mcr.microsoft.com/dotnet/aspnet:10.0
WORKDIR /app
# ADD descomprime el archivo en /app
ADD sas-app.tar.gz /app/
# Memoria acotada para el plan gratuito de Render (512 MB).
ENV ASPNETCORE_ENVIRONMENT=Production \
    TZ=America/Santiago \
    DOTNET_gcServer=0 \
    DOTNET_GCConserveMemory=7 \
    DOTNET_GCHeapHardLimit=0x10000000 \
    PORT=10000
EXPOSE 10000
CMD ["sh", "-c", "dotnet SAS.Web.dll --urls http://0.0.0.0:${PORT}"]
