package br.com.academiajava.tools.db.generator;

import java.io.IOException;

import br.com.academiajava.tools.db.generator.utils.ReadFromFile;
import br.com.academiajava.tools.db.generator.utils.ReadFromFileCitiesImpl;
import br.com.academiajava.tools.db.generator.utils.ReadFromFileStateImpl;

public class DSLMainApplication {
	public static void main(String[] args) throws IOException {
		String path = System.getProperty("user.dir");
		
		// Load States
		
//		String csvFile = path + "/src/main/resources/states.csv";
//		String fileName = path + "/src/main/resources/R__Load_State.sql";
//		ReadFromFile reader = new ReadFromFileStateImpl();
		
		// Load Cities
		String csvFile = path + "/src/main/resources/cities.csv";
		String fileName = path + "/src/main/resources/R__Load_City.sql";
		ReadFromFile reader = new ReadFromFileCitiesImpl();


		reader.generateScript(csvFile, fileName);

	}
}
