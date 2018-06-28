diff --git a/eg.f90 b/eg.f90
index 385a659..df51ce3 100644
--- a/eg.f90
+++ b/eg.f90
@@ -19,9 +19,11 @@ FUNCTION convert(name)
   ELSE IF (first_char == 'c') THEN
     PRINT*, 'C'
     convert = 3
+  ELSE IF (first_char == 'd') THEN
+    PRINT*, 'D'
+    convert = 4
   ENDIF
 
-
 END FUNCTION
 END MODULE mod1
 
