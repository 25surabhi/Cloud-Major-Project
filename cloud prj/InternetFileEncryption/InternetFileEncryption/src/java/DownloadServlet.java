
import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.servlet.ServletOutputStream;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Nitin
 */
public class DownloadServlet extends HttpServlet {

    String key = "squirrel123"; // needs to be at least 8 characters for DES

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        String filename = req.getParameter("filename");
        BufferedInputStream buf = null;
        ServletOutputStream myOut = null;

        try {

            myOut = response.getOutputStream();

            String qq = filename.substring(0, filename.lastIndexOf("."));
            String ext = filename.substring(filename.lastIndexOf("."));

            File encFile = new File(getServletContext().getRealPath("/uploads"), qq + "_encrypt" + ext);

            File myfile = new File(getServletContext().getRealPath("/uploads"), qq + "_decrypt" + ext);

            try {
                DESFile.decrypt(key, new FileInputStream(encFile), new FileOutputStream(myfile));
            } catch (Throwable ex) {
                Logger.getLogger(DownloadServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

            //set response headers
            response.setContentType("text/plain");
            response.addHeader(
                    "Content-Disposition", "attachment; filename=" + filename);

            response.setContentLength((int) myfile.length());

            FileInputStream input = new FileInputStream(myfile);
            buf = new BufferedInputStream(input);
            int readBytes = 0;

            //read from the file; write to the ServletOutputStream
            while ((readBytes = buf.read()) != -1) {
                myOut.write(readBytes);
            }
        } catch (IOException ioe) {
            throw new ServletException(ioe.getMessage());
        } finally {
            //close the input/output streams
            if (myOut != null) {
                myOut.close();
            }
            if (buf != null) {
                buf.close();
            }
        }
    }
}
