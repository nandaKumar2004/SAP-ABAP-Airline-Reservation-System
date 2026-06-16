REPORT zairline_report.

TABLES: spfli, sflight.

PARAMETERS:
  p_from TYPE spfli-cityfrom,
  p_to   TYPE spfli-cityto.

TYPES: BEGIN OF ty_data,
         carrid   TYPE sflight-carrid,
         connid   TYPE sflight-connid,
         cityfrom TYPE spfli-cityfrom,
         cityto   TYPE spfli-cityto,
         fldate   TYPE sflight-fldate,
         price    TYPE sflight-price,
       END OF ty_data.

DATA: gt_data TYPE TABLE OF ty_data,
      gs_data TYPE ty_data.

SELECT a~carrid
       a~connid
       b~cityfrom
       b~cityto
       a~fldate
       a~price
  INTO TABLE gt_data
  FROM sflight AS a
  INNER JOIN spfli AS b
    ON a~carrid = b~carrid
   AND a~connid = b~connid
  WHERE b~cityfrom = p_from
    AND b~cityto   = p_to.

WRITE: / 'Carrier', 15 'Connection', 30 'Date', 50 'Price'.

ULINE.

LOOP AT gt_data INTO gs_data.
  WRITE: /
    gs_data-carrid,
    15 gs_data-connid,
    30 gs_data-fldate,
    50 gs_data-price.
ENDLOOP.
