package com.softline.controller.common;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/common")
public class commonController {

	@RequestMapping("download")
	public ResponseEntity<byte[]> download(String _url, String _name,
			HttpServletRequest request) throws IOException {
		String nodepath = this.getClass().getClassLoader().getResource("/")
				.getPath();
		// 项目的根目录路径
		String filePath = File.separator
				+ nodepath.substring(1, nodepath.length() - 16);
		String path = filePath + _url;
		File file = new File(path);
		HttpHeaders headers = new HttpHeaders();

		String codedfilename = null;
		try {
			String agent = request.getHeader("USER-AGENT");
			if (null != agent && -1 != agent.indexOf("MSIE") || null != agent
					&& -1 != agent.indexOf("Trident")) {// ie

				String name = java.net.URLEncoder.encode(_name, "UTF8");

				codedfilename = name;
			} else if (null != agent && -1 != agent.indexOf("Mozilla")) {// 火狐,chrome等

				codedfilename = new String(_name.getBytes("UTF-8"),
						"iso-8859-1");
			}
//			String fileName = new String(_name.getBytes("UTF-8"), "iso-8859-1");// 为了解决中文名称乱码问题
			headers.setContentDispositionFormData("attachment", codedfilename);
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers, HttpStatus.OK);
	}
}
