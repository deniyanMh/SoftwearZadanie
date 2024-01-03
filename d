warning: in the working copy of 'GitExercise/OptionsManager.cs', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'GitExercise/Startup.cs', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/GitExercise/OptionsManager.cs b/GitExercise/OptionsManager.cs[m
[1mindex 6999c0f..16712ad 100644[m
[1m--- a/GitExercise/OptionsManager.cs[m
[1m+++ b/GitExercise/OptionsManager.cs[m
[36m@@ -7,7 +7,9 @@[m [mnamespace GitExercise[m
         public static string[] OptionsList = {[m
             "a - Add",[m
             "s - Subtract",[m
[31m-            "m - Multiply"[m
[32m+[m[32m            "m - Multiply",[m
[32m+[m[32m            "d - Devide",[m
[32m+[m[32m            "sabs - Subtract Abs"[m
         };[m
 [m
         public static void Add(double a, double b)[m
[36m@@ -24,5 +26,14 @@[m [mnamespace GitExercise[m
         {[m
             Console.WriteLine($"{a} - {b} = {a - b}");[m
         }[m
[32m+[m
[32m+[m[32m        public static void Devide(double a, double b)[m
[32m+[m[32m        {[m
[32m+[m[32m            Console.WriteLine($"{a} : {b} = {a / b}");[m
[32m+[m[32m        }[m
[32m+[m[32m        public static void SubtractAbs(double a, double b)[m
[32m+[m[32m        {[m
[32m+[m[32m            Console.WriteLine($"|{a} : {b}| = {Math.Abs(a-b)}");[m
[32m+[m[32m        }[m
     }[m
 }[m
[1mdiff --git a/GitExercise/Startup.cs b/GitExercise/Startup.cs[m
[1mindex f1a8d5e..4b0c06b 100644[m
[1m--- a/GitExercise/Startup.cs[m
[1m+++ b/GitExercise/Startup.cs[m
[36m@@ -1,11 +1,31 @@[m
 ﻿using System;[m
[32m+[m[32musing System.Reflection.Metadata.Ecma335;[m
 [m
 namespace GitExercise[m
 {[m
     public class Startup[m
     {[m
[32m+[m
[32m+[m[32m        private static bool CheckCredentials()[m
[32m+[m[32m        {[m[41m [m
[32m+[m[32m        Console.Write("Enter password to gain access: ");[m
[32m+[m[32m            string password = Console.ReadLine();[m
[32m+[m[32m            Console.Clear();[m
[32m+[m[32m            return password == Password;[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        private const string Password = "abcd1234";[m
[32m+[m
         public static void Main()[m
         {[m
[32m+[m[32m            bool isAuthorized = CheckCredentials();[m
[32m+[m
[32m+[m[32m            if (!isAuthorized)[m
[32m+[m[32m            {[m
[32m+[m[32m                Console.WriteLine("Access denied.");[m
[32m+[m[32m                Console.ReadKey(true);[m
[32m+[m[32m                return;[m
[32m+[m[32m            }[m
             Console.WriteLine("Console Calculator App");[m
             Console.WriteLine(new string('-', 15));[m
 [m
