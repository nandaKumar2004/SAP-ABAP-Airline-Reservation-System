REPORT zairline_cancel.

PARAMETERS:
  p_bookid TYPE char10.

START-OF-SELECTION.

WRITE: / 'Booking Cancelled Successfully'.
WRITE: / 'Booking ID :', p_bookid.
