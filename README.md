
# 🔐 firewalld_open_ports

Una pequeña utilidad para **gestionar reglas de firewalld** de forma sencilla. Permite **abrir, cerrar y listar puertos** en sistemas GNU/Linux que usen firewalld.

---

## 📌 Tabla de contenidos

- [¿Por qué usarlo?](#%C2%BFCu%C3%A1l-es-el-problema-que-resuelve)
- [Requisitos](#requisitos)
- [Instalación](#instalaci%C3%B3n)
- [Uso](#uso)
- [Opciones](#opciones)
- [Ejemplos](#ejemplos)
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)

---

## ❓ ¿Cuál es el problema que resuelve?

- 🛡️ Firewalld es potente pero puede ser confuso para nuevos administradores.
- 🧩 Este script simplifica comandos comunes: abrir/cerrar/listar puertos rápidamente.
- 🔄 Mejora la eficiencia y reduce errores manuales al manipular reglas.

---

## 🧱 Requisitos

- Linux con **firewalld** instalado y funcionando.
- **bash** (o shell similar).
- Permisos de **sudo** o root.

---

## 🚀 Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/ChristopherAGT/firewalld_open_ports.git
   cd firewalld_open_ports
   ```
2. Concede permisos de ejecución:
   ```bash
   chmod +x firewalld_open_ports.sh
   ```

---

## 🛠️ Uso

```bash
./firewalld_open_ports.sh [comando] [puerto] [protocol]
```

- `comando`: acción a realizar (`open`, `close`, `list`)
- `puerto`: número de puerto (ej. `8080`)
- `protocol`: `tcp` o `udp` (para `open` y `close`)

---

## ⚙️ Opciones disponibles

| Comando  | Puerto | Protocolo | Descripción |
|----------|:------:|:---------:|-------------|
| `open`   | 8080   | tcp       | Abre el puerto tcp 8080 permanentemente |
| `close`  | 53     | udp       | Cierra el puerto udp 53 permanentemente |
| `list`   | —      | —         | Lista todos los puertos abiertos |

---

## 🧪 Ejemplos prácticos

1. **Abrir puerto TCP 8080**:
   ```bash
   sudo ./firewalld_open_ports.sh open 8080 tcp
   ```
2. **Cerrar puerto UDP 53**:
   ```bash
   sudo ./firewalld_open_ports.sh close 53 udp
   ```
3. **Listar todos los puertos abiertos**:
   ```bash
   sudo ./firewalld_open_ports.sh list
   ```

---

## 🤝 Contribuciones

¡Contribuciones y mejoras son bienvenidas! Puedes:

- Proponer mejoras o reportar errores mediante **issues**.
- Enviar un **pull request** con nuevas funciones, tests o mejoras de documentación.

---

## 📜 Licencia

Este proyecto es de código abierto, licenciado bajo la [MIT License](LICENSE). Revisa el archivo LICENSE para más detalles.

---

## 💬 Contacto

Para dudas, sugerencias o colaboración, contáctame vía **GitHub Discussions**, **Issues**, o envía un mensaje en Twitter/X a [@ChristopherAGT](https://twitter.com/ChristopherAGT).

---

### 🛠️ Notas finales

Este README está formateado con **Markdown**, compatible con GitHub y otras plataformas 📄: 
- Títulos `#`, listas `-` y tablas `| |`  
- Código alineado con ```bash```  
- Utiliza emojis para hacerlo más amigable 😊

¡Gracias por visitar este proyecto! Espero que te resulte útil 💡

---
