diff --git a/eg.c b/eg.c
index eac0d4e..a15e3d1 100644
--- a/eg.c
+++ b/eg.c
@@ -34,6 +34,9 @@ int convert(char* name){
   }else if(first_char == 'c'){
     printf("%c", 'C');
     converted_val = 3;
+  }else if(first_char == 'd'){
+    printf("%c", 'D');
+    converted_val = 4;
   }
   printf("%c", '\n');
 
