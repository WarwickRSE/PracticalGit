diff --git a/eg.f90 b/eg.f90
index d15ab90..385a659 100644
--- a/eg.f90
+++ b/eg.f90
@@ -25,14 +25,41 @@ FUNCTION convert(name)
 END FUNCTION
 END MODULE mod1
 
+MODULE tests
+
+  USE mod1
+IMPLICIT NONE
+  CONTAINS
+
+  SUBROUTINE check_strings
+
+    CHARACTER(26) :: test_string
+    INTEGER :: value
+
+    test_string = "aaaa"
+    IF( convert(test_string) /= 1) PRINT*, "That's wrong"
+
+    test_string = "bbbb"
+    IF( convert(test_string) == 2) PRINT*, "That's right"
+
+    test_string = "ddd"
+    IF( convert(test_string) == 0) PRINT*, "Not implemented"
+
+  END SUBROUTINE
+
+END MODULE tests
+
 PROGRAM test
 
   USE mod1
+  USE tests
   IMPLICIT NONE
 
   CHARACTER(26) :: name, greet
   INTEGER :: value
 
+  CALL check_strings()
+
   greet = "Hello"
   PRINT*, greet
 
