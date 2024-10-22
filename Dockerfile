# Usar la imagen base de Node.js
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar los archivos package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto en el que correrá la aplicación
EXPOSE 3000

# Comando para correr la aplicación
CMD ["node", "index.js"]
