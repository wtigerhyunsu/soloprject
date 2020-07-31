package top.controller;

import java.io.FileOutputStream;

import org.springframework.web.multipart.MultipartFile;

public class Util {
	
	public static void saveFile(MultipartFile mf) {
		//���� ��� �ٲ���� �� 
		System.out.println("int to saveFile");
		String dir = "C:\\security\\top\\web\\img\\";
		byte [] data;
		System.out.println(mf.getOriginalFilename());
		String imgname = mf.getOriginalFilename();
		try {
			data = mf.getBytes();
			FileOutputStream fo = 
					new FileOutputStream(dir+imgname);
			fo.write(data);
			fo.close();
		}catch(Exception e) {
			
		}
		
	}
	

}
