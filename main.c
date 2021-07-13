//===================================================================================================================================== 
//Program Name: main.c                                                                                                      *
//Programming Language: c                                                                                                   *
//Program Description: .                                                                                                    *
//this function is the mian function and it will call the mananger in the funciotn                                          *                                                                            *
//Author: shaochen ren                                                                                                      *
//Email: renleo@csu.fullerton.edu                                                                                           *
//Institution: California State University, Fullerton                                                                       * 
//Course: CPSC 240-05                                                                                                       *
//Start Date: 20 September, 2020                                                                                            *
//Copyright (C) 2020 Shaochen Ren                                                                                           *
//This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License * 
//version 3 as published by the Free Software Foundation.                                                                   *
//This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        * 
//Warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.    * 
//A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>.                          *
#include <stdio.h>
#include <stdint.h>

long int manager();

int main()
{long int result_code = -999;
 result_code = manager();
 printf("%s%ld\n","the main will return 0  to the operating system.  bye ",result_code);
 return 0;
}//End of main
