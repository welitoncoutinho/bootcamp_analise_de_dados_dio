
-- QUEREIS DE EXEMPLO:
--qual o nome e o modelo do carro de cada cliente
SELECT c.name, a.model from automobile a INNER join clients c on auto_client_id = client_id;

--quais os serviços realizados por cada mecânica
SELECT m.name, s.description, m.specialty from agenda a INNER join mechanics m on a.agenda_mechanic_id = m.mechanic_id 
                        INNER JOIN service_order so on a.agenda_id = so.order_agenda_id
                        INNER JOIN services_order_service sos on so.order_id = sos.os_order_id
                        INNER JOIN services s on sos.os_service_id = s.service_id;


--qual o total pago por cada cliente
SELECT c.name, SUM(p.amount) as total_paid from clients c 
    INNER JOIN automobile a on c.client_id = a.auto_client_id
    INNER JOIN agenda ag on a.automobile_id = ag.agenda_auto_id
    INNER JOIN service_order so on ag.agenda_id = so.order_agenda_id
    INNER JOIN payments p on so.order_id = p.payment_order_id
    GROUP BY c.name;

--quais os carros que estão em bom estado
select * from automobile WHERE state = 'Good' OR state = 'Excellent';

--quais os mecânicos que realizaram serviços para o cliente 'John Doe'
select c.name, m.name from agenda a inner JOIN mechanics m on a.agenda_mechanic_id = m.mechanic_id 
                    INNER JOIN automobile au on a.agenda_auto_id = au.automobile_id
                    INNER JOIN clients c on au.auto_client_id = c.client_id
                    WHERE c.name = 'John Doe';


-- Exiba todas as ordens de serviço com status “IN_PROGRESS”.

select so.date_opened, so.estimated_completion_date, au.model, a.service_description from service_order so INNER join agenda a on a.agenda_id = so.order_agenda_id 
                                INNER join automobile au on au.automobile_id = a.agenda_auto_id 
                                where au.year = 'COMPLETED';


-- Mostre os pagamentos realizados via PIX.

select name, amount from payments INNER join service_order so on payments.payment_order_id = so.order_id
                        INNER join agenda a on so.order_agenda_id = a.agenda_id
                        INNER join automobile au on a.agenda_auto_id = au.automobile_id
                        INNER JOIN clients c on au.auto_client_id = c.client_id
where payment_method = 'PIX';

-- Exiba as ordens de serviço concluídas, mostrando o valor total da OS e o total pago, exibindo apenas aquelas em que o valor pago é inferior ao valor total

select so.status, s.`value`*sos.quantity valor_total, p.amount valor_pago FROM service_order so 
                        inner join services_order_service sos on so.order_id = sos.os_order_id
                        inner join services s on sos.os_service_id = s.service_id
                        inner join payments p on so.order_id = p.payment_order_id
                        where so.status = 'COMPLETED'
                        HAVING valor_pago < valor_total;