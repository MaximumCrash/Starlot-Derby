#include <iostream>
#include <math.h>
#include <iomanip>
#include <typeinfo>
using namespace std; 

int main() {

	int Cap = 0; 
	int Const = 0; 
	int XP = 0;
	int XPnext = 0; 
	int XPtotal = 0; 
	char reset = 'n'; 
	bool check = cin.fail(); 

	cout << ".d88b.  w             8        w  " << endl; 
	cout << "YPwww. w8ww .d88 8d8b 8 .d8b. w8ww" << endl; 
	cout << "    d8  8   8  8 8P   8 8' .8  8 " << endl; 
	cout << "`Y88P'  Y8P `Y88 8    8 `Y8P'  Y8P" << endl; 
	cout << endl;
	cout << "   888b.            8          " << endl; 
	cout << "   8   8 .d88b 8d8b 88b. Yb  dP" << endl; 
	cout << "   8   8 8.dP' 8P   8  8  YbdP" << endl; 
	cout << "   888P' `Y88P 8    88P'   dP" << endl; 
	cout << "                          dP" << endl; 
	cout << endl;
	cout << "================================================" << endl; 
	cout << endl; 
	cout << "STARLOT DERBY - LEVEL GENERATOR v 1.0" << endl;
	cout << endl; 
	cout << "By: Rejon Taylor-Foster (c) Maximum Crash (2015)" << endl;
	cout << endl;
	cout << "================================================" << endl;  
	cout <<endl; 

	cout << "HOW IT WORKS!" << endl;
	cout << "---------------" << endl; 
	cout<< endl; 
	cout << "This is a simulation used to balance out Starlot" << endl;
	cout << "Derby's RPG leveling mechanic. " << endl; 
	cout << endl;
	cout << "Variables and Formulas" << endl; 
	cout << "======================" << endl;
	cout << endl; 
	cout << "Const = Lowest Average # of Hits per Game = 10" << endl; 
	cout << endl;

	cout << "Expanded Formula" << endl; 
	cout << "-----------------" << endl;
	cout<< "Level = (Const * Sqrt(NeededXP/100) + PrevXP)" <<endl;
	cout << endl; 

	cout << "Simplified Formula" << endl; 
	cout << "-----------------" << endl;
	cout << "NeededXP = Level^2 + PrevXP" << endl;
	cout << endl;

	cout << "Even Simpler" << endl; 
	cout << "-----------------" << endl;
	cout << "NeededXP = Level^2 + (Level-1)^2" << endl; 
	cout << endl; 
	
	while (Cap == 0) {
	cout << "Balancing your levels!" <<endl; 
	cout << "-----------------" << endl;
	cout << "What's the Level Cap?: "; 
	cin >> Cap; 
	cout<< endl;
	cout << endl;
	
	if (cin.fail() || Cap == 0) 
	{
		Cap = 0; 
		cin.clear();
		cin.ignore(INT_MAX, '\n'); 
	
		cout << "****ERROR: Incorrect Input! Please in a NUMBER greater than 0!****" <<endl;
		cout << endl; 
	}
	else
		break; 
	}

	cout << "      Level       XP Needed          XP Total" << endl;
	cout <<"-------------------------------------------------" <<endl;
	cout << endl;

	while (reset == 'n' || reset == 'N')
	{
		for (double i = 0; i <= Cap; i++)
		{

			double x = pow (i, 2.0); 
			double y = pow (i-1, 2.0); 
		
			XP = x+(y); 
			XPtotal += XP; 

			cout << setfill(' ') << setw(3) << i << ".  " << setfill(' ') << setw(3) << i << "    ||     " << setfill(' ') << setw(6) << XP << "     ||     " << setfill(' ') << setw(9) << XPtotal << endl; 

			if (i == Cap) 
			{
				cout << endl;
				cout << "*---*DONE*----------*DONE*-------------*DONE*----*" << endl;
				cout << endl; 
				cout << "Reset Cap or Quit? (y/n) "; 
				cin >> reset;
				cout << endl;
				

				if (reset == 'y' || reset == 'Y')
				{
					i = 0; 
					XPtotal = 0;
					cout << endl;
					cout << "What's the Level Cap?: "; 
					cin >> Cap; 
					cout<< endl; 
				}	
				else
					return 0;
			}
		}
	}
}
