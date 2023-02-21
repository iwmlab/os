#Without Recursion
#!/bin/bash
echo "Enter a number"
read num

fact=1

for((i=2;i<=num;i++))
{
  fact=$((fact * i))  #fact = fact * i
}

echo $fact

#With Recursion
#!/bin/bash
factorial()
{
    product=$1
    if((product <= 2)); then
        echo $product
    else
        f=$((product -1))

f=$(factorial $f)
f=$((f*product))
echo $f
fi
}

echo "Enter the number:"   
read num

if((num == 0)); then   
echo 1
else
factorial $num
fi
