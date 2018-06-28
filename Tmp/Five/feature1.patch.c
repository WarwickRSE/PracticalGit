diff --git a/eg.c b/eg.c
index e98f05d..c5ff63d 100644
--- a/eg.c
+++ b/eg.c
@@ -5,12 +5,16 @@
 
 int convert(char* name);
 
+void check_strings();
+
 int main(int argc, char** argv){
 
   char name[26] = "abcde\0";
   char greet[26];
   int value;
 
+  check_strings();
+
   strcpy(greet, "Hello");
   printf("%s", greet);
   printf("%c", '\n');
@@ -45,3 +49,19 @@ int convert(char* name){
 
   return converted_val;
 }
+
+void check_strings(){
+
+  char test_string[26];
+  int value;
+
+  strcpy(test_string, "aaaa");
+  if( convert(test_string) != 1) printf("%s", "That's wrong\n");
+
+  strcpy(test_string, "bbbb");
+  if( convert(test_string) == 2) printf("%s", "That's right\n");
+
+  strcpy(test_string, "ddd");
+  if( convert(test_string) == 0) printf("%s", "Not implemented\n");
+
+}
