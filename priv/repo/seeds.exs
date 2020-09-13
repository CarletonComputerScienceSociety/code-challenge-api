# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CodeChallenge.Repo.insert!(%CodeChallenge.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CodeChallenge.Repo
alias CodeChallenge.Challenge.Submission
alias CodeChallenge.Challenge.Question

Repo.insert! %Submission{
  email: "matt@carleton.com",
  correct: false,
  answer: "hmm"
}

Repo.insert! %Question{
  title: "Day 0 - Easy",
  body: ~s"""
  In the hexadecimal number system numbers are represented using 16 different digits: <br>

  $$0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F$$ 
  The hexadecimal number AF when written in the decimal number system equals 10×16+15=175.<br>

  In the 3-digit hexadecimal numbers 10A, 1A0, A10, and A01 the digits 0,1 and A are all present.<br>
  Like numbers written in base ten we write hexadecimal numbers without leading zeroes.<br>

  How many hexadecimal numbers containing at most sixteen hexadecimal digits exist with all of the digits 0,1, and A present at least once?<br>
  Give your answer as a hexadecimal number.<br>

  (A, B, C, D, E and F in upper case, without any leading or trailing code that marks the number as hexadecimal and without leading zeroes,<br> e.g. 1A3F and not: 1a3f and not 0x1a3f and not $1A3F and not #1A3F and not 0000001A3F).
  """,
  answer: "answer",
  day: ~D[2020-09-13],
  difficulty: "Easy"
}


Repo.insert! %Question{
  title: "Day 0 - Medium",
  body: ~s"""
  The four adjacent digits in this 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.

  <p class="monospace center">
  73167176531330624919225119674426574742355349194934<br>
  96983520312774506326239578318016984801869478851843<br>
  85861560789112949495459501737958331952853208805511<br>
  12540698747158523863050715693290963295227443043557<br>
  66896648950445244523161731856403098711121722383113<br>
  62229893423380308135336276614282806444486645238749<br>
  30358907296290491560440772390713810515859307960866<br>
  70172427121883998797908792274921901699720888093776<br>
  65727333001053367881220235421809751254540594752243<br>
  52584907711670556013604839586446706324415722155397<br>
  53697817977846174064955149290862569321978468622482<br>
  83972241375657056057490261407972968652414535100474<br>
  82166370484403199890008895243450658541227588666881<br>
  16427171479924442928230863465674813919123162824586<br>
  17866458359124566529476545682848912883142607690042<br>
  24219022671055626321111109370544217506941658960408<br>
  07198403850962455444362981230987879927244284909188<br>
  84580156166097919133875499200524063689912560717606<br>
  05886116467109405077541002256983155200055935729725<br>
  71636269561882670428252483600823257530420752963450<br></p>
  Find the thirteen adjacent digits in this 1000-digit number that have the greatest product. What is the value of this product?
  """,
  answer: "answer",
  day: ~D[2020-09-13],
  difficulty: "Medium"
}


Repo.insert! %Question{
  title: "Day 0 - Hard",
  body: ~s"""
  Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner. <br>

  <img src="/images/dailycode/day2hard.png" width="300px"><br>

  How many such routes are there through a 20×20 grid?
  """,
  answer: "answer",
  day: ~D[2020-09-13],
  difficulty: "Hard"
}

Repo.insert! %Question{
    title: "Day 1 - Easy",
    body: ~s"""
    Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.<br>
    <p class="monospace center">
    37107287533902102798797998220837590246510135740250<br>
    46376937677490009712648124896970078050417018260538<br>
    74324986199524741059474233309513058123726617309629<br>
    91942213363574161572522430563301811072406154908250<br>
    23067588207539346171171980310421047513778063246676<br>
    89261670696623633820136378418383684178734361726757<br>
    28112879812849979408065481931592621691275889832738<br>
    44274228917432520321923589422876796487670272189318<br>
    47451445736001306439091167216856844588711603153276<br>
    70386486105843025439939619828917593665686757934951<br>
    62176457141856560629502157223196586755079324193331<br>
    64906352462741904929101432445813822663347944758178<br>
    92575867718337217661963751590579239728245598838407<br>
    58203565325359399008402633568948830189458628227828<br>
    80181199384826282014278194139940567587151170094390<br>
    35398664372827112653829987240784473053190104293586<br>
    86515506006295864861532075273371959191420517255829<br>
    71693888707715466499115593487603532921714970056938<br>
    54370070576826684624621495650076471787294438377604<br>
    53282654108756828443191190634694037855217779295145<br>
    36123272525000296071075082563815656710885258350721<br>
    45876576172410976447339110607218265236877223636045<br>
    17423706905851860660448207621209813287860733969412<br>
    81142660418086830619328460811191061556940512689692<br>
    51934325451728388641918047049293215058642563049483<br>
    62467221648435076201727918039944693004732956340691<br>
    15732444386908125794514089057706229429197107928209<br>
    55037687525678773091862540744969844508330393682126<br>
    18336384825330154686196124348767681297534375946515<br>
    80386287592878490201521685554828717201219257766954<br>
    78182833757993103614740356856449095527097864797581<br>
    16726320100436897842553539920931837441497806860984<br>
    48403098129077791799088218795327364475675590848030<br>
    87086987551392711854517078544161852424320693150332<br>
    59959406895756536782107074926966537676326235447210<br>
    69793950679652694742597709739166693763042633987085<br>
    41052684708299085211399427365734116182760315001271<br>
    65378607361501080857009149939512557028198746004375<br>
    35829035317434717326932123578154982629742552737307<br>
    94953759765105305946966067683156574377167401875275<br>
    88902802571733229619176668713819931811048770190271<br>
    25267680276078003013678680992525463401061632866526<br>
    36270218540497705585629946580636237993140746255962<br>
    24074486908231174977792365466257246923322810917141<br>
    91430288197103288597806669760892938638285025333403<br>
    34413065578016127815921815005561868836468420090470<br>
    23053081172816430487623791969842487255036638784583<br>
    11487696932154902810424020138335124462181441773470<br>
    63783299490636259666498587618221225225512486764533<br>
    67720186971698544312419572409913959008952310058822<br>
    95548255300263520781532296796249481641953868218774<br>
    76085327132285723110424803456124867697064507995236<br>
    37774242535411291684276865538926205024910326572967<br>
    23701913275725675285653248258265463092207058596522<br>
    29798860272258331913126375147341994889534765745501<br>
    18495701454879288984856827726077713721403798879715<br>
    38298203783031473527721580348144513491373226651381<br>
    34829543829199918180278916522431027392251122869539<br>
    40957953066405232632538044100059654939159879593635<br>
    29746152185502371307642255121183693803580388584903<br>
    41698116222072977186158236678424689157993532961922<br>
    62467957194401269043877107275048102390895523597457<br>
    23189706772547915061505504953922979530901129967519<br>
    86188088225875314529584099251203829009407770775672<br>
    11306739708304724483816533873502340845647058077308<br>
    82959174767140363198008187129011875491310547126581<br>
    97623331044818386269515456334926366572897563400500<br>
    42846280183517070527831839425882145521227251250327<br>
    55121603546981200581762165212827652751691296897789<br>
    32238195734329339946437501907836945765883352399886<br>
    75506164965184775180738168837861091527357929701337<br>
    62177842752192623401942399639168044983993173312731<br>
    32924185707147349566916674687634660915035914677504<br>
    99518671430235219628894890102423325116913619626622<br>
    73267460800591547471830798392868535206946944540724<br>
    76841822524674417161514036427982273348055556214818<br>
    97142617910342598647204516893989422179826088076852<br>
    87783646182799346313767754307809363333018982642090<br>
    10848802521674670883215120185883543223812876952786<br>
    71329612474782464538636993009049310363619763878039<br>
    62184073572399794223406235393808339651327408011116<br>
    66627891981488087797941876876144230030984490851411<br>
    60661826293682836764744779239180335110989069790714<br>
    85786944089552990653640447425576083659976645795096<br>
    66024396409905389607120198219976047599490197230297<br>
    64913982680032973156037120041377903785566085089252<br>
    16730939319872750275468906903707539413042652315011<br>
    94809377245048795150954100921645863754710598436791<br>
    78639167021187492431995700641917969777599028300699<br>
    15368713711936614952811305876380278410754449733078<br>
    40789923115535562561142322423255033685442488917353<br>
    44889911501440648020369068063960672322193204149535<br>
    41503128880339536053299340368006977710650566631954<br>
    81234880673210146739058568557934581403627822703280<br>
    82616570773948327592232845941706525094512325230608<br>
    22918802058777319719839450180888072429661980811197<br>
    77158542502016545090413245809786882778948721859617<br>
    72107838435069186155435662884062257473692284509516<br>
    20849603980134001723930671666823555245252804609722<br>
    53503534226472524250874054075591789781264330331690<br></p>
    """,
    answer: "answer",
    day: ~D[2020-09-14],
    difficulty: "Easy"
}


Repo.insert! %Question{
  title: "Day 1 - Medium",
  body: ~s"""
  The four adjacent digits in this 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.

  <p class="monospace center">
  73167176531330624919225119674426574742355349194934<br>
  96983520312774506326239578318016984801869478851843<br>
  85861560789112949495459501737958331952853208805511<br>
  12540698747158523863050715693290963295227443043557<br>
  66896648950445244523161731856403098711121722383113<br>
  62229893423380308135336276614282806444486645238749<br>
  30358907296290491560440772390713810515859307960866<br>
  70172427121883998797908792274921901699720888093776<br>
  65727333001053367881220235421809751254540594752243<br>
  52584907711670556013604839586446706324415722155397<br>
  53697817977846174064955149290862569321978468622482<br>
  83972241375657056057490261407972968652414535100474<br>
  82166370484403199890008895243450658541227588666881<br>
  16427171479924442928230863465674813919123162824586<br>
  17866458359124566529476545682848912883142607690042<br>
  24219022671055626321111109370544217506941658960408<br>
  07198403850962455444362981230987879927244284909188<br>
  84580156166097919133875499200524063689912560717606<br>
  05886116467109405077541002256983155200055935729725<br>
  71636269561882670428252483600823257530420752963450<br></p>
  Find the thirteen adjacent digits in this 1000-digit number that have the greatest product. What is the value of this product?
  """,
  answer: "answer",
  day: ~D[2020-09-14],
  difficulty: "Medium"
}


Repo.insert! %Question{
  title: "Day 1 - Hard",
  body: ~s"""
  In the 20×20 grid below, four numbers along a diagonal line have been bolded.

  <p class="monospace center">
  08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08<br>
  49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00<br>
  81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65<br>
  52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91<br>
  22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80<br>
  24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50<br>
  32 98 81 28 64 23 67 10 <span class="red"><b>26</b></span> 38 40 67 59 54 70 66 18 38 64 70<br>
  67 26 20 68 02 62 12 20 95 <span class="red"><b>63</b></span> 94 39 63 08 40 91 66 49 94 21<br>
  24 55 58 05 66 73 99 26 97 17 <span class="red"><b>78</b></span> 78 96 83 14 88 34 89 63 72<br>
  21 36 23 09 75 00 76 44 20 45 35 <span class="red"><b>14</b></span> 00 61 33 97 34 31 33 95<br>
  78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92<br>
  16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57<br>
  86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58<br>
  19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40<br>
  04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66<br>
  88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69<br>
  04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36<br>
  20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16<br>
  20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54<br>
  01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48<br></p>
  
  The product of these numbers is 26 × 63 × 78 × 14 = 1788696.
  What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?
  """,
  answer: "answer",
  day: ~D[2020-09-14],
  difficulty: "Hard"
}

Repo.insert! %Question{
    title: "Day 2 - Easy",
    body: ~s"""
    n! (read as n factorial) means n × (n − 1) × ... × 3 × 2 × 1.<br><br>

    For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800, 
    and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27. <br>
    
    Find the sum of the digits in the number 100!
    """,
    answer: "answer",
    day: ~D[2020-09-15],
    difficulty: "Easy"
}

Repo.insert! %Question{
  title: "Day 2 - Medium",
  body: ~s"""
  Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be: <br>

  $$1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...$$

  By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
  """,
  answer: "answer",
  day: ~D[2020-09-15],
  difficulty: "Medium"
}

Repo.insert! %Question{
  title: "Day 2 - Hard",
  body: ~s"""
  Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner. <br>

  <img src="/images/dailycode/day2hard.png" width="300px"><br>

  How many such routes are there through a 20×20 grid?
  """,
  answer: "answer",
  day: ~D[2020-09-15],
  difficulty: "Hard"
}

Repo.insert! %Question{
  title: "Day 3 - Easy",
  body: ~s"""
  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. <br>

  Find the largest palindrome made from the product of two 3-digit numbers.
  """,
  answer: "answer",
  day: ~D[2020-09-16],
  difficulty: "Easy"
}

Repo.insert! %Question{
  title: "Day 3 - Medium",
  body: ~s"""
  The decimal number, $585 = 1001001001_2$ (binary), is palindromic in both bases. <br>

  Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2. <br>

  (Please note that the palindromic number, in either base, may not include leading zeros.)
  """,
  answer: "answer",
  day: ~D[2020-09-16],
  difficulty: "Medium"
}

Repo.insert! %Question{
    title: "Day 3 - Hard",
    body: ~s"""
    In the hexadecimal number system numbers are represented using 16 different digits: <br>

    $$0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F$$ 
    The hexadecimal number AF when written in the decimal number system equals 10×16+15=175.<br>

    In the 3-digit hexadecimal numbers 10A, 1A0, A10, and A01 the digits 0,1 and A are all present.<br>
    Like numbers written in base ten we write hexadecimal numbers without leading zeroes.<br>

    How many hexadecimal numbers containing at most sixteen hexadecimal digits exist with all of the digits 0,1, and A present at least once?<br>
    Give your answer as a hexadecimal number.<br>

    (A, B, C, D, E and F in upper case, without any leading or trailing code that marks the number as hexadecimal and without leading zeroes,<br> e.g. 1A3F and not: 1a3f and not 0x1a3f and not $1A3F and not #1A3F and not 0000001A3F).
    """,
    answer: "answer",
    day: ~D[2020-09-16],
    difficulty: "Hard"
}


Repo.insert! %Question{
  title: "Day 4 - Easy",
  body: ~s"""
  The sum of the squares of the first ten natural numbers is,

  $$1^2 + 2^2 + ... + 10^2 = 385$$

  The square of the sum of the first ten natural numbers is,

  $$(1+2+...+10)^2 = 55^2 = 3025$$

  Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is $3025-385=2640$.
  Find the difference between the sum of the squares of the first one million natural numbers and the square of the sum.
  """,
  answer: "answer",
  day: ~D[2020-09-17],
  difficulty: "Easy"
}

Repo.insert! %Question{
  title: "Day 4 - Medium",
  body: ~s"""
  Consider the following game: <br>

  Player 1 has nine four-sided (pyramidal) dice, each with faces numbered 1, 2, 3, 4. <br>
  Player 2 has six six-sided (cubic) dice, each with faces numbered 1, 2, 3, 4, 5, 6. <br>

  Player 1 and Player 2 roll their dice and compare totals: the highest total wins. The result is a draw if the totals are equal. <br>

  What is the probability that Player 1 beats Player 2? Give your answer rounded to seven decimal places in the form 0.abcdefg. <br>
  """,
  answer: "answer",
  day: ~D[2020-09-17],
  difficulty: "Medium"
}

Repo.insert! %Question{
    title: "Day 4 - Hard",
    body: ~s"""
    In the hexadecimal number system numbers are represented using 16 different digits:

    $$0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F$$
    The hexadecimal number AF when written in the decimal number system equals $10\times16+15=175$. <br>

    In the 3-digit hexadecimal numbers 10A, 1A0, A10, and A01 the digits 0,1 and A are all present. <br>
    Like numbers written in base ten we write hexadecimal numbers without leading zeroes. <br>

    How many hexadecimal numbers containing at most six hexadecimal digits exist with all of the digits 0,1, and A present at least once? <br>
    Give your answer as a hexadecimal number. <br>

    ($A,B,C,D,E$ and $F$ in upper case, without any leading or trailing code that marks the number as hexadecimal and without leading zeroes , <br> e.g., 1A3F and not: 1a3f and not 0x1a3f and not $1A3F and not #1A3F and not 0000001A3F.)
    """,
    answer: "answer",
    day: ~D[2020-09-17],
    difficulty: "Hard"
}

Repo.insert! %Question{
  title: "Day 5 - Easy",
  body: ~s"""
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. <br>

  Find the sum of all the multiples of 3 or 5 below 1000000.
  """,
  answer: "answer",
  day: ~D[2020-09-18],
  difficulty: "Easy"
}

Repo.insert! %Question{
  title: "Day 5 - Medium",
  body: ~s"""
  There is only one solution to this puzzle. <br>
  Find a number consisting of 9 digits in which each of the digits from 1 through 9 appear only once. This number must satisfy the following requirements:<br>


  1. The number should be evenly divisible by 9. <br>

  2. If the right most digit is removed, the remaining 8-digit number should be evenly divisible by 8. <br>

  3. If then again the right most digit is removed, the remaining 7-digit number should be evenly divisible by 7. <br>

  4. Etc, etc... until the last remaining 1 digit number is evenly divisble by 1. <br>
  """,
  answer: "answer",
  day: ~D[2020-09-18],
  difficulty: "Medium"
}

Repo.insert! %Question{
    title: "Day 5 - Hard",
    body: ~s"""
    The RSA encryption is based on the following procedure: <br>
    <ul>
    <li>Generate two distinct primes $p$ and $q$.</li>
    <li>Compute $n=pq$ and $\phi=(p-1)(q-1)$.</li>
    <li>Find an integer $e$, $1 < e < \phi$, such that $gcd(e,\phi)=1$.</li>
    </ul>
    A message in this system is a number in the interval $[0,n-1]$. <br>
    A text to be encrypted is then somehow converted to messages (numbers in the interval $[0,n-1]$). <br>
    To encrypt the text, for each message, $m$, $c=m^e \text{mod } n$ is calculated. <br>
    <br>
    To decrypt the text, the following procedure is needed: calculate $d$ such that $ed=1 \text{ mod } \phi$, then for each encrypted message, $c$, calculate $m=c^d \text{mod } n$. <br>
    <br>
    There exist values of e and m such that me mod n=m.
    We call messages m for which me mod n=m unconcealed messages.
    <br>
    An issue when choosing $e$ is that there should not be too many unconcealed messages.
    For instance, let $p=19$ and $q=37$. <br>
    Then $n=19 \cdot 37=703$ and $\phi=18 \cdot 36=648$. <br>
    If we choose $e=181$, then, although $gcd(181,648)=1$, it turns out that all possible messages
    $m, (0 \leq m \leq n-1)$, are unconcealed when calculating $m^e \text{mod } n$. <br>
    For any valid choice of $e$ there exist some unconcealed messages. <br>
    It's important that the number of unconcealed messages is at a minimum. <br>
    <br>
    Choose $p=1009$ and $q=3643$.
    Find the sum of all values of $e$, $1 < e < \phi(1009,3643)$ and $gcd(e,\phi)=1$, so that the number of unconcealed messages for this value of $e$ is at a minimum.
    """,
    answer: "answer",
    day: ~D[2020-09-18],
    difficulty: "Hard"
}