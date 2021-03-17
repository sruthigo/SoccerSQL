from collections import Counter
import sys
filename1 = sys.argv[1]
filename2 = sys.argv[2]
filelist1 = []
filelist2 = []
for line in open(filename1):
        filelist1.append(list(line.split('~|`')))
for line in open(filename2):
        filelist2.append(list(line.split('~|`')))
sourceonly = [item for item in filelist1 if item not in filelist2]
targetonly = [item for item in filelist2 if item not in filelist1]
print("\nSource Only records: \n")
for each in sourceonly:
        print(each)
print("\nTarget Only records: \n")
for each in targetonly:
        print(each)
print("Differences")
for row1 in sourceonly:
        for row2 in targetonly:
                if row1[6]==row2[6]:
                        print(row1[6],[i for i in row1 if i not in row2],[i for i in row2 if i not in row1])