//
// Created by rscov on 2021-11-25.
//

#include <iostream>
#include <sstream>

#ifndef RATIONAL_NUMBER_CALCULATOR_RATIONALNUMBER_H
#define RATIONAL_NUMBER_CALCULATOR_RATIONALNUMBER_H

using namespace std;

// Requirement: class for rational numbers containing 2 integers, numerator and denominator, and 4 constructors
class RationalNumber {

    private:

        // ----------
        // PROPERTIES
        // ----------

        int m_Numerator = 0;
        int m_Denominator = 1;

    public:

        // ------------
        // CONSTRUCTORS
        // ------------

        // 1. Default constructor
        RationalNumber();

        // 2. One-argument constructor: for whole numbers, e.g. 5 (5 becomes 5/1)
        RationalNumber(int wholeNumber);

        // 3. Two-argument constructor: for when both numerator and denominator are provided
        RationalNumber(int numerator, int denominator);

        // 4. String: for when the number is provided as a string, i.e. "-1/2" or "5"
        RationalNumber(string input);

        // ----------
        // DESTRUCTOR
        // ----------

        ~RationalNumber() = default;

        // ---------
        // ACCESSORS
        // ---------

        int getNumerator() const {return m_Numerator;}
        int getDenominator() const {return m_Denominator;}

        // --------
        // MUTATORS
        // --------

        void setNumerator(int nInput) { m_Numerator = nInput;}
        void setDenominator(int dInput) { m_Denominator = dInput;}

        // ------------------
        // OPERATOR OVERLOADS
        // ------------------

        // Overloaded mathematical operators
        RationalNumber operator+ (const RationalNumber &rightObj);
        RationalNumber operator- (const RationalNumber &rightObj);
        RationalNumber operator* (const RationalNumber &rightObj);
        RationalNumber operator/ (const RationalNumber &rightObj);

        // Overloaded comparison operators
        bool operator> (const RationalNumber &rightObj);
        bool operator< (const RationalNumber &rightObj);
        bool operator== (const RationalNumber &rightObj);

        // Overloaded output operator
        friend ostream &operator<< (std::ostream &os, const RationalNumber &rightObj);
        //RationalNumber operator<< (const RationalNumber &rightObj);

        // ----------------
        // HELPER FUNCTIONS
        // ----------------

        // Parse string input
        void ParseStringToInt(const std::string& num);

        // Validate input
        bool IsValid(const std::string&);

        // Reduce fraction as far as it can go
        void NormalizeFraction();

        string toString();
};


#endif //RATIONAL_NUMBER_CALCULATOR_RATIONALNUMBER_H
