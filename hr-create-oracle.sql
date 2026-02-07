-- ********************************************************************
-- Script para criar o schema/usuário HR no Autonomous Database
-- Execute este script como usuário ADMIN
-- ********************************************************************

-- Criar o usuário HR com senha Welcome123456
-- Nota: Autonomous Database exige:
--   - Mínimo 12 caracteres
--   - Não pode conter o nome do usuário (hr)
CREATE USER hr IDENTIFIED BY "Welcome123456";

-- Conceder privilégios necessários ao usuário HR
GRANT CONNECT TO hr;
GRANT RESOURCE TO hr;
GRANT CREATE VIEW TO hr;
GRANT CREATE SEQUENCE TO hr;
GRANT CREATE TRIGGER TO hr;
GRANT CREATE PROCEDURE TO hr;
GRANT UNLIMITED TABLESPACE TO hr;

-- Opcional: Conceder privilégios adicionais se necessário
-- GRANT CREATE SESSION TO hr;
-- GRANT CREATE TABLE TO hr;

COMMIT;

SELECT 'Usuário HR criado com sucesso!' AS status FROM dual;
SELECT 'Username: hr' AS credenciais FROM dual;
SELECT 'Password: Welcome123456' AS senha FROM dual;