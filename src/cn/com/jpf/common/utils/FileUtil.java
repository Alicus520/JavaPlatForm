package cn.com.jpf.common.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public final class FileUtil {
	
	public static String compressFiles(List<File> fileList, String zipFilePath){
		int BUFFER = 2048;
		BufferedInputStream origin = null;
		ZipOutputStream zipOut =  null;
		try{
			FileOutputStream zipFileOut = new FileOutputStream(zipFilePath);
			zipOut = new ZipOutputStream(new BufferedOutputStream(zipFileOut));
			byte data[] = new byte[BUFFER];
			if(fileList != null){
				for(File file : fileList){
					FileInputStream fi = new FileInputStream(file);
					origin = new BufferedInputStream(fi,BUFFER);
					ZipEntry entry = new ZipEntry(file.getName());
					zipOut.putNextEntry(entry);
					@SuppressWarnings("unused")
					int count;
					while((count = origin.read(data, 0, BUFFER)) != -1){
						zipOut.write(data, 0, BUFFER);
					}
					zipOut.closeEntry();
					origin.close();
				}
			}
		}catch (IOException e) {
			// TODO: handle exception
			
		}finally{
			try {
				if(origin != null){
					origin.close();
				}
				if(zipOut != null){
					zipOut.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return zipFilePath;
	}
}
