package com.yeogil.web.controller;

import java.io.IOException;
import java.util.Locale;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@GetMapping(value = "/")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "index";
	}
	
	private final static String USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36";
	@GetMapping(value = "/crawling")
	public static void main(String[] args) {
        try {
            // 1. URL 선언
            String connUrl = "http://map.daum.net";
            
            // 2. HTML 가져오기
            Connection conn = Jsoup
                    .connect(connUrl)
                    .header("Content-Type", "application/json;charset=UTF-8")
                    .userAgent(USER_AGENT)
                    .method(Connection.Method.GET)
                    .ignoreContentType(true);
            
            Document doc = conn.get();
            
            // 3. 가져온 HTML Document 를 확인하기
            System.out.println(doc.toString());
            
        } catch (IOException e) {
            // Exp : Connection Fail
            e.printStackTrace();
        }
	}
	
}
