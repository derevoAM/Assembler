import matplotlib.pyplot as plt

sign = [1, 2, 3, 4, 5, 6, 7, 8]

time_d = [2, 21, 26, 60, 630, 5863, 72666, 938409, 9013168]
time_f = [1, 20, 26, 60, 633, 8706, 143041, 242955]
fig, ax = plt.subplots(figsize=(16, 10), dpi=150)

fig.suptitle("Funtion of time from sign",
             fontsize='xx-large')

plt.grid(True)

ax.scatter(sign, time_f)
#ax.legend(loc='best', fontsize=12)
plt.ylabel('Time, microsec', fontsize=14)
plt.xlabel('Sign', fontsize=14)
plt.savefig("Leibniz_f.png")
plt.show()
