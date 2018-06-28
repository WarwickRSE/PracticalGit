diff --git a/eg.c b/eg.c
index c5ff63d..a68d87b 100644
--- a/eg.c
+++ b/eg.c
@@ -44,6 +44,9 @@ int convert(char* name){
   }else if(first_char == 'c'){
     printf("%c", 'C');
     converted_val = 3;
+  }else if(first_char == 'd'){
+    printf("%c", 'D');
+    converted_val = 4;
   }
   printf("%c", '\n');
 
