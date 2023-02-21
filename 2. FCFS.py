#pr = int(input("Enter number of process : "))
#at = [int(input(f"AT for P{i}: ")) for i in range(pr)]
#print("\n")
#bt = [int(input(f"BT for P{i}: ")) for i in range(pr)]

at = [0, 1, 3, 3]
bt = [1, 9, 1, 9]
pr = 4

ct=[]
add = 0
for i in range(pr):
    ct.append(bt[i] + add)
    add += bt[i]

tt = [(ct[i] - at[i]) for i in range(pr)]
wt = [(tt[i] - bt[i]) for i in range(pr)]

print("PR\tAT\tCT\tTT\t\WT")
for i in range(pr):
    print(f"P{i}\t{at[i]}\t{ct[i]}\t{tt[i]}\t{wt[i]}")

print("\nAvg. WT : ", (sum(wt)/len(wt)))
print("Avg. TT : ", (sum(tt)/len(tt)))

