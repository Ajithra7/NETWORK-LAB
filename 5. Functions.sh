
Function definitions provide a way to group statement blocks into one.
1)
#!/bin/bash function usage ()
{
echo "Usage:"
echo " myprog.sh [--test|--help|--version]" }
case $1 in
--test|-t)
echo "you used the --test option"
exit 0
;;
--help|-h)
usage
;;
--version|-v)
echo "myprog.sh version 0.0.2"
exit 0
;;
-*)
echo "Error: no such option $1" usage
exit 1
;;
esac
echo "You typed \"$1\" on the command-line" Note: watch for syntax:
 
2)
function usage ()
{
command1 command2; command3 ......
}
The word function in a function is optional. That is, the following will work as well:
3)
usage () {
command1 command2; command3 .....
}
