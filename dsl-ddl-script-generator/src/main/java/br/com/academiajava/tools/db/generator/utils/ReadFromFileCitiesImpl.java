package br.com.academiajava.tools.db.generator.utils;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

import br.com.academiajava.tools.db.generator.constants.FileGeneratorOptions;

public class ReadFromFileCitiesImpl implements ReadFromFile {

	public void generateScript(String filePath, String scriptPath) {
		BufferedReader br = null;

		try {

			String line = "";
			String cvsSplitBy = ",";

			String str = FileGeneratorOptions.TemplateCity;
			String main = "";

			br = new BufferedReader(new FileReader(filePath));
			while ((line = br.readLine()) != null) {
				String repetitionBlock = FileGeneratorOptions.TemplatCityMain;
				// use comma as separator
				String[] city = line.split(cvsSplitBy);
				repetitionBlock = repetitionBlock.replace("${uuid}", city[0]);
				repetitionBlock = repetitionBlock.replace("${name}", city[1].replace("D'", "D''").replace("d'", "d''").replace("Sant'", "Sant''"));
				repetitionBlock = repetitionBlock.replace("${state_id}", city[2]);

				System.out.println("City [uuid= " + city[0] + " , name=" + city[1] + "]");
				main += repetitionBlock;
			}

			str = str.replace("${main}", main).replace("\'\"", "\'").replace("\"\'", "\'");
			FileOutputStream outputStream = new FileOutputStream(scriptPath);
			byte[] strToBytes = str.getBytes();
			outputStream.write(strToBytes);

			outputStream.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
