package servlet;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.descriptor.*;
//import javax.servlet.jsp.*;
//import javax.servlet.resources.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@SuppressWarnings("serial")
public class Upload extends HttpServlet {
    @SuppressWarnings("unchecked")
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String savePath = this.getServletConfig().getServletContext()
                .getRealPath("");
        //savePath = savePath + "/uploads/";
		savePath= savePath + File.separator + request.getParameter("folder");
        File f1 = new File(savePath);
        System.out.println(savePath);
        if (!f1.exists()) {
            f1.mkdirs();
        }
        DiskFileItemFactory fac = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(fac);
        upload.setHeaderEncoding("utf-8");
        List fileList = null;
        try {
            fileList = upload.parseRequest(request);
        } catch (FileUploadException ex) {
            return;
        }
        Iterator<FileItem> it = fileList.iterator();
        String name = "";
        String extName = "";
        while (it.hasNext()) {
            FileItem item = it.next();
            if (!item.isFormField()) {
                name = item.getName();
                long size = item.getSize();
                String type = item.getContentType();
                System.out.println(size+"字节" + " " + type);
                if (name == null || name.trim().equals("")) {
                    continue;
                }
                //扩展名格式：  
                //if (name.lastIndexOf(".") >= 0) {
                 //   extName = name.substring(name.lastIndexOf("."));
                //}
                File file = null;
                do {
                    //生成文件名：
                    //name = UUID.randomUUID().toString();
                    //file = new File(savePath + name + extName);
					file = new File(savePath + name);
                } while (file.exists());
                //File saveFile = new File(savePath + name + extName);
				File saveFile = new File(savePath+ File.separator + name);
                try {
                    item.write(saveFile);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        response.getWriter().print(name + extName);
		//HttpSession session=request.getRequestedSessionId();
		//session.setAttribute("dataid",new String("sdkajfhkasjhfksadhfkjasdhfsongbaoxingsongbaoxingsongbaoxing"));  
    }
}