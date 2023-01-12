package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;
import member.Member;

//http://localhost:8080/jsp/member/index

@WebServlet("/member/*")
public class MemberController extends MskimRequestMapping {
	@RequestMapping("index")
	public String index(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("request ok");
		return "/index.jsp";
	}
	
	@RequestMapping("joinForm")
	public String joinForm(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("request ok");
		return "/view/joinForm.jsp";
	}
	@RequestMapping("joinPro")
	public String joinPro(HttpServletRequest request, HttpServletResponse response)throws Exception {
		System.out.println("joinPro");
		
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setPass(request.getParameter("pass"));
		member.setName(request.getParameter("name"));
		member.setGender(Integer.parseInt(request.getParameter("gender")));
		member.setTel(request.getParameter("tel"));
		member.setEmail(request.getParameter("email"));

		Class.forName("oracle.jdbc.OracleDriver");//2
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kic","1111");//(url,username,password) database연결
		PreparedStatement pstmt = conn.prepareStatement("insert into member values (?,?,?,?,?,?,?)"); //4. sql전달, result 받는다

		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getPass());
		pstmt.setString(3, member.getName());
		pstmt.setInt(4, member.getGender());
		pstmt.setString(5, member.getTel());
		pstmt.setString(6, member.getEmail());
		pstmt.setString(7, "");

		int count = pstmt.executeUpdate();
		request.setAttribute("count",count);
		request.setAttribute("member",member);
		System.out.println(count + "insert 했습니다.");
		
		return "/view/joinPro.jsp";

	}

}
