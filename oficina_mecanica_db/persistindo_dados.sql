show TABLEs;

-- PERSISTIDO DADOS:

-- clients
SELECT * from clients;
INSERT INTO clients (name, phone, address) VALUES 
                    ('John Doe', '1234567890', '123 Main St'),
                    ('Jane Smith', '0987654321', '456 Elm St'),
                    ('Alice Johnson', '5551234567', '789 Oak St'),
                    ('Bob Brown', '4449876543', '321 Pine St'),
                    ('Charlie Davis', '3335678901', '654 Maple St'),
                    ('Diana Evans', '2226789012', '987 Cedar St');

-- automobile
SELECT * from automobile;
INSERT INTO automobile (auto_client_id, model, year, color, placa, state) VALUES 
                    (1, 'Toyota Corolla', 2015, 'Blue', 'ABC1234', 'Good'),
                    (2, 'Honda Civic', 2018, 'Red', 'DEF5678', 'Excellent'),
                    (3, 'Ford Focus', 2012, 'Black', 'GHI9012', 'Fair'),
                    (4, 'Chevrolet Malibu', 2020, 'White', 'JKL3456', 'New'),
                    (5, 'Nissan Altima', 2016, 'Gray', 'MNO7890', 'Good'),
                    (6, 'Volkswagen Jetta', 2014, 'Silver', 'PQR2345', 'Fair');

-- mechanics
SELECT * from mechanics;
INSERT INTO mechanics (name, specialty, phone) VALUES 
                    ('Mike Thompson', 'Engine Specialist', '1112223333'),
                    ('Sara Wilson', 'Transmission Expert', '4445556666'),
                    ('Tom Harris', 'Brake Specialist', '7778889999'),
                    ('Linda Martinez', 'Electrical Systems', '0001112222'),
                    ('James Clark', 'General Mechanic', '3334445555');

-- agenda
SELECT * from agenda;
INSERT INTO agenda (agenda_auto_id, agenda_mechanic_id, start_date, service_description) VALUES 
                    (1, 1, '2024-07-01 09:00:00', 'Oil Change'),
                    (2, 2, '2024-07-02 10:30:00', 'Transmission Check'),
                    (3, 3, '2024-07-03 11:15:00', 'Brake Inspection'),
                    (4, 4, '2024-07-04 13:00:00', 'Electrical System Diagnosis'),
                    (5, 5, '2024-07-05 14:45:00', 'General Maintenance'),
                    (6, 1, '2024-07-06 15:30:00', 'Tire Rotation');

-- service_order
SELECT * from service_order;
INSERT INTO service_order (order_agenda_id, date_opened, estimated_completion_date, status) VALUES 
                            (1, '2024-07-01 09:00:00', '2024-07-01 12:00:00', 'COMPLETED'),
                            (2, '2024-07-02 10:30:00', '2024-07-02 14:00:00', 'COMPLETED'),
                            (3, '2024-07-03 11:15:00', '2024-07-03 15:30:00', 'IN_PROGRESS'),
                            (4, '2024-07-04 13:00:00', '2024-07-04 16:00:00', 'PENDING'),
                            (5, '2024-07-05 14:45:00', '2024-07-05 18:00:00', 'PENDING'),
                            (6, '2024-07-06 15:30:00', '2024-07-06 19:35:39', 'CANCELLED');

-- payments
SELECT * from payments;
INSERT INTO payments (payment_order_id, amount, payment_date, payment_method) VALUES 
                        (1, 79.99, '2024-07-01 12:30:00', 'CREDIT_CARD'),
                        (2, 249.50, '2024-07-02 14:30:00', 'DEBIT_CARD'),
                        (3, 150.00, '2024-07-03 16:00:00', 'CASH'),
                        (4, 300.75, '2024-07-04 16:30:00', 'BANK_TRANSFER'),
                        (5, 120.00, '2024-07-05 18:15:00', 'PIX');

-- services
SELECT * from services;
INSERT INTO services (description, value) VALUES 
                    ('Oil Change', 79.99),
                    ('Transmission Check', 249.50),
                    ('Brake Inspection', 150.00),
                    ('Electrical System Diagnosis', 300.75),
                    ('General Maintenance', 120.00),
                    ('Tire Rotation', 89.99);

-- services_order_service
SELECT * from services_order_service;
INSERT INTO services_order_service (os_order_id, os_service_id, quantity) VALUES 
                                    (1, 1, 1),
                                    (2, 2, 1),
                                    (3, 3, 1),
                                    (4, 4, 1),
                                    (5, 5, 1),
                                    (6, 6, 1);

insert into clients (name, phone, address) values ('Weliton Silva', '2199999999', 'Rua A, 123, Rio de Janeiro, RJ');
INSERT INTO automobile (auto_client_id, model, year, color, placa, state) VALUES (7, 'Nissan Skyline GT-R R34', 2002, 'Blue', 'XYZ1234', 'Excellent');