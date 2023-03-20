/*insert into Department table*/
DBCC checkident ('Department',reseed,0)
exec InsertIntoDepartment @Dept_name='SD'
exec InsertIntoDepartment @Dept_name='UI'


/*insert into Register table*/
DBCC checkident ('Register',reseed,0)
exec InsertIntoRegister @email='test@test.com',@name='Alaa',@password='1234',@type='Student'
exec InsertIntoRegister @email='abc@test.com',@name='Mohamed',@password='1234',@type='Instructor'

/*insert into Student table*/
DBCC checkident ('Student',reseed,0)
exec InsertIntoStudent @fname='Alaa',@lname='Ahmed',@age=18,@did=1,@rid=0
exec InsertIntoStudent @fname='Youssef',@lname='Ahmed',@age=22,@did=1

/*insert into Instructor table*/
DBCC checkident ('Instructor',reseed,0)
exec InsertIntoInstructor @Fname='Ahmed',@Lname='Ali'
exec InsertIntoInstructor @Fname='Mohamed',@Lname='Ahmed',@age=38,@address='Ismailia',@rid=1
exec InsertIntoInstructor @Fname='Osama',@Lname='Ahmed',@age=40,@address='Ismailia'

/*insert into Course table*/
DBCC checkident ('Course',reseed,0)
exec InsertIntoCourse @Crs_name='MVC',@inst_id=0,@dept_id=0
exec InsertIntoCourse @Crs_name='Angular',@inst_id=2,@dept_id=1
exec InsertIntoCourse @Crs_name='SQL',@inst_id=1,@dept_id=0
exec InsertIntoCourse @Crs_name='C#',@inst_id=1,@dept_id=0

/*insert into Topic table*/
DBCC checkident ('Topic',reseed,0)
exec InsertIntoTopic @tname='Tier Architecture',@cid=0 
exec InsertIntoTopic @tname='Component interaction',@cid=1
exec InsertIntoTopic @tname='Modular Angular Architecture',@cid=1

/*insert into Question table*/
/*MVC MCQ*/
DBCC checkident ('Question',reseed,0)
exec InsertIntoQuestion @text="Which filter executes first in ASP.NET MVC? a)Exception filters b)Authentication filters c)Result filters d)Action filters"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=0
exec InsertIntoQuestion @text="What is ActionResult in ASP.NET MVC? a)Interface b)Variable c)Return type of a controller method d)None of the above"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=0

exec InsertIntoQuestion @text="In which format data will be returned from XML into the table? a)DataSet b)DataRow c)DataTable d)None of the above"
						,@type="MCQ" ,@ModelAnswer="a",@Cid=0

exec InsertIntoQuestion @text="________is the default authentication in (IIS). a)Administrator b)Anonymous c)Standard User d)All of the above"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=0

exec InsertIntoQuestion @text="
Which Request Processing technique follows the ASP.NET? a)Down-Up b)Top-Down c)Pipeline d)Waterfall"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=0

exec InsertIntoQuestion @text="Which is the default Viewstart Page in ASP.NET MVC? a)_Layout.cshtml b)_ViewStart.cshtml c)_Login.cshtml d)ANone of the above"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=0

exec InsertIntoQuestion @text="Which among the below works on the client-side? a)HiddenField b)
ControlState c)ViewState d)All of the above"
						,@type="MCQ" ,@ModelAnswer="d",@Cid=0

exec InsertIntoQuestion @text="What is meant by ViewResult()? a)A Concrete class b)
An abstract class c)Both a & b d)None of the above"
						,@type="MCQ" ,@ModelAnswer="a",@Cid=0

exec InsertIntoQuestion @text="DRY principle in ASP.NET represents __. a)Don’t Revise Yourself b)Don’t Repeat Yourself c)a & b d)None of the above"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=0
/*MVC True and False*/
exec InsertIntoQuestion @text="Model View Controller is the full form of MVC .

a) True
b) False"
						,@type="tf" ,@ModelAnswer="a",@Cid=0

exec InsertIntoQuestion @text="we can use view state in MVC ?

a) True
b) False"
						,@type="tf" ,@ModelAnswer="b",@Cid=0

exec InsertIntoQuestion @text="Does Razor Engine supports for TDD ?

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=0

exec InsertIntoQuestion @text="Is ViewBag slower than ViewData in MVC?

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=0


exec InsertIntoQuestion @text="ViewData is faster than ViewBag in MVC.

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=0

exec InsertIntoQuestion @text="We can use reserved keywords as identifiers in C# by prefixing them with @ character?

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=0

exec InsertIntoQuestion @text="C# supports multiple inheritance.

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="b",@Cid=0

-----------------------------------------------------------------------------------------------------
/*MCQ Angular*/
exec InsertIntoQuestion @text="Which of the following is true about $routeProvider? a)It is a component b)It is a service c)It is a module d)None of the above"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=1
exec InsertIntoQuestion @text="Which of the following is an acceptable AngularJS expression?
a){(7+5)}
b){7+5}
c){{7+5}}
d)None of the above"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=1

exec InsertIntoQuestion @text="Which architectures does angular use?
a) Components Based Architecture
b) MVVM
c) MVC
d) All of the above"
						,@type="MCQ" ,@ModelAnswer="d",@Cid=1

exec InsertIntoQuestion @text="Which type of binding uses the banana box
a)Interpolation Binding
b)Property Binding
c)Two way Binding
d)Directive Binding"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=1

exec InsertIntoQuestion @text="AngularJS is perfect for
a)Create Web Services
b)Create SPA
c)Creating a Desktop Application
d)None of these"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=1

exec InsertIntoQuestion @text="Which prefix is used with the AngularJS directives?
a) aj-
b) ng-
c) ag-
d) All of the above"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=1

exec InsertIntoQuestion @text="AngularJS is perfect for?
a) SPAs
b) MPAs
c) DPAs
d) CPAs"
						,@type="MCQ" ,@ModelAnswer="a",@Cid=1

exec InsertIntoQuestion @text="Which of the following is not a valid AngularJS filter?
a) lowercase
b) orderby
c) email
d) currency"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=1

exec InsertIntoQuestion @text="Which directive is used to bind the value of HTML controls to application data?
a) ng-app
b) ng-init
c) ng-model
d) ng-hide"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=1

exec InsertIntoQuestion @text="Which community Angular JS belong to?
a) Twitter
b) Facebook
c) Google
d) Microsoft"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=1

exec InsertIntoQuestion @text="How many $RootScope an AngularJS application can have?
a) Zero
b) One
c) Two
d) Infinity"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=1

exec InsertIntoQuestion @text="Which components can be injected as a dependency in AngularJS?
a) Value
b) Factory
c) Constant
d) Application Module"
						,@type="MCQ" ,@ModelAnswer="d",@Cid=1

/*True & False Angular*/
exec InsertIntoQuestion @text="In AngularJS, the $http service is used to make an Ajax call to the server.
a) True
b) False"
						,@type="tf" ,@ModelAnswer="a",@Cid=1

exec InsertIntoQuestion @text="AngularJS facilitates developers to write less code and get more functionality.

a) True
b) False"
						,@type="tf" ,@ModelAnswer="a",@Cid=1

exec InsertIntoQuestion @text="While using the factory method, we must first define a factory and then assign a method to it.

a) True
b) False"
						,@type="tf" ,@ModelAnswer="a",@Cid=1

exec InsertIntoQuestion @text="OrderBy filter is applied to an expression using pipe character.

a) True
b) False"
						,@type="tf" ,@ModelAnswer="a",@Cid=1

exec InsertIntoQuestion @text="AngularJS application expressions are pure Java expressions.

a) True
b) False"
						,@type="tf" ,@ModelAnswer="b",@Cid=1

exec InsertIntoQuestion @text="AngularJS support two-way data binding.

a) True
b) False"
						,@type="tf" ,@ModelAnswer="a",@Cid=1

exec InsertIntoQuestion @text="AngularJS doesn't support internationalization?

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="b",@Cid=1


------------------------------------------------------------------------------------------------------------
/*MCQ SQL*/
exec InsertIntoQuestion @text=" Which of the following is not a valid SQL type?

a)FLOAT
b)NUMERIC
c)DECIMAL
d)CHARACTER"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=2

exec InsertIntoQuestion @text="Which statement is used to delete all rows in a table without having the action logged?
a)DELETE
b)REMOVE
c)DROP
d)TRUNCATE"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="Which of the following is not a DDL command?
a)TRUNCATE
b)ALTER
c)CREATE
d)UPDATE"
						,@type="MCQ" ,@ModelAnswer="d",@Cid=2

exec InsertIntoQuestion @text="SQL Views are also known as

a)Simple tables
b)Virtual tables
c)Complex tables
d)Actual Tables"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="How many Primary keys can have in a table?

a)Only 1
b)Only 2
c)Depends on no of Columns
d)Depends on DBA"
						,@type="MCQ" ,@ModelAnswer="a",@Cid=2

exec InsertIntoQuestion @text="Which datatype can store unstructured data in a column?

a)CHAR
b)RAW
c)NUMERIC
d)VARCHAR"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="Which of the following is not Constraint in SQL?

a)Primary Key
b)Not Null
c)Check
d)Union"
						,@type="MCQ" ,@ModelAnswer="d",@Cid=2

exec InsertIntoQuestion @text="Which of the following is not a valid aggregate function?

a)COUNT
b)COMPUTE
c)SUM
d)MAX"
						,@type="MCQ" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="Which data manipulation command is used to combines the records from one or more tables?
a)SELECT
b)PROJECT
c)JOIN
d)PRODUCT"
						,@type="MCQ" ,@ModelAnswer="c",@Cid=2

exec InsertIntoQuestion @text="Which operator is used to compare a value to a specified list of values?

a)ANY
b)BETWEEN
c)ALL
d)IN"
						,@type="MCQ" ,@ModelAnswer="d",@Cid=2

exec InsertIntoQuestion @text="Which operator is used to compare a value to a specified list of values?

a)ANY
b)BETWEEN
c)ALL
d)IN"
						,@type="MCQ" ,@ModelAnswer="d",@Cid=2

/*True and False SQL*/
exec InsertIntoQuestion @text="It is mandatory to define constraint for each attribute of a table.

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="Each table can contain more than one primary key.

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="Unique constraints ensures that all the values in a column are distinct/unique.
a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=2

exec InsertIntoQuestion @text="The result of a SELECT statement can contain duplicate rows.  

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=2

exec InsertIntoQuestion @text="Primary Key does allow the Null Values. where as in Unique key doesn't accept the Null values

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="A NULL value is treated as a blank or zero.
a) True
b) False
"
						,@type="tf" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="By default, each attribute can take NULL values except for the primary key.

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=2

exec InsertIntoQuestion @text="A relation may have multiple foreign keys.

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=2

exec InsertIntoQuestion @text="Each foreign key is defined on a multiple attribute.

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="b",@Cid=2

exec InsertIntoQuestion @text="We can use DROP statement to remove a database or table permanently from the system.

a) True
b) False
"
						,@type="tf" ,@ModelAnswer="a",@Cid=2

exec InsertIntoQuestion @text="We can insert two records with same roll number in a table if roll is assigned as primary key.
a) True
b) False
"
						,@type="tf" ,@ModelAnswer="b",@Cid=2

