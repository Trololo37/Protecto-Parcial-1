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

    while true; do
        echo "Usted está en la sección $seccion, seleccione la opción que desea utilizar:"
        echo "1. Agregar información"
        echo "2. Buscar"
        echo "3. Eliminar información"
        echo "4. Leer base de información"
        echo "5. Volver al menú anterior"
        read subopcion

        case $subopcion in
            1)
                echo "Ingrese el identificador del concepto:"
                read identificador
                echo "Ingrese la definición:"
                read definicion
                echo "[$identificador] .- $definicion" >> "$archivo"
                echo "Información agregada con éxito."
                ;;

            2)
                echo "Ingrese el elemento a buscar:"
                read elemento
                grep -q "^\[$elemento\]" "$archivo"
                if [ $? -eq 0 ]; then
                    grep "^\[$elemento\]" "$archivo"
                else
                    echo "Elemento no encontrado."
                fi
                ;;

            3)
                echo "Ingrese el concepto a eliminar:"
                read concepto
                sed -i "/^\[$concepto\]/d" "$archivo"
                echo "Información eliminada con éxito."
                ;;

            4)
                cat "$archivo"
                ;;

            5)
                break
                ;;

            *)
                echo "Opción no válida"
                ;;
        esac
    done
done
