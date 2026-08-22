"""Seira Askhsewn 2."""


def sum_sequence(n, term):
    """A8roisma arxikwn orwn akolou8ias

    n -- deikths teleutaiou orou (deikths prwtou = 1)
    term -- synarthsh: term(i) einai o i-ostos oros

    Epistrefei tin timi term(1) + term(2) + ... + term(n).
    """
    i, sum = 2, term(1)
    while i <= n:
        sum += term(i)
        i += 1
    return sum


#>>>>>>>>>>>>>>>>>>>>> Askhsh 1 <<<<<<<<<<<<<<<

def digit_sum(x):
    """Ypologizei to a8roisma twn (dekadikwn) pshfiwn tou x

    x -- 8etikos akeraios

    >>> digit_sum(10000)
    1
    >>> digit_sum(615)
    12
    >>> digit_sum(23) == 5
    True
    """
    s = 0
    while x != 0:
        s = s + x % 10
        x = x // 10

    return s



#>>>>>>>>>>>>>>>>>>>>> Askhsh 2 <<<<<<<<<<<<<<<

def count_digit(x, i):
    """Ypologizei to plh8os twn emfanisewn enos pshfiou

    x -- 8etikos akeraios
    i -- pshfio (1 = 1o pshfio apo dexia, 2 = 2o apo dexia, ktl.)

    >>> count_digit(1000, 1)
    3
    >>> count_digit(12944342, 2)
    3
    >>> count_digit(121,1) == 2
    True
    """
    """ GRAPSTE TON KWDIKA SAS APO KATW """
    ypol = x % 10 ** (i-1)
    x = x // 10 ** (i-1)
    element = x % 10
    count = 1
    x = x // 10
    while x != 0: 
     if x % 10 == element:
      count += 1
     x = x // 10
    while ypol != 0:
     if ypol % 10 == element:
      count += 1
     ypol //= 10      
      
    return count
    


#>>>>>>>>>>>>>>>>>>>>> Askhsh 3 <<<<<<<<<<<<<<<

def paei_pi(n):
    """A8roisma n orwn tis akoloy8ias 
              4, -4/3, 4/5, -4/7, 4/9, -4/11, 4/13, ... ktl.

    n -- 8etikos akeraios >= 1

    Epistrefei to a8roisma twn orwn 1 ews kai n.

    Paradeigmata:
    >>> paei_pi(1)
    4.0
    >>> paei_pi(2)
    2.666666666666667
    >>> paei_pi(3)
    3.466666666666667
    >>> paei_pi(1000)
    3.140592653839794
    >>> paei_pi(10000)
    3.1414926535900345
    """
    def addn(n):
        return 4/(n+n-1) if (n%2) != 0 else (-4)/(n+n-1)  

    return sum_sequence(n,addn)



#>>>>>>>>>>>>>>>>>>>>> Askhsh 4 <<<<<<<<<<<<<<<

def stars_horizontal(n):
    """String asteriwn topo8etimena orizontiws.

    n -- akeraios >= 1
    
    Epistrefei string me n xaraktires '*'.

    Paradeigmata:
    >>> stars_horizontal(1)
    '*'
    >>> stars_horizontal(5)
    '*****'
    >>> print(stars_horizontal(5))
    *****
    """
    
    # mporeite na xrhsimopoihsete perissoteres 'h ligoteres grammes
    return sum_sequence(n,lambda x: '*')



#>>>>>>>>>>>>>>>>>>>>> Askhsh 5 <<<<<<<<<<<<<<<

def reverse_args(f):
    """ Antistrefei ta orismata.

    -- f synartisi 2 orismatwn

    Epistrefei synartisi g opou i klisi g(x, y) exei idia timi me tin f(y, x).

    Paradeigmata:
    >>> pow(2, 3)
    8
    >>> pow(3, 2)
    9
    >>> wop = reverse_args(pow)
    >>> wop(2, 3)
    9
    >>> wop(3, 2)
    8
    """
    """ GRAPSTE TON KWDIKA SAS APO KATW """
    def reverse(x,y):
     return f(y,x)
    return reverse 


#>>>>>>>>>>>>>>>>>>>>> Askhsh 6 <<<<<<<<<<<<<<<

def askisi6():
    """Ypologismoi gewmetrikwn sximatwn.

    >>> askisi6()
    Perifereies kyklwn me aktina 1 ews 10
    6.283185307179586
    12.566370614359172
    18.84955592153876
    25.132741228718345
    31.41592653589793
    37.69911184307752
    43.982297150257104
    50.26548245743669
    56.548667764616276
    62.83185307179586
    Emvada tetragwnwn me pleura 1 ews 8
    1
    4
    9
    16
    25
    36
    49
    64
    Emvado kyklou aktinas 1 = 3.141592653589793
    Emvado kyklou aktinas 2 = 12.566370614359172
    Emvado kyklou aktinas 3 = 28.274333882308138
    Emvado kyklou aktinas 4 = 50.26548245743669
    Emvado kyklou aktinas 5 = 78.53981633974483
    """
    """ GRAPSTE TON KWDIKA SAS APO KATW, APOFEYGONTAS
    TIN EPANALIPSI PAROMOIWN ENTOLWN """
    from math import pi
    def perifereia_c(x):
     return 2*pi*x
    def emv_circle(r):
      return pi*r**2
    def emv_square(x):
      return x**2  
    def emv(n,s):
      i=1
      if s=='circle':
       while i<=n:
        print('Emvado kyklou aktinas',i,'=',emv_circle(i))
        i+=1       
      elif s=='square':
       while i<=n:
        print(emv_square(i))
        i+=1
          
    
    print('Perifereies kyklwn me aktina 1 ews 10')
    for i in range(1,11):
     print(perifereia_c(i))
    print('Emvada tetragwnwn me pleura 1 ews 8')
    emv(8,'square')
    emv(5,'circle')
    



    
#>>>>>>>>>>>>>>>>>>>>> Askhsh 7 <<<<<<<<<<<<<<<

def make_quadratic(a, b, c):
    """Polywnymo 2ou ba8mou.

    a, b, c -- ari8moi

    Epistrefei thn tetragwnikh synarthsh f(x) = a*x*x+b*x+c.

    Paradeigmata:
    >>> f = make_quadratic(1, 2, 1.0)
    >>> f(0)
    1.0
    >>> f(-1)
    0.0
    >>> f(1)
    4.0
    >>> f(1.5)
    6.25
    """
    return lambda x: a*x*x + b*x + c



#>>>>>>>>>>>>>>>>>>>>> Askhsh 8 <<<<<<<<<<<<<<<

def abacize(op):
    """Ekdoxh abaka (ari8mhthri) enos telesti.

    op -- synartisi dyo akeraiwn orismatwn
          pou epistrefei akeraia timi

    Epistrefetai nea synartisi pou dexetai ta
    ari8mitika orismata tis op kai epistrefei ta apotelesma tis
    xrhsimopoiwntas anaparastasi me xandres ari8mitiriou.

    Paradeigmata:
    >>> from operator import *
    >>> baby_add = abacize(add)
    >>> baby_add('o', 'o')
    'oo'
    >>> baby_add('oo', 'ooo')
    'ooooo'
    >>> baby_mul = abacize(mul)
    >>> baby_mul('oo', 'ooo')
    'oooooo'
    >>> abacize(max)('oo', 'ooo')
    'ooo'
    >>> abacize(pow)('oo', 'ooo')
    'oooooooo'
    """
    """ GRAPSTE TON KWDIKA SAS APO KATW """
    def f(x,y):
     return op(len(x),len(y))*'o'
    return f     
     
     
     
    
    
     



#>>>>>>>>>>>>>>>>>>>>> Askhsh 9 <<<<<<<<<<<<<<<

def sum_squares(n):
    """A8roisma tetragwnwn.

    n -- 8etikos akeraios >= 1

    Epistrefei tin timi 1 + 2*2 + 3*3 + ... + n*n.

    Paradeigmata:
    >>> sum_squares(1)
    1
    >>> sum_squares(2)
    5
    >>> sum_squares(100)
    338350
    """
    """PREPEI NA LEITOYRGEI ANADROMIKA, XWRIS ENTOLES
    EPANALHPSHS OPWS while, for.
    """
    if n == 1:
        return 1
    else:
        return n**2 + sum_squares(n-1)



#>>>>>>>>>>>>>>>>>>>>> Askhsh 10 <<<<<<<<<<<<<<<

def print_digits(x):
    """Emfanizei ta pshfia ari8mou.

    x -- 8etikos akeraios >= 0

    Emfanizei ena ena ta pshfia tou x arxizontas 
    apo to pio simantiko pshfio.

    Paradeigmata:
    >>> print_digits(0)
    0
    >>> print_digits(2019)
    2
    0
    1
    9
    >>> print_digits(923884)
    9
    2
    3
    8
    8
    4
    """
    """ GRAPSTE TON KWDIKA SAS APO KATW """
    """PREPEI NA LEITOYRGEI ANADROMIKA, XWRIS ENTOLES
    EPANALHPSHS OPWS while, for.
    """
    if x<10:
     print(x)
    else:
     print_digits(x//10)
     print(x%10) 
      
     
     
  
     
     
     

