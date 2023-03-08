while :
do
    clear
    echo "------------------------------------"
    echo "Menu de Git"
    echo ""
    echo "1.Configuracion Global en Git"
    echo "2.Clonacion de repositorios"
    echo "3.Estado del repositorio"
    echo "4.Cambiar de rama para trabajar"
    echo "5.Guardar y subir cambios a la rama de git"
    echo "6.Salir de este menu"
    echo ""
    read -p "Escoja una opcion: " opc
    case $opc in
        1)
            git config --global core.autocrlf false
            git config --global user.name "Angel Amarillo"
            git config --global user.email "angelseb1799@gmail.com"
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        2)
            read -p "Digite el link SSH copiado del Git: " url
            git clone $url
            echo ""
            echo "La clonacion ha termiando"
            echo ""
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        3)
            read -p "Escriba el nombre del repositorio al que desea entrar: " repo
            cd $repo/
            git status
            echo ""
            echo "Estas son las ramas del repositorio $repo"
            git branch -r
            echo ""
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        4)
            read -p "Ingrese el nombre de la rama en la que desea trabajar: " rwork
            git checkout $rwork
            echo ""
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        5)
            read -p "Escriba el nombre del repositorio al que desea entrar: " repo
            cd $repo/
            git add .
            echo "Los cambios han sido guardados"
            echo ""
            read -p "Press [Enter] key to continue..." readEnterKey
            echo ""
            read -p "Escriba el comentario que desea agregar: " comment
            git commit -m "$comment"
            echo ""
            echo "El comentario se ha agregado exitosamente"
            echo ""
            read -p "Press [Enter] key to continue..." readEnterKey
            echo ""
            echo "Ingrese la rama donde desea guardar los cambios"
            git push origin $rama
            echo ""
            echo "Los cambios han sido guardados"
            echo ""
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        6)
            exit
            ;;
        *)
            echo "Opcion Invalida"
            read -p "Digite [Enter] para continuar" readEnterKey
            ;;
    esac
done