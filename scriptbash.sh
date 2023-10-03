#!/bin/bash

while true; do
    echo "Seleccione una opción:"
    echo "-a: Agile"
    echo "-t: Metodologías tradicionales"
    echo "q: Salir"
    read opcion

    case $opcion in
        -a)
            echo "Bienvenido a la guía rápida de Agile, seleccione un tema:"
            echo "1. SCRUM"
            echo "2. X.P."
            echo "3. Kanban"
            echo "4. Crystal"
            read tema

            case $tema in
                1)
                    seccion="SCRUM"
                    archivo="scrum.inf"
                    ;;
                2)
                    seccion="X.P."
                    archivo="xp.inf"
                    ;;
                3)
                    seccion="Kanban"
                    archivo="kanban.inf"
                    ;;
                4)
                    seccion="Crystal"
                    archivo="crystal.inf"
                    ;;
                *)
                    echo "Opción no válida"
                    continue
                    ;;
            esac
            ;;

        -t)
            echo "Bienvenido a la guía rápida de metodologías tradicionales, seleccione un tema:"
            echo "1. Cascada"
            echo "2. Espiral"
            echo "3. Modelo V"
            read tema

            case $tema in
                1)
                    seccion="Cascada"
                    archivo="cascada.inf"
                    ;;
                2)
                    seccion="Espiral"
                    archivo="espiral.inf"
                    ;;
                3)
                    seccion="Modelo V"
                    archivo="modelo_v.inf"
                    ;;
                *)
                    echo "Opción no válida"
                    continue
                    ;;
            esac
            ;;

        q)
            exit 0
            ;;

        *)
            echo "Opción no válida"
            continue
            ;;
    esac
