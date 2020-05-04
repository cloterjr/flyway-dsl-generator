package br.com.academiajava.tools.db.generator.constants;

public class FileGeneratorOptions {
	public static final String TemplateState = "CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\";\n" +
	"DO $$\n" +
	"DECLARE\n" +
	"\n" +
		"	error_message text;\n" +
		"	error_detail text;\n" +
		"	v_id varchar;\n" +
		"	v_country_id varchar;\n" +
		"	v_name varchar;\n" +
	"\n" + 
	"BEGIN\n" +
		"	RAISE NOTICE 'State Load Script - Start of Execution';\n\n" +
		"${main}\n" + 
		"	RAISE NOTICE 'State Load Script - End of Execution';\n" +
	"END $$;";
	
	public static final String TemplateStateMain = "	-- State '${name}' - Start\n\n" +
		"	v_id = '${uuid}';\n" + 
		"	v_country_id = '${country_id}';\n" +
		"	v_name = '${name}';\n" +
		"	IF NOT EXISTS (SELECT 1 FROM state WHERE state.id = v_id::uuid) THEN\n" +
			"		BEGIN\n" +  
				"			INSERT INTO state (id, created_at, deleted_at, updated_at, name, country_id)\n" +
				"			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_country_id::uuid);\n" + 
				"			RAISE NOTICE 'State \"% - % - %\" created!', v_id, v_name, v_country_id;\n" +
			"		EXCEPTION\n" + 
				"			WHEN OTHERS THEN\n" + 
					"				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;\n" +
					"				RAISE NOTICE 'State \"% - % - %\" not created - Error: % - %', v_id, v_name, v_country_id, error_message, error_detail;\n" + 
			"		END;\n" +
		"	END IF;\n\n" +
	"	-- State '${name}' - End\n\n";
	
	public static final String TemplateCity = "CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\";\n" +
	"DO $$\n" +
	"DECLARE\n" +
	"\n" +
		"	error_message text;\n" +
		"	error_detail text;\n" +
		"	v_id varchar;\n" +
		"	v_state_id varchar;\n" +
		"	v_name varchar;\n" +
	"\n" + 
	"BEGIN\n" +
		"	RAISE NOTICE 'City Load Script - Start of Execution';\n\n" +
		"${main}\n" + 
		"	RAISE NOTICE 'City Load Script - End of Execution';\n" +
	"END $$;";
	
	public static final String TemplatCityMain = "	-- City '${name}' - Start\n\n" +
		"	v_id = '${uuid}';\n" + 
		"	v_state_id = '${state_id}';\n" +
		"	v_name = '${name}';\n" +
		"	IF NOT EXISTS (SELECT 1 FROM city WHERE city.id = v_id::uuid) THEN\n" +
			"		BEGIN\n" +  
				"			INSERT INTO city (id, created_at, deleted_at, updated_at, name, state_id)\n" +
				"			VALUES(v_id::uuid, NOW(), null, NOW(), v_name, v_state_id::uuid);\n" + 
				"			RAISE NOTICE 'City \"% - % - %\" created!', v_id, v_name, v_state_id;\n" +
			"		EXCEPTION\n" + 
				"			WHEN OTHERS THEN\n" + 
					"				GET STACKED DIAGNOSTICS error_message = MESSAGE_TEXT, error_detail = PG_EXCEPTION_DETAIL;\n" +
					"				RAISE NOTICE 'City \"% - % - %\" not created - Error: % - %', v_id, v_name, v_state_id, error_message, error_detail;\n" + 
			"		END;\n" +
		"	END IF;\n\n" +
	"	-- City '${name}' - End\n\n";
}
