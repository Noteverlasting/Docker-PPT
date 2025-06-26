// Dependencias del servidor
const path = require('node:path');
const express = require('express');
const app = express();

// Middleware

process.loadEnvFile()
const PORT = process.env.PORT || 3000;

// Indicar ruta de los ficheros estáticos
app.use(express.static(path.join(__dirname, "public")))

//Lanzar
app.get('/', (req, res) => {
    res.sendFile('index.html')
})

// Indicar Puerto de escucha
app.listen(PORT, () => {console.log(`Servidor escuchando en http://localhost:${PORT}`)})