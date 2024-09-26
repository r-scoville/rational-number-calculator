//
// Created by rscov on 2021-11-25.
//

#include <iostream>
#include <sstream>
#include <string>
#include <exception>
#include "RationalNumber.h"

// ------------
// CONSTRUCTORS
// ------------

// 1. Default Constructor
RationalNumber::RationalNumber()
    :m_Numerator(0), m_Denominator(1) {
    cout << "Default constructor used." << endl;
}

// 2. Single-argument Constructor
//    Note: for whole numbers, e.g. 5 (5 becomes 5/1)
RationalNumber::RationalNumber(int wholeNumber)
    :m_Numerator(wholeNumber), m_Denominator(1) {
    cout << "Single-argument constructor used." << endl;
}

// 3. Two-argument Constructor
//    Note: for when both numerator and denominator are provided
RationalNumber::RationalNumber(int numerator, int denominator)
    :m_Numerator(numerator), m_Denominator(denominator) {
    cout << "Two-argument constructor used." << endl;
}

// 4. String Constructor
//    Note: for when the number is provided as a string, i.e. "-1/2" or "5"
RationalNumber::RationalNumber(string input) {
    cout << "String-argument constructor used." << endl;
    ParseStringToInt(input);
}

// -------------------------------
// MATHEMATICAL OPERATOR OVERLOADS
// -------------------------------

// Addition overload
RationalNumber RationalNumber::operator+(const RationalNumber &rightObj) {
    cout << "Operator '+' overload used." << endl;
    int first = this->m_Numerator * rightObj.m_Denominator;
    int second = this->m_Denominator * rightObj.m_Numerator;
    RationalNumber output = RationalNumber((first + second), this->m_Denominator * rightObj.m_Denominator);
    output.NormalizeFraction();
    return output;
}

// Subtraction overload
RationalNumber RationalNumber::operator-(const RationalNumber &rightObj) {
    cout << "Operator '-' overload used." << endl;
    int first = this->m_Numerator * rightObj.m_Denominator;
    int second = rightObj.m_Numerator * this->m_Denominator;
    RationalNumber output = RationalNumber((first - second), this->m_Denominator * rightObj.m_Denominator);
    output.NormalizeFraction();
    return output;
}

// Multiplication overload
RationalNumber RationalNumber::operator*(const RationalNumber &rightObj) {
    cout << "Operator '*' overload used." << endl;
    RationalNumber output = RationalNumber((this->m_Numerator * rightObj.m_Numerator), (this->m_Denominator * rightObj.m_Denominator));
    output.NormalizeFraction();
    return output;
}

// Division overload
RationalNumber RationalNumber::operator/(const RationalNumber &rightObj) {
    cout << "Operator '/' overload used." << endl;
    RationalNumber output;
        if (!rightObj.m_Numerator == 0 && !rightObj.m_Denominator == 0) {
            output = RationalNumber((this->m_Numerator * rightObj.m_Denominator),
                                                   (this->m_Denominator * rightObj.m_Numerator));
            output.NormalizeFraction();
        } // end if
        else {
            cout << "Error: cannot divide by zero." << endl;
        }
    return output;
}

// ----------------------------
// OPERATION OPERATOR OVERLOADS
// ----------------------------

// Greater than overload
bool RationalNumber::operator>(const RationalNumber &rightObj) {
    cout << "Comparison operator '>' overload used." << endl;
    double first = (double)(this->m_Numerator / this->m_Denominator);
    double second = (double)(rightObj.m_Numerator / rightObj.m_Denominator);
    return first > second;
}

// Less than overload
bool RationalNumber::operator<(const RationalNumber &rightObj) {
    cout << "Comparison operator '<' overload used." << endl;
    double first = (double)(this->m_Numerator / this->m_Denominator);
    double second = (double)(rightObj.m_Numerator / rightObj.m_Denominator);
    return first < second;
}

// Equals overload
bool RationalNumber::operator==(const RationalNumber &rightObj) {
    cout << "Comparison operator '==' overload used." << endl;
    return ((this->m_Numerator * rightObj.m_Denominator) == (rightObj.m_Numerator * this->m_Denominator));
}

// -------------------------
// OUTPUT OPERATOR OVERLOADS
// -------------------------

ostream &operator<< (ostream &os, const RationalNumber &rightObj) {
    os << rightObj.m_Numerator << "/" << rightObj.m_Denominator;
    //cout << endl << "Output operator '<<' overload used."; // This ouptuts correctly (I think...), but the frequency is a nuisance.
    return os;
}

// ----------------
// HELPER FUNCTIONS
// ----------------

void RationalNumber::ParseStringToInt(const string &input) {
    // Temp string to store input
    string tempString;

    // Check for when the numerator is set
    bool numeratorSet = false;

    for (int i = 0; i < input.length(); i++) {
        // As long as we haven't hit the delimiter, keep adding to the temp string
        if (input[i] != '/') {
            if (IsValid(string{input[i]})) {
                tempString += input[i];
            }
        }
        else {
            // If '/' is hit, check if the numerator is set. If not, set it.
            if (!numeratorSet) {
                if (IsValid(tempString)) {
                    m_Numerator = stoi(tempString);
                    numeratorSet = true;
                }
            }
            // Reset the temp string to be used to hold denominator
            tempString = "";
        } // end if-else
    } // end for

    // After loop ends, set the denominator to remaining input
    if (!numeratorSet) {
        if (IsValid(tempString)) {
            m_Numerator = stoi(tempString);
        }
    }
    else {
        if (IsValid(tempString)) {
            m_Denominator = stoi(tempString);
        }
    } // end if-else
}

// Validate input (i.e. no decimal numbers nor non-numeric entry)
bool RationalNumber::IsValid(const string &str) {
    return(!strspn(str.c_str(), ".") && strspn(str.c_str(), "-0123456789") == str.size());
}

void RationalNumber::NormalizeFraction() {
    // Temp number to store the reduced number
    int reduced = 0;

    // Store the original numerator and denominator from user input
    int tempNumerator = m_Numerator;
    int tempDenominator = m_Denominator;

    // Convert any negative numbers to positive
    m_Numerator = abs(m_Numerator);
    m_Denominator = abs(m_Denominator);

    // Reduce the fraction until we have a remainder of zero
    while ((reduced = m_Numerator % m_Denominator) != 0) {
        m_Numerator = m_Denominator;
        m_Denominator = reduced;
    }

    // Check for negative numbers
    if (tempNumerator < 0 && tempDenominator < 0) {
        tempNumerator = abs(tempNumerator);
        tempDenominator = abs(tempDenominator);
    }

    // Set object numerator/denominator properties to simplified fraction
    m_Numerator = tempNumerator / m_Denominator;
    m_Denominator = tempDenominator / m_Denominator;
}

// ---------
// TO STRING
// ---------

string RationalNumber::toString() {
    return to_string(m_Numerator) + "/" + to_string(m_Denominator);
}
