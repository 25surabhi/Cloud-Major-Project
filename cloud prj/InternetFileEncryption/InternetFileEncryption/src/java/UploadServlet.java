
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Nitin
 */
public class UploadServlet extends HttpServlet {

    String key = "squirrel123"; // needs to be at least 8 characters for DES

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String contentType = request.getContentType();

        if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
            DataInputStream in = new DataInputStream(request.getInputStream());
            //we are taking the length of Content type data
            int formDataLength = request.getContentLength();
            byte dataBytes[] = new byte[formDataLength];
            int byteRead = 0;
            int totalBytesRead = 0;
            //this loop converting the uploaded file into byte code
            while (totalBytesRead < formDataLength) {
                byteRead = in.read(dataBytes, totalBytesRead,
                        formDataLength);
                totalBytesRead += byteRead;
            }

            String file = new String(dataBytes);
            //for saving the file name
            String saveFile = file.substring(file.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1,
                    contentType.length());
            int pos;
            //extracting the index of file
            pos = file.indexOf("filename=\"");
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;

            System.out.println(saveFile);

            int boundaryLocation = file.indexOf(boundary, pos) - 4;
            int startPos = ((file.substring(0, pos)).getBytes()).length;
            int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            // creating a new file with the same name and writing the
//content in new file
            System.out.println(saveFile);
            System.out.println(dataBytes);
            System.out.println(startPos);

            System.out.println("right here");

            File savingFile = new File(getServletContext().getRealPath("/uploads"), saveFile);
            FileOutputStream fileOut = new FileOutputStream(savingFile);
            fileOut.write(dataBytes, startPos, (endPos - startPos));
            fileOut.flush();
            fileOut.close();

            String q = savingFile.getName();
            String qq = q.substring(0, q.lastIndexOf("."));
            String ext = q.substring(q.lastIndexOf("."));

            try {
                DESFile.encrypt(key, new FileInputStream(savingFile), new FileOutputStream(new File(getServletContext().getRealPath("/uploads"), qq + "_encrypt" + ext)));
                //                FileRSA.RSA_Encrypt(savingFile, qq + "_encrypt." + ext);
            } catch (Throwable ex) {
                Logger.getLogger(UploadServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

            RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
            request.setAttribute("message", "File Uploaded Successfully");
            rd.forward(request, response);
        }
    }
}
