# Imagen base oficial de Node
FROM node:20-alpine

# Crear directorio de la app
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install --production

# Copiar el resto del código
COPY . .

# Exponer el puerto que usa Express
EXPOSE 3000

# Comando de inicio
CMD ["npm", "start"]
