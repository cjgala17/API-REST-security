# API REST Security - Tarea 01

**Alumno:** Gala Justiniano, Carlos Andre  

## Tecnologías utilizadas
- Java 21
- Spring Boot 3
- Spring Security 6
- MySQL Workbench 8.0
- Postman 

## Endpoints implementados
| Método | URL                    | Acceso permitido           | Resultado esperado          |
|--------|------------------------|----------------------------|-----------------------------|
| GET    | `/api/publico`         | Todos (incluido anonimo)   | 200 OK                      |
| GET    | `/api/interno`         | Usuarios autenticados      | 200 OK (con credenciales)   |
| GET    | `/api/admin/gestion`   | Solo ROLE_ADMIN            | 200 OK (admin) / 403 (user) |

## Usuarios de prueba (contraseña: 12345)
- `admin` → rol **ROLE_ADMIN**
- `empleado` → rol **ROLE_USER**

## Entregables incluidos
1. `script.sql` → crea la base de datos `security_db`, tablas `users` y `authorities` + datos semilla con `{noop}12345`
2. Carpeta `evidencia-postman/` → contiene:
   - Las pruebas de ejecución mediante la herramienta Postman

## Pruebas realizadas y aprobadas en Postman
- Sin credenciales → `/api/interno` → 401 Unauthorized
- Con credenciales correctas → `/api/interno` → 200 OK
- Usuario `empleado` → `/api/admin/gestion` → **403 Forbidden**
- Usuario `admin` → `/api/admin/gestion` → 200 OK
