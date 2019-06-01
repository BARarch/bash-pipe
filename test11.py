#!/Users/anthonyquivers/anaconda3/bin/python
#Date Started: 190601

def addNums(a, b):
    return a + b

if __name__ == "__main__":
    n = int(input())
    for _ in range(n): 
        a, b = map(int, list(input().split(' ')))

        print(addNums(a, b))
