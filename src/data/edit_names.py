a = 0
with open('mot17.train', 'r') as ff:
    a = ff.readlines()

with open('mot17.train', 'w') as f:
    f.writelines([a[i].replace('/images/', '/') for i in range(len(a))])