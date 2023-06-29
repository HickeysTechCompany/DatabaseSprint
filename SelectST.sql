-- Retrieve appointment details along with associated customer information
SELECT Appointments.AppointmentID, Appointments.AppointmentDate, Appointments.AppointmentTime, Customers.Name, Customers.Email
FROM Appointments
JOIN Customers ON Appointments.CustomerID = Customers.CustomerID;

-- Retrieve clinic name and location for each appointment
SELECT Appointments.AppointmentID, Appointments.AppointmentDate, Appointments.AppointmentTime, Clinics.ClinicName, Clinics.Location
FROM Appointments
JOIN Clinics ON Appointments.ClinicID = Clinics.ClinicID;

-- Retrieve book details and associated genre for each appointment
SELECT Appointments.AppointmentID, Appointments.AppointmentDate, Appointments.AppointmentTime, Books.Title, Books.Genre
FROM Appointments
JOIN Books ON Appointments.BookID = Books.BookID;

-- Retrieve customer name, appointment date, and book title for each appointment
SELECT Customers.Name, Appointments.AppointmentDate, Books.Title
FROM Appointments
JOIN Customers ON Appointments.CustomerID = Customers.CustomerID
JOIN Books ON Appointments.BookID = Books.BookID;

-- Retrieve customer name and associated book titles from the CustomerBooks table
SELECT Customers.Name, Books.Title
FROM CustomerBooks
JOIN Customers ON CustomerBooks.CustomerID = Customers.CustomerID
JOIN Books ON CustomerBooks.BookID = Books.BookID;
