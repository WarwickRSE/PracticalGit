diff --git a/eg.f90 b/eg.f90
index d15ab90..8273325 100644
--- a/eg.f90
+++ b/eg.f90
@@ -23,6 +23,26 @@ FUNCTION convert(name)
 
 
 END FUNCTION
+
+FUNCTION convert_silent(name) RESULT(convert)
+
+  INTEGER :: convert
+  CHARACTER(LEN=*), INTENT(IN) :: name
+  CHARACTER :: first_char
+
+  first_char = name(1:1)
+
+  convert = 0
+  IF (first_char == 'a') THEN
+    convert = 1
+  ELSE IF (first_char == 'b') THEN
+    convert = 2
+  ELSE IF (first_char == 'c') THEN
+    convert = 3
+  ENDIF
+
+END FUNCTION
+
 END MODULE mod1
 
 PROGRAM test
@@ -37,7 +57,7 @@ PROGRAM test
   PRINT*, greet
 
   name = "abcde"
-  value = convert(name)
+  value = convert_silent(name)
 
   PRINT*, value
 END PROGRAM
