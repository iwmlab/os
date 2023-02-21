n = int(input("Enter the number of processes: "))
bt = []
at = []
for i in range(n):
    bt.append(int(input(f"Enter the burst time for process {i+1}: ")))
    at.append(int(input(f"Enter the arrival time for process {i+1}: ")))
quantum = int(input("Enter the time quantum: "))

wt = [0] * n
tat = [0] * n
rem_bt = [0] * n
for i in range(n):
    rem_bt[i] = bt[i]
    
t = 0
while True:
    done = True
    for i in range(n):
        if rem_bt[i] > 0 and at[i] <= t:
            done = False
            if rem_bt[i] > quantum:
                t += quantum
                rem_bt[i] -= quantum
            else:
                t += rem_bt[i]
                wt[i] = t - bt[i] - at[i]
                rem_bt[i] = 0
        tat[i] = bt[i] + wt[i]
    if done == True:
        break

print("Process\tBurst Time\tArrival Time\tWaiting Time\tTurnaround Time")
for i in range(n):
    print(f"P{i+1}\t{bt[i]}\t\t{at[i]}\t\t{wt[i]}\t\t{tat[i]}")

print(f"Average waiting time: {sum(wt)/n}")
print(f"Average turnaround time: {sum(tat)/n}")
