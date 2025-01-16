# Aplicación Full Stack: Angular, Express y PostgreSQL
# Juan Bautista

Este proyecto es una prueba técnica para desarrollar una aplicación Full Stack que incluye un microservicio en Node.js con Express, una base de datos PostgreSQL, y un frontend en Angular.

## **Estructura del Proyecto**
- **Backend**: Microservicio desarrollado en Node.js con Express que expone datos de una base de datos PostgreSQL.
- **Base de Datos**: PostgreSQL con una tabla `usuarios` que almacena información básica de usuarios.
- **Frontend**: Aplicación Angular que consume los datos expuestos por el backend y los presenta en una interfaz funcional.

---

## **Requisitos Previos**
1. **Node.js**: [Instalar Node.js](https://nodejs.org/)
2. **PostgreSQL**: [Instalar PostgreSQL](https://www.postgresql.org/)
3. **Angular CLI**: [Instalar Angular CLI](https://angular.io/cli)

---

## **Configuración del Proyecto**

### **1. Backend**
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/Bauti567/Prueba-Ler.git

   cd backend

    * Instalar dependencias:
        npm install

    Configurar el archivo .env: Crea un archivo .env en la raíz del backend con las siguientes variables:
        DB_USER=postgres
        DB_HOST=localhost
        DB_PASSWORD=12345
        DB_NAME=Prueba
        DB_PORT=5432

    Iniciar el servidor:
        npm run dev

2. Base de Datos
Crear la base de datos y tabla: Ejecuta los siguientes comandos en PostgreSQL:

        CREATE DATABASE prueba;

        CREATE TABLE usuarios (
            id SERIAL PRIMARY KEY,
            nombre VARCHAR(100),
            correo VARCHAR(100),
            edad INT
        );
    Insertar datos:

        INSERT INTO usuarios (nombre, correo, edad) 
            VALUES 
            ('Carlos Pérez', 'carlos.perez@example.com', 25),
            ('María López', 'maria.lopez@example.com', 32),
            ('Juan Rodríguez', 'juan.rodriguez@example.com', 29),
            ('Ana García', 'ana.garcia@example.com', 27),
            ('Pedro Fernández', 'pedro.fernandez@example.com', 34),
            ('Lucía Martínez', 'lucia.martinez@example.com', 31),
            ('José Torres', 'jose.torres@example.com', 28),
            ('Laura Morales', 'laura.morales@example.com', 26),
            ('Diego Gutiérrez', 'diego.gutierrez@example.com', 30),
            ('Sofía Ramírez', 'sofia.ramirez@example.com', 24);
    Validar datos:

        SELECT * FROM usuarios;

3. Frontend
    Navegar al directorio del frontend:

        cd ../client
    Instalar dependencias:

        npm install
    
    Iniciar el servidor de desarrollo:
    
        ng serve

Endpoints:

        GET /data
            Descripción: Obtiene una lista de todos los usuarios.
        Ejemplo de respuesta:
            [
                {
                    "id": 1,
                    "nombre": "Carlos Pérez",
                    "correo": "carlos.perez@example.com",
                    "edad": 25
                },
                ...
            ]

        GET /data/:id
            Descripción: Obtiene un usuario específico por su ID.
            Ejemplo de respuesta:
            {
                "id": 1,
                "nombre": "Carlos Pérez",
                "correo": "carlos.perez@example.com",
                "edad": 25
            }

Pruebas con Postman:
Importa las siguientes configuraciones en Postman:
GET /data: Solicita todos los usuarios "http://localhost:3000/api/data/"
GET /data/:id: Sustituye :id por un ID válido "http://localhost:3000/api/data/1".

Consideraciones Importantes
    Es NECESARIO que el backend esté ejecutándose antes de iniciar el frontend.
    Asegúrate de haber creado la base de datos, la tabla usuarios, y haber insertado los datos antes de probar la aplicación.


Tecnologías Utilizadas
    Backend: Node.js, Express
    Base de Datos: PostgreSQL
    Frontend: Angular
    Herramientas: Postman, npm
