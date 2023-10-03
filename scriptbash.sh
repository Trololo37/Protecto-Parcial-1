#!/bin/bash

while true; do
    echo "Seleccione una opción:"
    echo "-a: Metodologias Agiles"
    echo "-t: Metodologías tradicionales"
    echo "q: Salir"
    read opcion

    case $opcion in
        -a)
            echo "Guía rápida de Agile, seleccione un tema (1, 2, 3, 4):"
            echo "1. SCRUM"
            echo "2. X.P."
            echo "3. Kanban"
            echo "4. Crystal"
            read tema



        -t)
            echo "Guía rápida de metodologías tradicionales, seleccione un tema: (1, 2, 3):"
            echo "1. Cascada"
            echo "2. Espiral"
            echo "3. Modelo V"
            read tema



        q)
            exit 0
            ;;

        *)
            echo "Opción no válida"
            continue
            ;;
    esac
;;
