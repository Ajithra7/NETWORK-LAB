
1) Script scr2.sh:
#!/bin/bash
N=1
while [ "$N" -le "10" ] do
echo "Number $N"
N=$[N+1] done
2)Script scr3.sh #!/bin/bash
N=1
until [ "$N" -gt "10" ]
do
echo "Number $N"; N=$[N+1]
done
Note: common mistakes in shell scripting are usually due to incorrect syntax. For example, there should be no spaces before and after operator “=” .
N=1 # correct
N =1 # error
N= 1 # error
N=$[N+1] # correct
N =$[N+1] # error
N= $[N+1] # error
