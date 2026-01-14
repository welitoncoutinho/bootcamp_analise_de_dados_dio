select * from productSeller;

select count(*) from clients;
select * from clients c, orders o where c.idClient = idOrderClient;

select Fname,Lname, idOrder, orderStatus from clients c, orders o where c.idClient = idOrderClient;
select concat(Fname,' ',Lname) as Client, idOrder as Request, orderStatus as Status from clients c, orders o where c.idClient = idOrderClient;

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values 
					(2, default,'compra via aplicativo',null,1);


select count(*) from clients c, orders o 
			where c.idClient = idOrderClient;

select * from orders;

-- recuperação de pedido com produto associado
select * from clients c 
				inner join orders o ON c.idClient = o.idOrderClient
                inner join productOrder p on p.idPOorder = o.idOrder
		group by idClient; 
        
-- Recuperar quantos pedidos foram realizados pelos clientes?
select c.idClient, Fname, count(*) as Number_of_orders from clients c 
				inner join orders o ON c.idClient = o.idOrderClient
		group by idClient; 


-- MY QUERIES --

-- Quantos pedidos foram feitos por cada cliente?

SELECT CONCAT(c.`Fname`, c.`Lname`), COUNT(o.`idOrder`) FROM clients c  INNER join orders o  on c.idClient = o.idOrderClient WHERE c.`idClient` = o.`idOrderClient` GROUP BY c.`idClient`;

SELECT * from orders

-- Algum vendedor também é fornecedor?

SELECT * FROM seller s where(SELECT `CNPJ` from supplier su WHERE su.`CNPJ` = s.`CNPJ`);

-- Relação de produtos fornecedores e estoques;
SELECT * FROM product p 
    LEFT JOIN productSupplier ps ON p.`idProduct` = ps.`idPsProduct` 
    LEFT JOIN supplier psu ON psu.`idSupplier` = ps.`idPsSupplier`
    LEFT JOIN productStorage pst on pst.`idProdStorage` = ps.`idPsProduct`
    LEFT join storagelocation sl on sl.`idLstorage` = pst.`idProdStorage`;


-- Relação de nomes dos fornecedores e nomes dos produtos;

SELECT s.`SocialName`, p.`Pname` from productsupplier ps
        cross join product p on p.`idProduct` = ps.`idPsProduct`
        cross join supplier s on s.`idSupplier` = ps.`idPsSupplier`;



-- items vedidos e quantidade:
SELECT p.`Pname`, `poQuantity` from productorder po INNER JOIN product p on p.`idProduct` = po.`idPOproduct`;

SELECT p.category, `poQuantity` from productorder po INNER JOIN product p on p.`idProduct` = po.`idPOproduct`;




show TABLES;

select * from product;