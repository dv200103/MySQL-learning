-- (i)
select date_format(curdate(),"%M");

-- (ii)
select trim(" Panorama ");

-- (iii)
select date_format("2001-05-03","%W");
-- OR
-- select date_format(str_to_date("03-05-2001","%d-%m-%Y"),"%W");

-- (iv)
select locate("Dilip","Verma Dilip Jagprasad");

-- (v)
select mod(44,5);