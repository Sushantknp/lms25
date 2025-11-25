
package com.utils;

import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;

public class UploadUtil {

    public static String saveFile(Part part, String uploadPath)  {

        try {
            String fileName = part.getSubmittedFileName();
            
            // Create uploads directory if not exist
            File fileDir = new File(uploadPath);
            if (!fileDir.exists()) {
                fileDir.mkdirs();
            }
            
            // Path where file will be stored
            String filePath = uploadPath + File.separator + fileName;
            
            // Save file on server
            part.write(filePath);
            
            return fileName;
        } catch (IOException ex) {
            System.getLogger(UploadUtil.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
        
        return null;
    }
}

