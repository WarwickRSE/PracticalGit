diff --git a/eg.f90 b/eg.f90
index 8497ba0..0790251 100644
--- a/eg.f90
+++ b/eg.f90
@@ -7,20 +7,9 @@ FUNCTION convert(name)
   CHARACTER(LEN=*), INTENT(IN) :: name
   CHARACTER :: first_char
 
-  first_char = name(1:1)
-
-  convert = 0
-  IF (first_char == 'a') THEN
-    PRINT*, 'A'
-    convert = 1
-  ELSE IF (first_char == 'b') THEN
-    PRINT*, 'B'
-    convert = 2
-  ELSE IF (first_char == 'c') THEN
-    PRINT*, 'C'
-    convert = 3
-  ENDIF
-
+  convert = convert_silent(name)
+  !Characters start at 64 for 'A', 65 for 'B' etc
+  PRINT*, char(convert+64)
 
 END FUNCTION
 
@@ -79,8 +68,8 @@ PROGRAM test
   greet = "Hello"
   PRINT*, greet
 
-  name = "abcde"
-  value = convert_silent(name)
+  name = "defg"
+  value = convert(name)
 
   PRINT*, value
 
