package br.com.academiajava.tools.db.generator.utils;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

import br.com.academiajava.tools.db.generator.constants.FileGeneratorOptions;

public class ReadFromFileStateImpl implements ReadFromFile {

	public void generateScript(String filePath, String scriptPath) {
		BufferedReader br = null;

		try {

			String line = "";
			String cvsSplitBy = ",";

			String str = FileGeneratorOptions.TemplateState;
			String main = "";

			br = new BufferedReader(new FileReader(filePath));
			while ((line = br.readLine()) != null) {
				String repetitionBlock = FileGeneratorOptions.TemplateStateMain;
				// use comma as separator
				String[] state = line.split(cvsSplitBy);
				repetitionBlock = repetitionBlock.replace("${uuid}", state[0]);
				repetitionBlock = repetitionBlock.replace("${name}", state[1]);
				repetitionBlock = repetitionBlock.replace("${country_id}", state[2]);

				System.out.println("State [uuid= " + state[0] + " , name=" + state[1] + "]");
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
