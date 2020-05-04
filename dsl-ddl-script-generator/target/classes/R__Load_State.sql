CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
DO $$
DECLARE

	error_message text;
	error_detail text;
	v_id varchar;
	v_country_id varchar;
	v_name varchar;

BEGIN
	RAISE NOTICE 'State Load Script - Start of Execution';

	-- State 'RO' - Start

	v_id = 'e862a6c5-8387-4a93-8722-cf7bba04f5dc';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'RO';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'RO' - End

	-- State 'AC' - Start

	v_id = '8bb68aa4-d529-4450-9a88-e5d47558c8ff';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'AC';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'AC' - End

	-- State 'AM' - Start

	v_id = '249bba90-a471-4976-a9cf-579864daf5fe';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'AM';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'AM' - End

	-- State 'RR' - Start

	v_id = 'be938c55-c4da-477f-82e5-c54c280743fd';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'RR';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'RR' - End

	-- State 'PA' - Start

	v_id = '44e11893-8f52-448c-a48c-11165694c62b';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'PA';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'PA' - End

	-- State 'AP' - Start

	v_id = 'dd21851c-52ff-4934-9ae3-3718ab697416';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'AP';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'AP' - End

	-- State 'TO' - Start

	v_id = '077158ad-1694-4126-9d01-95edc1bf9236';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'TO';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'TO' - End

	-- State 'MA' - Start

	v_id = '4c52a574-40b5-441a-a696-837dae20e74b';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'MA';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'MA' - End

	-- State 'PI' - Start

	v_id = 'b979315b-9a4e-44fb-91b0-4a8e1658c0c2';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'PI';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'PI' - End

	-- State 'CE' - Start

	v_id = 'd7b06abb-d817-4281-99f8-24207bccd57f';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'CE';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'CE' - End

	-- State 'RN' - Start

	v_id = '019bfe76-d10a-4080-a9dd-4f2d83542d55';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'RN';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'RN' - End

	-- State 'PB' - Start

	v_id = '8c9c9e3b-a76b-44b6-970c-010888e058df';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'PB';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'PB' - End

	-- State 'PE' - Start

	v_id = '86ae696c-de9b-4f1d-b725-489326c1d395';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'PE';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'PE' - End

	-- State 'AL' - Start

	v_id = 'cb887d5a-4d59-4326-bf9f-7aa88775a7ab';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'AL';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'AL' - End

	-- State 'SE' - Start

	v_id = '37ba317e-b357-4682-a578-2e9d61124efa';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'SE';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'SE' - End

	-- State 'BA' - Start

	v_id = '30d889c2-c03b-4ff7-83e8-3633e1bc81a2';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'BA';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'BA' - End

	-- State 'MG' - Start

	v_id = '5ae7a5e4-8274-46ca-b8b4-4694eae2d0d3';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'MG';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'MG' - End

	-- State 'ES' - Start

	v_id = '797a1a54-1046-4f22-8e39-28e3b05510cb';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'ES';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'ES' - End

	-- State 'RJ' - Start

	v_id = '49efad8f-375f-405b-9fd3-a13abc5191d8';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'RJ';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'RJ' - End

	-- State 'SP' - Start

	v_id = '39c6c5cc-de02-48f3-a107-f37f5f3763fc';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'SP';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'SP' - End

	-- State 'PR' - Start

	v_id = '051a3d08-ec65-4c41-98f9-3d8bcd25dea3';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'PR';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'PR' - End

	-- State 'SC' - Start

	v_id = 'd7305969-1b5d-4937-92de-94d368549bc1';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'SC';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'SC' - End

	-- State 'RS' - Start

	v_id = '1406274c-e32b-4dfb-91fd-6fdac3c86725';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'RS';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'RS' - End

	-- State 'MS' - Start

	v_id = 'db10bad7-57b0-4452-b73a-ae7fa2027ac5';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'MS';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'MS' - End

	-- State 'MT' - Start

	v_id = 'fcf217be-b25a-4dfe-bddc-e125134d8263';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'MT';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'MT' - End

	-- State 'GO' - Start

	v_id = '9bb7a2cc-af30-4f68-af05-9c6427090f85';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'GO';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'GO' - End

	-- State 'DF' - Start

	v_id = 'f760fbd3-e3b8-4177-924b-39cadfd8e087';
	v_country_id = '48f10d94-384e-4f42-a431-ca89c1edcd4b';
	v_name = 'DF';
	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN
		BEGIN
			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)
			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);
			RAISE NOTICE 'State "% - % - %" created!', v_id, v_name, v_country_id;
		EXCEPTION
			WHEN OTHERS THEN
				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;
				RAISE NOTICE 'State "% - % - %" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;
		END;
	END IF;

	-- State 'DF' - End


	RAISE NOTICE 'State Load Script - End of Execution';
END $$;