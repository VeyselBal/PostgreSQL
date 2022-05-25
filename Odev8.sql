-- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50),
-- birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);


-- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email) values ('Ulrike', '1935-04-30', 'ucornford0@jigsy.com');
-- ...


-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee 
SET name = 'JAVA SEVENLER DERNEĞİ'
WHERE id < 6;


-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE email is null OR birthday is null;
	
