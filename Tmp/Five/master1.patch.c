diff --git a/eg.c b/eg.c
index e98f05d..baf5218 100644
--- a/eg.c
+++ b/eg.c
@@ -4,6 +4,7 @@
 #include <string.h>
 
 int convert(char* name);
+int convert_silent(char* name);
 
 int main(int argc, char** argv){
 
@@ -15,7 +16,7 @@ int main(int argc, char** argv){
   printf("%s", greet);
   printf("%c", '\n');
 
-  value = convert(name);
+  value = convert_silent(name);
 
   printf("%i", value);
   printf("%c", '\n');
@@ -45,3 +46,22 @@ int convert(char* name){
 
   return converted_val;
 }
+
+int convert_silent(char* name){
+
+  char first_char;
+  int converted_val;
+
+  first_char = name[0];
+
+  converted_val = 0;
+  if(first_char == 'a'){
+    converted_val = 1;
+  }else if(first_char == 'b'){
+    converted_val = 2;
+  }else if(first_char == 'c'){
+    converted_val = 3;
+  }
+
+  return converted_val;
+}
