# Indicamos versiones
FROM node:24-slim
# Indicamos direccion de la carpeta de trabajo
WORKDIR /app
# Copiamos el archivo de configuracion json y el destino
COPY package*.json .
# Obtenemos los modulos necesarios
RUN npm install && npm cache clean --force && rm -rf /tmp/ /root/.npm/_cacache
# Copiamos el resto de ficheros de la raiz
COPY . .
# Exponemos el puerto a utilizar
EXPOSE 5000
# Creamos un comando para ejecutar el contenedor
CMD ["npm", "start"]
