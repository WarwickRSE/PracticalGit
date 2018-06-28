diff --git a/eg.f90 b/eg.f90
index 8497ba0..023caeb 100644
--- a/eg.f90
+++ b/eg.f90
@@ -1,55 +1,54 @@
 
 MODULE mod1
-CONTAINS
-FUNCTION convert(name)
-
-  INTEGER :: convert
-  CHARACTER(LEN=*), INTENT(IN) :: name
-  CHARACTER :: first_char
-
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
+ CONTAINS
+  FUNCTION convert(name)
 
+    INTEGER :: convert
+    CHARACTER(LEN=*), INTENT(IN) :: name
+    CHARACTER :: first_char
+
+    first_char = name(1:1)
+
+    convert = 0
+    IF (first_char == 'a') THEN
+      PRINT*, 'A'
+      convert = 1
+    ELSE IF (first_char == 'b') THEN
+      PRINT*, 'B'
+      convert = 2
+    ELSE IF (first_char == 'c') THEN
+      PRINT*, 'C'
+      convert = 3
+    ENDIF
 
-END FUNCTION
+  END FUNCTION
 
-FUNCTION convert_silent(name) RESULT(convert)
+  FUNCTION convert_silent(name) RESULT(convert)
 
-  INTEGER :: convert
-  CHARACTER(LEN=*), INTENT(IN) :: name
-  CHARACTER :: first_char
+    INTEGER :: convert
+    CHARACTER(LEN=*), INTENT(IN) :: name
+    CHARACTER :: first_char
 
-  first_char = name(1:1)
+    first_char = name(1:1)
 
-  convert = 0
-  IF (first_char == 'a') THEN
-    convert = 1
-  ELSE IF (first_char == 'b') THEN
-    convert = 2
-  ELSE IF (first_char == 'c') THEN
-    convert = 3
-  ENDIF
+    convert = 0
+    IF (first_char == 'a') THEN
+      convert = 1
+    ELSE IF (first_char == 'b') THEN
+      convert = 2
+    ELSE IF (first_char == 'c') THEN
+      convert = 3
+    ENDIF
 
-END FUNCTION
+  END FUNCTION
 
 END MODULE mod1
 
 MODULE encoding
 
 USE mod1
-IMPLICIT NONE
-CONTAINS
+  IMPLICIT NONE
+  CONTAINS
 
   FUNCTION sum_name(name) RESULT(total)
 
