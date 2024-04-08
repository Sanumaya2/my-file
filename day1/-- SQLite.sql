-- SQLite
--projection

select * from  AuthorDetails

--get name of person who lives in nepal
select Name from Authors where Address='Nepal'

--insert

INSERT INTO Authors
VALUES(NULL, 'Ron', 'M', 'Norway' ,'Ron123@gmail.com', 1960/12/22);


INSERT INTO AuthorDetails
VALUES(NULL, 'MIT', 'NLP/ML', 'Appsoft' , 1);

INSERT INTO AuthorDetails
VALUES(NULL, 'Masters in computer Science', 'None', 'Appsoft' , 2);

--create publisher table
CREATE TABLE Publisher (
   Id integer primary KEY, 
   Name nvarchar(200),
   Address nvarchar(400),
   Phone varchar(10),
   RegistrationNo nvarchar(100)
    
);
CREATE TABLE AuthorDetails (
Id integer primary KEY,
Education nvarchar(200),
Publication nvarchar(400),
Organization varchar(100),
AuthorID Integer,
FOREIGN KEY(AuthorId) REFERENCES Authors(Id)
    
);
DROP TABLE AuthorDetails



.tables
PRAGMA table_info(AuthorDetails);
--Relation 1-1,1-many,many-many

--constraints
ALTER TABEL Authors
Add FOREIGN KEY(AuthorDetailID) REFERENCES AuthorsDetails(Id)

-- classwork  1
--get authors details like name, contact details and the organization he/she is associated.
Select a.Name, a.Email, ad.Organization
FROM Authors a 
INNER JOIN AuthorDetails ad ON a.Id = ad.AuthorId

--class work2
--create table books(id, title,price,ISBN,Edition,published)
--relate books and authors(1-many), FK on many side(authors)
--insert some in books and authors table

select * from Books 

--create books table

.tables
drop TABLE Books
--ISBN - candidate key
--Id - candidate key
----Id - PK

CREATE TABLE Books(
Id integer Primary KEY,
Title nvarchar(200),
Price integer,
ISBN nvarchar(50),
Edition nvarchar(100),
Published DATE
);
--INSERT
INSERT INTO Books
VALUES(NULL, 'Artificial Intelligence', 450, '978-993-724-38-8', 'First Edition', '2070-04-06');

INSERT INTO Books
VALUES(NULL, 'Ad.Database', 600, '998-343-894-30-8', 'First Edition', '2073-03-12');



PRAGMA table_info(Books);


DROP TABLE Authors
--create table Authors
create table Authors(
Id integer,
Name varchar(255),
Gender char(1),
Address char(255),
Email char(255),
Dob char(100),
BookId integer,
FOREIGN KEY(BookId) REFERENCES Books(Id)
);


--insert

select * from  Authors
INSERT INTO Authors
VALUES (NULL, 'Tom B. Erichsen', 'F', 'Norway', 'tom@gmail.com', '1960/12/23', 1);

INSERT INTO Authors
VALUES (NULL, 'Sandip Chaudhary', 'M', 'Dang, Nepal', 'sandip@gmail.com', '2000/12/23', 1);

--SELECT Books.Title, Authors.Name
--FROM Books
--JOIN Authors ON Books.Id = Authors.BooksId;

--SELECT Books.Title, COUNT(Authors.Id) AS AuthorCount
--FROM Books 
--LEFT JOIN Authors ON Books.Id = Authors.AuthorsId
--GROUP BY Books.Id, Books.Title;

--SELECT Authors.Name, Books.Title
--FROM Authors
--JOIN Books ON Authors.AuthorsId = Books.Id

select a.Name from Authors a
INNER JOIN Books b on b.Id== a.BookId
where b.Title like '%Ad Database%'














