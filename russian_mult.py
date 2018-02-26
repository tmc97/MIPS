# Takes two inputted numbers and calculates their product by using the
# Russian Peasant Multiplication method.

def russian_mult(first_column, second_column):
    result = 0

    while (second_column != 1):
        if (second_column % 2 != 0):
            result = first_column + result
        first_column = (first_column*2)
        second_column = (second_column//2)

    result = first_column + result
    return result

def main():
    first = int(input("Please enter an integer: "))
    second = int(input("Please enter a second integer: "))
    print(russian_mult(first, second))

main()
