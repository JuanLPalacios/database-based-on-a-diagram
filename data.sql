
INSERT INTO patients (name, date_of_birth) VALUES 
('Victor Peralta G.', '1972-04-28'),
('Alejandra Peralta', '1997-4-26');

INSERT INTO medical_histories (patient_id, admitted_at ,status ) VALUES
(
  (SELECT id FROM patients WHERE name='Victor Peralta G.'),
  '2022-05-03 19:00:16',
  'discharged'
);

INSERT INTO invoices (total_amount, generated_at, payed_at, medical_history__id) VALUES
(1500.00,'2022-05-03 19:00:16', '2022-05-03 19:00:50 ', 1);

INSERT INTO treatments (type, name) VALUES
('Surgery', 'General Surgery'),
('Radiation', 'Cancer radiation'),
('Biological', 'Cancer biological'),
('Hormonal', 'Cancer hormonal');

INSERT INTO invoice_items (unit_price, quantity, total_price,invoice_id, treatment_id) VALUES
(150.00,10,1500.00,1,1);

INSERT INTO medical_history_items (medical_history__id, treatment_id) VALUES
(1,1);