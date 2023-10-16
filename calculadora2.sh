while true; do
{
  clear
  echo "Calculadora em Shell Script"
  echo "1. Soma"
  echo "2. Subtração"
  echo "3. Multiplicação"
  echo "4. Divisão"
  echo "5. Raiz Quadrada"
  echo "6. Potência"
  echo "7. Sair"
}

echo "Qual operação você quer realizar?"

read opcao


case $opcao in 

1) 
   echo "Digite o primeiro número:"
   read num1
   echo "Digite o segundo número:"
   read num2
   soma=$(bc <<< "scale=2; $num1 + $num2")
   echo "O resultado da soma é: $soma"
   ;; 

2) 
   echo "Digite o número:"
   read num1
   echo "Digite o outro:"
   read num2
   subtracao=$(bc <<< "scale=2; $num1 - $num2" )
   echo " O resultado da subtração é:" $subtracao
   ;;
3) 
   echo "Digite o número:"
   read num1
   echo "Digite o outro:"
   read num2
   multiplicacao=$(bc <<< "scale=2; $num1 * $num2")
   echo " O resultado da subtração é:" $multiplicacao
   ;;
4)
   echo "Digite o número:"
   read num1
   echo "Digite o outro:"
   read num2
   divisao=$(bc <<< "scale=2; $num1 / $num2" )
   echo " O resultado da subtração é:" $divisao
   ;;
5) 
   echo "Digite o número:"
   read num1
   raiz=$(bc <<<  "scale=2; sqrt($num1)")
   echo "A raiz de $num1 é:" $raiz
   ;;
6)
   echo "Digite o número:"
   read num1
   echo "Digite o outro:"
   read num2
   subtracao=$( "scale=2; $num1 ^ $num2")
   echo " O resultado da subtração é:" $subtracao
   ;;
   7)
      echo "Saindo da calculadora."
      exit 0
      ;;
    *)
      echo "Opção inválida. Tente novamente."
      ;;
  esac

  read -p "Pressione Enter para continuar..."
done
