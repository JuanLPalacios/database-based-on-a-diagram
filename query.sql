SELECT id, total_amount FROM invoices;

SELECT id, name FROM patients;

SELECT * FROM medical_histories WHERE patient_id=(SELECT id FROM patients WHERE name='Victor Peralta G.');

SELECT name, type FROM treatments;

SELECT * FROM invoice_items WHERE invoice_id=1;