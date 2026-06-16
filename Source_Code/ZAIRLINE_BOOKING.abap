REPORT zairline_booking.

PARAMETERS:
  p_name TYPE char30,
  p_carr TYPE sflight-carrid,
  p_conn TYPE sflight-connid,
  p_date TYPE sflight-fldate.

START-OF-SELECTION.

WRITE: / 'Booking Successful'.
WRITE: / 'Passenger Name :', p_name.
WRITE: / 'Carrier ID     :', p_carr.
WRITE: / 'Connection ID  :', p_conn.
WRITE: / 'Flight Date    :', p_date.
