import itertools
from prettytable import PrettyTable
def imp(p,q):
    return not p or q
def bicon(p,q):
    return (not p or q) and (not q or p)
class Truths:
    boolean = [True,False];
    def __init__(self, variables=None, statements=None, int=None):
        if not variables:
            raise Exception('Variables are required!!')
        self.variables = variables # ['p','q']
        self.statements = statements or []
        self.int = int;
        self.all = self.variables + self.statements
        self.table = []
        # print(self.all)
        self.table.append(self.all)

    def calculate(self):
        vLen = len(self.variables)
        self.genVariables = itertools.product(self.boolean, repeat=vLen)
        t = PrettyTable(self.all)
        for a in self.genVariables:
            statementList = []
            for b in self.statements:
                nStatement = b.split();
                for i in range(vLen):
                    nStatement = ["a["+str(i)+"]" if nStatement[x] == self.variables[i] else nStatement[x] for x in range(len(nStatement))]
                nStatement = " ".join(nStatement)
                statementList.append(eval(nStatement))
            if (self.int):
                nList = [1 if x else 0 for x in list(a)] + [1 if x else 0 for x in statementList]
            else:
                nList = list(a) + statementList
            self.table.append(nList)
            t.add_row(nList)
        print(t)
#Truths(['x','y','z'],['x and not y or not x and z','((not x or y ) and ( x or not z )) == False'],True).calculate()
#Truths(['x','y'],['x and y and ( False or x or ( x and True ))','(not x or not y or ( True and not x and ( not x or False ))) == False'],True).calculate()
#Truths(['x','y','z'],['x and y','x and z','( x and y ) == ( x and z )','not x and y','not x and z','( not x and y ) == ( not x and z )','y == z'],True).calculate()
#Truths(['x','y','z'],['( x and y == x and z ) and ( (not x and y ) == ( not x and z ))'],True).calculate()
#Truths(['p','q'],['( bicon( p , q ) )','bicon( not p , not q )'],True).calculate()
#Truths(['p','q'],['( imp( p , q ) )','imp( not q , not p )'],True).calculate()
#Truths(['p','q','r'],['bicon( q , r )','bicon( p , q )','bicon( p ,bicon( q , r ))','bicon(bicon( p , q ), r )','bicon(bicon( p ,bicon( q , r )),bicon(bicon( p , q ), r ))'],True).calculate()
Truths(['p','q'],['( p or q ) or (imp( q , p ))'],True).calculate();
Truths(['p','q'],['imp( imp( p , q ) , p )'],True).calculate();
Truths(['p','q'],['imp( p , imp( q , p ))'],True).calculate();
Truths(['p','q'],['(not p and q ) and imp( q , p )'],True).calculate();
Truths(['p','q'],['imp( imp( p , q ), imp(not p , not q ))'],True).calculate();
Truths(['p','q'],['bicon( imp(not p , not q ), imp( q , p ))'],True).calculate()

# <=> (not p or q) and (not q or p) - bicon(p,q)
# => not p or q - imp(p.q)
