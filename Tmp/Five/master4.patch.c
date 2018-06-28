diff --git a/eg.c b/eg.c
index 6130a03..817df9d 100644
--- a/eg.c
+++ b/eg.c
@@ -10,7 +10,7 @@ int sum_name(char* name);
 
 int main(int argc, char** argv){
 
-  char name[26] = "abcde\0";
+  char name[26] = "defg\0";
   char greet[26];
   int value;
 
@@ -18,7 +18,7 @@ int main(int argc, char** argv){
   printf("%s", greet);
   printf("%c", '\n');
 
-  value = convert_silent(name);
+  value = convert(name);
 
   printf("%i", value);
   printf("%c", '\n');
@@ -36,19 +36,9 @@ int convert(char* name){
   char first_char;
   int converted_val;
 
-  first_char = name[0];
-
-  converted_val = 0;
-  if(first_char == 'a'){
-    printf("%c", 'A');
-    converted_val = 1;
-  }else if(first_char == 'b'){
-    printf("%c", 'B');
-    converted_val = 2;
-  }else if(first_char == 'c'){
-    printf("%c", 'C');
-    converted_val = 3;
-  }
+  converted_val = convert_silent(name);
+  //Characters start 'A', then 'B' etc
+  printf("%c", 'A'-1+converted_val);
   printf("%c", '\n');
 
   return converted_val;
