PYTHON PRACTICE SET - 50 QUESTIONS WITH ANSWERS
=================================================
(Hindi + English | Basic to Advanced)

Topics: Variables, Data Types, Strings, Lists, Tuples, Dicts, Sets,
        If-Else, Loops, Functions, Lambda, OOP, File Handling, 
        NumPy, Pandas, Data Cleaning

============================================================
LEVEL 1: BASICS (Variables, Data Types, Strings) - Q1 to Q10
============================================================

Q1. EN: How to declare a variable and check its type?
    HI: Variable kaise declare karein aur type kaise check karein?
Ans: 
    name = "Rahul"
    age = 25
    price = 99.99
    print(type(name))    # <class 'str'>
    print(type(age))     # <class 'int'>
    print(type(price))   # <class 'float'>

Q2. EN: How to take user input and convert to integer?
    HI: User se input kaise lein aur integer mein convert karein?
Ans:
    num = int(input("Enter a number: "))
    print(num * 2)

Q3. EN: String slicing - get first 3 characters.
    HI: String slicing - pehle 3 characters kaise nikalein?
Ans:
    text = "Python Programming"
    print(text[0:3])   # "Pyt"

Q4. EN: String methods - upper, lower, replace, split.
    HI: String methods - upper, lower, replace, split kaise use karein?
Ans:
    s = "Hello World"
    print(s.upper())        # "HELLO WORLD"
    print(s.lower())        # "hello world"
    print(s.replace("World", "Python"))  # "Hello Python"
    print(s.split())        # ['Hello', 'World']

Q5. EN: How to format strings using f-strings?
    HI: f-strings ka use karke string kaise format karein?
Ans:
    name = "Ankit"
    age = 28
    print(f"My name is {name} and I am {age} years old.")

Q6. EN: Swap two variables without temp variable.
    HI: Bina temp variable ke do variables kaise swap karein?
Ans:
    a, b = 10, 20
    a, b = b, a
    print(a, b)   # 20 10

Q7. EN: Check if a string is palindrome.
    HI: Check karein ki string palindrome hai ya nahi?
Ans:
    s = "madam"
    print(s == s[::-1])   # True

Q8. EN: Find length of string without len().
    HI: Bina len() ke string ki length kaise nikalein?
Ans:
    s = "Python"
    count = 0
    for ch in s:
        count += 1
    print(count)   # 6

Q9. EN: Count vowels in a string.
    HI: String mein vowels (swar) kaise count karein?
Ans:
    s = "Data Science"
    vowels = "aeiouAEIOU"
    count = sum(1 for ch in s if ch in vowels)
    print(count)   # 5

Q10. EN: Convert string to list of characters.
     HI: String ko character list mein kaise convert karein?
Ans:
    s = "Python"
    chars = list(s)
    print(chars)   # ['P', 'y', 't', 'h', 'o', 'n']

============================================================
LEVEL 2: LISTS, TUPLES, DICTS, SETS - Q11 to Q20
============================================================

Q11. EN: Find max and min from a list without max()/min().
     HI: Bina max()/min() ke list mein se max aur min kaise nikalein?
Ans:
    nums = [45, 12, 78, 34, 89, 23]
    max_val = nums[0]
    min_val = nums[0]
    for n in nums:
        if n > max_val: max_val = n
        if n < min_val: min_val = n
    print(max_val, min_val)   # 89 12

Q12. EN: Remove duplicates from a list (2 methods).
     HI: List se duplicates kaise hatayein (2 tarike)?
Ans:
    # Method 1: Using set
    nums = [1, 2, 2, 3, 4, 4, 5]
    unique = list(set(nums))
    print(unique)   # [1, 2, 3, 4, 5]
    
    # Method 2: Using loop
    unique2 = []
    for n in nums:
        if n not in unique2:
            unique2.append(n)

Q13. EN: Merge two dictionaries.
     HI: Do dictionaries ko kaise merge karein?
Ans:
    d1 = {'a': 1, 'b': 2}
    d2 = {'c': 3, 'd': 4}
    merged = {**d1, **d2}
    print(merged)   # {'a': 1, 'b': 2, 'c': 3, 'd': 4}

Q14. EN: Count frequency of elements in a list.
     HI: List mein elements ki frequency kaise count karein?
Ans:
    items = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple']
    freq = {}
    for item in items:
        freq[item] = freq.get(item, 0) + 1
    print(freq)   # {'apple': 3, 'banana': 2, 'orange': 1}

Q15. EN: Sort a list of tuples by second element.
     HI: Tuple ki list ko second element ke hisaab se sort kaise karein?
Ans:
    data = [(1, 'banana'), (2, 'apple'), (3, 'cherry')]
    sorted_data = sorted(data, key=lambda x: x[1])
    print(sorted_data)   # [(2, 'apple'), (1, 'banana'), (3, 'cherry')]

Q16. EN: Find common elements between two lists.
     HI: Do lists ke common elements kaise nikalein?
Ans:
    list1 = [1, 2, 3, 4, 5]
    list2 = [4, 5, 6, 7, 8]
    common = list(set(list1) & set(list2))
    print(common)   # [4, 5]

Q17. EN: Flatten a nested list.
     HI: Nested list ko kaise flatten karein?
Ans:
    nested = [[1, 2], [3, 4], [5, 6]]
    flat = [item for sublist in nested for item in sublist]
    print(flat)   # [1, 2, 3, 4, 5, 6]

Q18. EN: Dictionary comprehension - create squares.
     HI: Dictionary comprehension se squares kaise banayein?
Ans:
    squares = {x: x**2 for x in range(1, 6)}
    print(squares)   # {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

Q19. EN: Tuple vs List difference with example.
     HI: Tuple aur List ka antar example ke saath?
Ans:
    # List - mutable (changeable)
    my_list = [1, 2, 3]
    my_list[0] = 99   # OK
    
    # Tuple - immutable (cannot change)
    my_tuple = (1, 2, 3)
    # my_tuple[0] = 99   # ERROR!

Q20. EN: Find second largest number in a list.
     HI: List mein second largest number kaise nikalein?
Ans:
    nums = [10, 5, 8, 20, 15]
    nums.sort()
    print(nums[-2])   # 15

============================================================
LEVEL 3: IF-ELSE, LOOPS, FUNCTIONS - Q21 to Q30
============================================================

Q21. EN: Check if a number is prime.
     HI: Prime number kaise check karein?
Ans:
    def is_prime(n):
        if n < 2:
            return False
        for i in range(2, int(n**0.5) + 1):
            if n % i == 0:
                return False
        return True
    print(is_prime(17))   # True

Q22. EN: Fibonacci series using function.
     HI: Fibonacci series function kaise likhein?
Ans:
    def fibonacci(n):
        a, b = 0, 1
        for i in range(n):
            print(a, end=' ')
            a, b = b, a + b
    fibonacci(7)   # 0 1 1 2 3 5 8

Q23. EN: Factorial using recursion.
     HI: Recursion se factorial kaise nikalein?
Ans:
    def factorial(n):
        if n == 0 or n == 1:
            return 1
        return n * factorial(n - 1)
    print(factorial(5))   # 120

Q24. EN: Lambda function - multiply by 2.
     HI: Lambda function se multiply by 2 kaise karein?
Ans:
    multiply = lambda x: x * 2
    print(multiply(5))   # 10
    
    # With map
    nums = [1, 2, 3, 4]
    doubled = list(map(lambda x: x*2, nums))
    print(doubled)   # [2, 4, 6, 8]

Q25. EN: Filter even numbers using filter().
     HI: filter() se even numbers kaise nikalein?
Ans:
    nums = [1, 2, 3, 4, 5, 6, 7, 8]
    evens = list(filter(lambda x: x % 2 == 0, nums))
    print(evens)   # [2, 4, 6, 8]

Q26. EN: *args and **kwargs example.
     HI: *args aur **kwargs ka example?
Ans:
    def func(*args, **kwargs):
        print("Args:", args)
        print("Kwargs:", kwargs)
    func(1, 2, 3, name="Rahul", age=25)
    # Args: (1, 2, 3)
    # Kwargs: {'name': 'Rahul', 'age': 25}

Q27. EN: List comprehension - squares of even numbers.
     HI: List comprehension se even numbers ke squares kaise nikalein?
Ans:
    nums = [1, 2, 3, 4, 5, 6]
    result = [x**2 for x in nums if x % 2 == 0]
    print(result)   # [4, 16, 36]

Q28. EN: Generate random number between 1-100.
     HI: 1-100 ke beech random number kaise generate karein?
Ans:
    import random
    print(random.randint(1, 100))

Q29. EN: Current date and time.
     HI: Current date aur time kaise nikalein?
Ans:
    from datetime import datetime
    now = datetime.now()
    print(now)               # 2026-07-29 10:30:00
    print(now.strftime("%Y-%m-%d %H:%M:%S"))   # Formatted

Q30. EN: Try-Except for error handling.
     HI: Try-Except se error handling kaise karein?
Ans:
    try:
        num = int(input("Enter number: "))
        result = 10 / num
        print(result)
    except ZeroDivisionError:
        print("Cannot divide by zero!")
    except ValueError:
        print("Invalid input!")
    finally:
        print("This always runs.")

============================================================
LEVEL 4: OOP (Object Oriented Programming) - Q31 to Q35
============================================================

Q31. EN: Create a class with constructor and method.
     HI: Class kaise banayein constructor aur method ke saath?
Ans:
    class Student:
        def __init__(self, name, age):
            self.name = name
            self.age = age
        
        def display(self):
            print(f"Name: {self.name}, Age: {self.age}")
    
    s1 = Student("Rahul", 22)
    s1.display()   # Name: Rahul, Age: 22

Q32. EN: Inheritance example.
     HI: Inheritance (inheritance) ka example?
Ans:
    class Animal:
        def __init__(self, name):
            self.name = name
        def speak(self):
            pass
    
    class Dog(Animal):
        def speak(self):
            return f"{self.name} says Woof!"
    
    d = Dog("Tommy")
    print(d.speak())   # Tommy says Woof!

Q33. EN: Encapsulation - private variable.
     HI: Encapsulation - private variable kaise use karein?
Ans:
    class BankAccount:
        def __init__(self, balance):
            self.__balance = balance   # Private
        
        def deposit(self, amount):
            self.__balance += amount
        
        def get_balance(self):
            return self.__balance
    
    acc = BankAccount(1000)
    acc.deposit(500)
    print(acc.get_balance())   # 1500

Q34. EN: @staticmethod vs @classmethod.
     HI: @staticmethod aur @classmethod mein kya antar hai?
Ans:
    class MathUtils:
        @staticmethod
        def add(x, y):
            return x + y
        
        @classmethod
        def create(cls, val):
            return cls()
    
    print(MathUtils.add(5, 3))   # 8

Q35. EN: Magic methods __str__ and __repr__.
     HI: Magic methods __str__ aur __repr__ kaise use karein?
Ans:
    class Book:
        def __init__(self, title, author):
            self.title = title
            self.author = author
        
        def __str__(self):
            return f"{self.title} by {self.author}"
        
        def __repr__(self):
            return f"Book('{self.title}', '{self.author}')"
    
    b = Book("1984", "George Orwell")
    print(str(b))    # 1984 by George Orwell
    print(repr(b))   # Book('1984', 'George Orwell')

============================================================
LEVEL 5: FILE HANDLING - Q36 to Q40
============================================================

Q36. EN: Read a text file line by line.
     HI: Text file ko line by line kaise read karein?
Ans:
    with open('file.txt', 'r') as f:
        for line in f:
            print(line.strip())

Q37. EN: Write and append to a file.
     HI: File mein write aur append kaise karein?
Ans:
    # Write (overwrites)
    with open('data.txt', 'w') as f:
        f.write("Hello World\n")
    
    # Append (adds to end)
    with open('data.txt', 'a') as f:
        f.write("New Line\n")

Q38. EN: Count lines, words, characters in a file.
     HI: File mein lines, words, characters kaise count karein?
Ans:
    with open('file.txt', 'r') as f:
        text = f.read()
        lines = text.count('\n') + 1
        words = len(text.split())
        chars = len(text)
    print(f"Lines: {lines}, Words: {words}, Chars: {chars}")

Q39. EN: Copy contents of one file to another.
     HI: Ek file ka content doosri file mein kaise copy karein?
Ans:
    with open('source.txt', 'r') as src:
        content = src.read()
    with open('dest.txt', 'w') as dest:
        dest.write(content)

Q40. EN: Read CSV file without pandas.
     HI: Bina pandas ke CSV file kaise read karein?
Ans:
    import csv
    with open('data.csv', 'r') as f:
        reader = csv.reader(f)
        header = next(reader)
        for row in reader:
            print(row)

============================================================
LEVEL 6: NUMPY BASICS - Q41 to Q45
============================================================

Q41. EN: Create numpy array and find shape.
     HI: Numpy array kaise banayein aur shape kaise nikalein?
Ans:
    import numpy as np
    arr = np.array([[1, 2, 3], [4, 5, 6]])
    print(arr.shape)   # (2, 3)
    print(arr.dtype)   # int64

Q42. EN: Array slicing - get first row and column.
     HI: Array slicing - first row aur column kaise nikalein?
Ans:
    import numpy as np
    arr = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    print(arr[0, :])     # First row: [1 2 3]
    print(arr[:, 0])     # First col: [1 4 7]

Q43. EN: Mean, median, standard deviation.
     HI: Mean, median, standard deviation kaise nikalein?
Ans:
    import numpy as np
    data = np.array([10, 20, 30, 40, 50])
    print(np.mean(data))      # 30.0
    print(np.median(data))    # 30.0
    print(np.std(data))       # 14.14

Q44. EN: Create random matrix and find max/min.
     HI: Random matrix kaise banayein aur max/min kaise nikalein?
Ans:
    import numpy as np
    matrix = np.random.randint(1, 100, size=(3, 3))
    print(matrix)
    print(f"Max: {matrix.max()}, Min: {matrix.min()}")

Q45. EN: Reshape array from 1D to 2D.
     HI: 1D array ko 2D mein kaise reshape karein?
Ans:
    import numpy as np
    arr = np.array([1, 2, 3, 4, 5, 6])
    reshaped = arr.reshape(2, 3)
    print(reshaped)

============================================================
LEVEL 7: PANDAS & DATA CLEANING - Q46 to Q50
============================================================

Q46. EN: Read CSV and show first 5 rows.
     HI: CSV file kaise read karein aur first 5 rows kaise dikhayein?
Ans:
    import pandas as pd
    df = pd.read_csv('data.csv')
    print(df.head())

Q47. EN: Check null values and fill them.
     HI: Null values kaise check karein aur fill karein?
Ans:
    import pandas as pd
    df = pd.read_csv('data.csv')
    print(df.isnull().sum())          # Count nulls
    df['column'].fillna(df['column'].median(), inplace=True)   # Fill with median

Q48. EN: Group by and aggregate.
     HI: Group by aur aggregation kaise karein?
Ans:
    import pandas as pd
    df = pd.read_csv('sales.csv')
    result = df.groupby('category')['revenue'].agg(['sum', 'mean', 'count'])
    print(result)

Q49. EN: Remove duplicates from DataFrame.
     HI: DataFrame se duplicates kaise hatayein?
Ans:
    import pandas as pd
    df = pd.read_csv('data.csv')
    print(f"Before: {len(df)}")
    df = df.drop_duplicates()
    print(f"After: {len(df)}")

Q50. EN: Filter, sort, and create new column.
     HI: Filter, sort aur new column kaise banayein?
Ans:
    import pandas as pd
    df = pd.read_csv('sales.csv')
    
    # Filter
    high_sales = df[df['amount'] > 1000]
    
    # Sort
    sorted_df = high_sales.sort_values('amount', ascending=False)
    
    # New column
    df['tax'] = df['amount'] * 0.18
    
    print(df.head())
