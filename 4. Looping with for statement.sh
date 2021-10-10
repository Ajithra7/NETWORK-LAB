
1)Script scr4.sh
#!/bin/bash
for i in red white blue
do
echo "$i is a color" done
2)Script backup-lots.sh
#!/bin/bash
for i in 0 1 2 3 4 5 6 7 8 9 ;do cp $1 $1.BAK-$i
done
Now create a file important_data with some numbers in it and then run ./backup-lots.sh important_data
which will copy the file 10 times with 10 different extensions. As you can see, the variable $1 has a special meaning – it is the first argument on the command-line.
Note: watch for correct syntax:
  
for i in 0 1 2 3 4 5 6 7 8 9 do .... done
The continue statement is useful for terminating the current iteration of the loop.
3) #!/bin/bash
for i in 0 1 2 3 4 5 6 7 8 9 ; do
NEW_FILE=$1.BAK-$i
if [ -e $NEW_FILE ] ; then
echo "backup-lots.sh: **warning** $NEW_FILE" echo " already exists - skipping"
continue
fi
cp $1 $NEW_FILE
done
