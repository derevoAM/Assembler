import matplotlib.pyplot as plt

sign_d = [1, 2, 3, 4, 5, 6, 7, 8]

time_d = [1, 18, 23, 53, 578, 4865, 60257, 572274]

sign_f = [1, 2, 3]
time_f = [1, 20, 29]
fig, ax = plt.subplots(figsize=(16, 10), dpi=150)

fig.suptitle("Funtion of time from sign",
             fontsize='xx-large')

plt.grid(True)

ax.scatter(sign_f, time_f)
#ax.legend(loc='best', fontsize=12)
plt.ylabel('Time, microsec', fontsize=14)
plt.xlabel('Sign', fontsize=14)
plt.savefig("wallis_f.png")
plt.show()
