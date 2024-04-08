-- SQLite
--projection
select * from  Authors
select * from  AuthorDetails

--get name of person who lives in nepal
secet Name from Authors where Address='Nepal'

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

CREATE TABLE AuthorDetails (
Id integer primary KEY,
Education nvarchar(200),
Publication nvarchar(400),
Organization varchar(100),
AuthorID Integer,
FOREIGN KEY(AuthorId) REFERENCES Authors(Id)
    
);

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


CREATE TABLE Books(
Id integer Primary KEY,
Title nvarchar(200),
Price integer,
ISBN nvarchar(50),
Edition nvarchar(100),
Published Date,
);

CREATE TABLE Books(
Id integer Primary KEY,
Title nvarchar(200),
Price integer,
ISBN nvarchar(50),
Edition nvarchar(100),
Published Date,
);








