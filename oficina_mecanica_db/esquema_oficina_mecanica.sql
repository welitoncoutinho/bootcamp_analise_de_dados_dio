create DATABASE auto_shop;
use auto_shop;

CREATE Table clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone CHAR(10) not null,
    address VARCHAR(255)
);

create table automobile(
    automobile_id INT PRIMARY KEY AUTO_INCREMENT,
    auto_client_id int,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(30),
    placa CHAR(7) UNIQUE NOT NULL,
    state VARCHAR(50),
    FOREIGN KEY (auto_client_id) REFERENCES clients(client_id)
);

CREATE table mechanics (
    mechanic_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    phone CHAR(11) not null
);

CREATE Table agenda(
    agenda_id INT PRIMARY KEY AUTO_INCREMENT,
    agenda_auto_id INT,
    agenda_mechanic_id INT,
    start_date DATETIME NOT NULL,
    service_description VARCHAR(255),
    FOREIGN KEY (agenda_auto_id) REFERENCES automobile(automobile_id),
    FOREIGN KEY (agenda_mechanic_id) REFERENCES mechanics(mechanic_id)
);

CREATE table service_order(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_agenda_id INT,
    date_opened DATETIME NOT NULL,
    estimated_completion_date DATETIME,
    status ENUM('PENDING', 'IN_PROGRESS', 'COMPLETED', 'CANCELLED') DEFAULT 'PENDING' NOT NULL,
    FOREIGN KEY (order_agenda_id) REFERENCES agenda(agenda_id)
);


create Table payments(
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_order_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATETIME NOT NULL,
    payment_method ENUM('CASH', 'CREDIT_CARD', 'DEBIT_CARD', 'BANK_TRANSFER', 'PIX') DEFAULT 'CREDIT_CARD' NOT NULL,
    FOREIGN KEY (payment_order_id) REFERENCES service_order(order_id)
);

create table services(
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    value DECIMAL(10, 2) NOT NULL
);

CREATE Table services_order_service(
    os_order_id INT,
    os_service_id INT,
    quantity INT DEFAULT 1,
    FOREIGN KEY (os_order_id) REFERENCES service_order(order_id),
    FOREIGN KEY (os_service_id) REFERENCES services(service_id),
    constraint pk_services_order_service PRIMARY KEY (os_order_id, os_service_id)
);