#include "test.h"
#include "math.h"
#include "student.h"
#include <stdlib.h>

/**
 * CIS 241-02 Final
 * Jacob Kucinski
 */


/**
 * Example for demonstration at start of test.
 */

int example(){
	return 42;
}

/**
 * Warmup (but counts for credit!)
 * Square the value x points to.
 */
void easyPeasy(int* x){
	*x = *x * *x;
}

/**
 * Set a's first name to "Jigglypuff".
 * Set the last name to "Ketchum".
 * Set the g number to 10, the gpa to 1.16.
 */
void one(Student* a){
	char* first = "Jigglypuff";
	char* last = "Ketchum";	
	int g = 10;
	float gp = 1.16;

	set_first_name(a, first);
	set_last_name(a, last);
	set_g_number(a, g);
	set_gpa(a, gp);
}

/**
 * Copy the information from Student b to Student a.
 * (pointer parameters).
 */
void two(Student* a, Student* b){
	char const* first = get_first_name(b);
	char const* last = get_last_name(b);
	char* fn = (char*)first;
	char* ln = (char*)last;

	int gNum = get_g_number(b);
	float gpa = get_gpa(b);
	Student* c = get_roommate(b);

	set_first_name(a, fn);
	set_last_name(a, ln);
	set_g_number(a, gNum);
	set_gpa(a, gpa);
	set_roommate(a, c);
}

/**
 * Copy the information from Student a to Student b.
 * (mixed variable type parameters).
 */

void three(Student a, Student* b){
	char const* first = a.first_name;
	char const* last = a.last_name;
	char* fn = (char*)first;
	char* ln = (char*)last;

	int gNum = a.g_number;
	float gpa = a.gpa;
	Student* c = a.roommate;

	set_first_name(b, fn);
	set_last_name(b, ln);
	set_g_number(b, gNum);
	set_gpa(b, gpa);
	set_roommate(b, c);
}

/**
 * Create and return a Student.  Give it the values
 * "T. Yoshisaur" (first_name)
 * "Munchakoopas" (last_name)
 * 1990		  (g_number)
 * 3.1		  (gpa)
 * Mario	  (roommate [defined above])
 * Remember: C is pass by copy ONLY.
 */
Student four(){
	Student a;
	a.first_name = "T. Yoshisaur";
	a.last_name = "Munchakoopas";
	a.g_number = 1990;
	a.gpa = 3.1;

	Student* m;
	m = &Mario;
	a.roommate = m;

	return a;
}

/**
 * Create and return a Student*.  Give it the value
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 * Remember: C is pass by copy ONLY.
 */
Student* five(){
	Student* a = (Student*)malloc(sizeof(Student));
	a->first_name = (char*)malloc(sizeof(char) * 10);
	a->last_name = (char*)malloc(sizeof(char) * 10);
	
	char* fn = "Luigi";
	char* ln = "Mario";
	int gNum = 2;
	float gpa = 3.54;

	set_first_name(a, fn);
	set_last_name(a, ln);
	set_g_number(a, gNum);
	set_gpa(a, gpa);

	return a;	
}


/**
 * Create a hunk of memory we can use as an array of 10
 * Students.  Set the 4th element (meaning use array
 * index 3) to
 *
  "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
Student* six(){
	Student* array = (Student*)malloc(10*sizeof(Student*));
	array[3].first_name = (char*)malloc(sizeof(char)*10);
	array[3].last_name = (char*)malloc(sizeof(char)*10);
	array[3].first_name = "Luigi";
	array[3].last_name = "Mario";
	array[3].g_number = 2;
	array[3].gpa = 3.54;

	return array;
}

/**
 * Seven will take a pointer to a pointer.  It should
 * create a hunk of memory that can be used as an array
 * of size 10, and will set the pointer correctly so
 * that the "array" is usable in main.
 * Set the 10th (index 9) element equal to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
void seven(Student** students){
	Student* arr = (Student*)malloc(10*sizeof(Student*));
	*students = &*arr;
	
	arr[9].first_name = (char*)malloc(sizeof(char)*10);
	arr[9].last_name = (char*)malloc(sizeof(char)*10);
	arr[9].first_name = "Luigi";
	arr[9].last_name = "Mario";	
	arr[9].g_number = 2;
	arr[9].gpa = 3.54;
}

/**
 * Given a, b, and c calculate the first solution for
 * the quadratic equation (given below).
 *
 * -b + sqrt(b^2 - 4ac) / (2a)
 */
double quadratic(double a, double b, double c){
	return ((-1 * b) + sqrt((b*b) - (4*a*c))) / (2*a);
	
}

/**
 * Given a "string" (a character array) and a length,
 * replace each lower case character with its uppercase
 * equivalent.
 *
 * Do not use any string functions provided by the library.
 * Merely check to see if each character is between the
 * range of values for a lowercase letter.  If it is,
 * replace it with the uppercase value equivalent.
 *
 * If you are writing more than five lines you are doing it wrong.
 */
#include <stdio.h>
void capitalize(char* str, size_t len){
	for(int i = 0; i < len; i++){
		int dec = str[i];
		if(96 < dec && dec < 123){
			str[i] -= 32;
		}
	}
}
