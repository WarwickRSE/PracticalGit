diff --git a/eg.f90 b/eg.f90
index 8273325..8497ba0 100644
--- a/eg.f90
+++ b/eg.f90
@@ -45,9 +45,32 @@ END FUNCTION
 
 END MODULE mod1
 
+MODULE encoding
+
+USE mod1
+IMPLICIT NONE
+CONTAINS
+
+  FUNCTION sum_name(name) RESULT(total)
+
+    CHARACTER(LEN=*), INTENT(IN) :: name
+    INTEGER :: total
+    INTEGER :: i
+    CHARACTER(1) :: ch
+
+    DO i = 1, len(name)
+      ch = name(i:i)
+      total = total + convert_silent(ch)
+    ENDDO
+
+  END FUNCTION
+
+END MODULE encoding
+
 PROGRAM test
 
   USE mod1
+  USE encoding
   IMPLICIT NONE
 
   CHARACTER(26) :: name, greet
@@ -60,4 +83,8 @@ PROGRAM test
   value = convert_silent(name)
 
   PRINT*, value
+
+  value = sum_name(name)
+  PRINT*, value
+
 END PROGRAM
