package Controllers;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import utils.Constants;
import static utils.Constants.UPLOAD_DIRECTORY;

@WebServlet(urlPatterns = {"/multiPartServlet" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class MultiPartServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String getFileName(Part part) {
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename"))
				return content.substring(content.indexOf("=") + 2, content.length() - 1);
		}
		return Constants.DEFAULT_FILENAME;

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uploadPath = File.separator + UPLOAD_DIRECTORY; // upload vào thư mục bất kỳ
		// String uploadPath = getServletContext().getRealPath("") + File.separator +//
		// UPLOAD_DIRECTORY; //upload vào thư mục project
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists())
			uploadDir.mkdir();
		try {
			String fileName = "";
			for (Part part : req.getParts()) {
				fileName = getFileName(part);
				part.write(uploadPath + File.separator + fileName);
			}
			req.setAttribute("message", "File " + fileName + " has uploaded successfully!");
		} catch (FileNotFoundException fne) {
			req.setAttribute("message", "There was an error: " + fne.getMessage());
		}
		// Chuyển hướng đến trang kết quả
		getServletContext().getRequestDispatcher("/result.jsp").forward(req, resp);
	}
}
