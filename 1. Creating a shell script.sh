
#!/bin/bash
All non-executable comments in a script are prepended with #,
# For example, we list all the files in the current director ls -la ls -l /etc
# Comment. Here, we list files in /etc directory. Script scr1.sh is like a calculator:
#!/bin/bash echo "I will work out X*Y"
echo "Enter X"
read X
echo "Enter Y"
read Y
echo "X*Y = $X*$Y = $[X*Y]" Make the script executable and run chmod 755 scr1.sh
./scr1.sh
