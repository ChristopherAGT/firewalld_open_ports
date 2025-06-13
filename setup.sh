#!/bin/bash

# ╔══════════════════════════════════════════════════════════╗
# ║            🔥 FIREWALLD - APERTURA DE PUERTOS TCP/UDP     ║
# ║       Script amigable para configuración de firewalld     ║
# ╚══════════════════════════════════════════════════════════╝

# 🛑 Requiere permisos de superusuario
if [ "$EUID" -ne 0 ]; then
  echo -e "\n\033[1;31m🚫 Este script debe ejecutarse como root o con sudo.\033[0m"
  exit 1
fi

# 🎨 Colores
verde="\033[1;32m"
rojo="\033[1;31m"
azul="\033[1;34m"
amarillo="\033[1;33m"
neutro="\033[0m"

# 🔄 Actualización del sistema
echo -e "\n${azul}🔄 Actualizando lista de paquetes...${neutro}"
apt-get update -y

# 🔧 Instalación de firewalld si no está presente
if ! command -v firewall-cmd &> /dev/null; then
  echo -e "${amarillo}📦 firewalld no está instalado. Procediendo con la instalación...${neutro}"
  apt-get install -y firewalld
else
  echo -e "${verde}✔ firewalld ya está instalado.${neutro}"
fi

# 🚀 Iniciar y habilitar firewalld
echo -e "\n${azul}🚀 Iniciando y habilitando firewalld...${neutro}"
systemctl enable firewalld
systemctl start firewalld

# 🔓 Apertura de puertos TCP y UDP
echo -e "\n${amarillo}🔓 Aperturando todos los puertos TCP y UDP (1-65535)...${neutro}"

firewall-cmd --zone=public --permanent --add-port=1-65535/tcp
firewall-cmd --zone=public --permanent --add-port=1-65535/udp

# ♻️ Recargar firewalld
echo -e "\n${azul}♻️ Recargando reglas de firewalld...${neutro}"
firewall-cmd --reload

# 📋 Listado de puertos abiertos
echo -e "\n${verde}📋 Puertos abiertos actualmente en zona 'public':${neutro}"
firewall-cmd --zone=public --list-ports

# ✅ Finalización
echo -e "\n${verde}✅ Configuración completada con éxito.${neutro}"
echo -e "${amarillo}⚠️ Nota: abrir todos los puertos es riesgoso. Se recomienda usarlo solo en entornos controlados.${neutro}\n"
