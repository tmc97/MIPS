// Takes two inputted numbers and calculates the product of the two by using the
// Russian Peasant Multiplication method.

#include <iostream>

int russian_peas_mult(int first_column, int second_column) {
    //Multiplies two numbers by using the Russian Peasant Multiplication method
    int result = 0; // Initalized result to 0
    while (second_column != 1) {
        if (second_column % 2 != 0) { // If the number in the second column is even,
            result += first_column;    // the numbers in that row is "crossed out"
        }
    first_column = first_column * 2; // Doubles the first column
    second_column = second_column / 2; // Divides the second column
    }
    result += first_column;
    return result;
}

int main() {
    int input1, input2;
    std::cout << "Please enter an integer: ";
    std::cin >> input1;
    std::cout << "Please enter a second integer: ";
    std::cin >> input2;
    std::cout << "Result: " << russian_peas_mult(input1, input2) << std::endl; // Displays the product
    return 0;
}
