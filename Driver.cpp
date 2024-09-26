//
// Created by rscov on 2021-12-05.
//

#include "Driver.h"
#include "RationalNumber.h"

Driver::Driver() {

    bool isRunning = true;
    string runSelection;

    while (isRunning) {

        // String variable to hold user input
        string input;

        // User inputs entire first fraction (or whole number) as a string.
        // Set first fraction properties using input.
        cout << "Enter first fraction or whole number:" << endl;
        getline(cin, input);

        // Instantiate rational number objects to hold user input
        RationalNumber *ratNum1 = new RationalNumber(input); // as pointer
        cout << endl;

        // User inputs entire second fraction (or whole number) as a string.
        // Set second fraction properties using input.
        cout << "Enter second fraction or whole number:" << endl;
        getline(cin, input);

        RationalNumber *ratNum2 = new RationalNumber(input); // as pointer
        cout << endl;

        // Output should list all the mathematical, comparison, and overloaded output operators required in the assignment.
        // In addition to the above, you will also need to code additional demonstrations in order to demonstrate the
        // functionality of all the constructors and overloaded operators you have created.

        // OUTPUT FRACTION TO DEMONSTRATE CONSTRUCTOR FUNCTIONALITY
        cout << endl;
        cout << "Your first rational number is: " << *ratNum1 << endl;
        cout << "Its numerator is: " << ratNum1->getNumerator() << endl;
        cout << "Its denominator is: " << ratNum1->getDenominator() << endl;
        cout << endl;
        cout << "Your second rational number is: " << *ratNum2 << endl;
        cout << "Its numerator is: " << ratNum2->getNumerator() << endl;
        cout << "Its denominator is: " << ratNum2->getDenominator() << endl;
        cout << endl;

        // OUTPUT OVERLOADED MATHEMATICAL OPERATORS
        cout << *ratNum1 << " plus " << *ratNum2 << " equals: " << *ratNum1 + *ratNum2 << endl << endl;
        cout << *ratNum1 << " subtract " << *ratNum2 << " equals: " << *ratNum1 - *ratNum2 << endl << endl;
        cout << *ratNum1 << " times " << *ratNum2 << " equals: " << *ratNum1 * *ratNum2 << endl << endl;
        cout << *ratNum1 << " divided " << *ratNum2 << " equals: " << *ratNum1 / *ratNum2 << endl << endl;

        // OUTPUT OVERLOADED COMPARISON OPERATORS
        if (*ratNum1 == *ratNum2) {
            cout << *ratNum1 << " is equal to " << *ratNum2 << "." << endl << endl;
        }
        else {
            cout << *ratNum1 << " is not equal to " << *ratNum2 << "." << endl << endl;
        } // end if-else

        if (*ratNum1 > *ratNum2) {
            cout << *ratNum1 << " is greater than " << *ratNum2 << "." << endl << endl;
        }
        else {
            cout << *ratNum1 << " is not greater than " << *ratNum2 << "." << endl << endl;
        } // end if-else

        if (*ratNum1 < *ratNum2) {
            cout << *ratNum1 << " is less than " << *ratNum2 << "." << endl << endl;
        }
        else {
            cout << *ratNum1 << " is not less than " << *ratNum2 << "." << endl << endl;
        } // end if-else

        // Clean up
        delete ratNum1;
        delete ratNum2;

        // Prompt user to loop
        cout << "Do you want to continue entering numbers? Enter any key to continue or 'Q' to quit." << endl;
        getline (cin, runSelection);

        if (runSelection == "Q" || runSelection == "q") {
            isRunning = false;
        }
    } // end while
}
