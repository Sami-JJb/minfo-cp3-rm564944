#!/bin/bash
 
# Verifica se foi passado exatamente um argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 {hostname|uptime|disk|all}"
    exit 1
fi
 
# Verifica qual argumento foi passado e executa a ação correspondente
case "$1" in
    hostname)
        echo "Nome da máquina:"
        hostname
        ;;
    uptime)
        echo "Tempo ligado:"
        uptime -p
        ;;
    disk)
        echo "Uso da partição raiz (/):"
        df -h /
        ;;
    all)
        echo "Nome da máquina:"
        hostname
        echo
        echo "Tempo ligado:"
        uptime -p
        echo
        echo "Uso da partição raiz (/):"
        df -h /
        ;;
    *)
        echo "Opção inválida: $1"
        echo "Uso: $0 {hostname|uptime|disk|all}"
        exit 1
        ;;
esac
