
Single forward quotes ' protect the enclosed text from the shell.
1)
echo 'error $?'
echo 'shell name $0'
Double quotes " allow all shell interpretations to take place inside them. 2)
echo "error $?" #gives the error code of the last command
echo "shell name $0" #gives the current shell name
Command substitution
3)
X=`expr 100 + 50 '*' 3`
echo $X
Assigning command output to a variable:
4)
FSIZE=`wc -l /etc/profile`
same as
5)
FSIZE=$(wc -l /etc/profile)
