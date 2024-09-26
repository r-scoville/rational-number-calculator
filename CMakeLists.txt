cmake_minimum_required(VERSION 3.20)
project(Rational_Number_Calculator)

set(CMAKE_CXX_STANDARD 14)

add_executable(Rational_Number_Calculator main.cpp RationalNumber.cpp RationalNumber.h Driver.cpp Driver.h)
