*&---------------------------------------------------------------------*
*& Report zlfr_tests
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zlfr_tests.

DATA: lv_string   TYPE string,
      lv_char(52) TYPE c VALUE 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz',
      lv_length   TYPE i,
      lv_inicio   TYPE i.

lv_string = 'CEIMIC NUCLEO TECNICO OPERACIONAL D SERV ANAL LTDA '.
lv_length = strlen( lv_string ).
lv_inicio = lv_length - 1.

WHILE lv_length > 0 AND NOT lv_string+lv_inicio(1) CA lv_char.
  lv_length = lv_length - 1.
  lv_inicio = lv_inicio - 1.
  lv_char = lv_string+lv_inicio(1).
ENDWHILE.

IF lv_string+lv_inicio(1) CA lv_char.
  EXIT.
ENDIF.

lv_string = lv_string(lv_inicio). " Keep only the valid part
WRITE lv_string.  " Output: 'Hello World'
