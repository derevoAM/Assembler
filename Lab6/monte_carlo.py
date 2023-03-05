import matplotlib.pyplot as plt

sign = [1, 2, 3, 4, 5, 6, 7]

time = [2, 19, 27, 39, 489, 1211, 1345]

fig, ax = plt.subplots(figsize=(16, 10), dpi=150)

fig.suptitle("Funtion of time from sign",
             fontsize='xx-large')

plt.grid(True)

ax.scatter(sign, time)
#ax.legend(loc='best', fontsize=12)
plt.ylabel('Time, microsec', fontsize=14)
plt.xlabel('Sign', fontsize=14)
plt.savefig("Monte_carlo.png")
plt.show()
