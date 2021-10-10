
1) #!/bin/bash X=10
Y=5
if [ "$X" -gt "$Y" ]; then echo "$X is greater than $Y" elif [ "$X" -lt "$Y"]; then echo "$X is less than $Y" else
echo "$X is equal to $Y"
fi

2) #!/bin/bash case $1 in
--test|-t)
echo "you used the --test option"
exit 0 ;;
--help|-h)
echo "Usage:"
echo " myprog.sh [--test|--help|--version]" exit 0
;;
--version|-v)
echo "myprog.sh version 0.0.1"
exit 0 ;;
*)
echo "No such option $1"
echo "Usage:"
echo " myprog.sh [--test|--help|--version]"
exit 1 ;;
esac
echo "You typed \"$1\" on the command-line" Note:always watch for correct syntax of case statement.
3) case string in
regex1)
commands1
;;
regex2)
commands2
;;
........
esac
Where regex is a regular expression to match the string. To catch all remaining strings, use *) at the end.
