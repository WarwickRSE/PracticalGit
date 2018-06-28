diff --git a/eg.c b/eg.c
index baf5218..6130a03 100644
--- a/eg.c
+++ b/eg.c
@@ -6,6 +6,8 @@
 int convert(char* name);
 int convert_silent(char* name);
 
+int sum_name(char* name);
+
 int main(int argc, char** argv){
 
   char name[26] = "abcde\0";
@@ -21,6 +23,11 @@ int main(int argc, char** argv){
   printf("%i", value);
   printf("%c", '\n');
 
+  value = sum_name(name);
+
+  printf("%i", value);
+  printf("%c", '\n');
+
   exit(0);
 }
 
@@ -65,3 +72,16 @@ int convert_silent(char* name){
 
   return converted_val;
 }
+
+int sum_name(char* name){
+
+  int total, i;
+  char * ch;
+
+  total = 0;
+  for(i = 0; i < strlen(name); i++){
+    ch = &name[i];
+    total += convert_silent(ch);
+  }
+  return total;
+}
