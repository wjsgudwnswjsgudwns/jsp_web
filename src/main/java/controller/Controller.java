package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.List;

import command.Command;
import command.LoginCommand;
import command.RegisterCommand;
import dao.BoardDao;
import dao.ContactDao;
import dao.MemberDao;
import dto.BoardDto;
import dto.ContactDto;
import dto.MemberDto;

@WebServlet("*.do")
public class Controller extends HttpServlet {

    public Controller() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI(); // jsp_mvcboard_20250819/boardList.do
		String conPath = request.getContextPath(); // jsp_mvcboard_20250819
		String comm = uri.substring(conPath.length()); // 최종 요청 값
		String viewPage = null;
		HttpSession session = null;
		BoardDao boardDao = new BoardDao();
		MemberDao memberDao = new MemberDao();
		Command command = null;
		ContactDao contactDao = new ContactDao();
		
		if(comm.equals("/index.do")) {
			viewPage = "index.jsp";
		} else if(comm.equals("/login.do")) {
			viewPage = "login.jsp";
		} else if(comm.equals("/loginok.do")) {
			String loginId = request.getParameter("userid");
			String loginPw = request.getParameter("password");
			System.out.println(loginId);
			System.out.println(loginPw);
			
			int loginFlag = memberDao.loginCheck(loginId, loginPw);
			if (loginFlag == 1) {
				session = request.getSession(); // session을 java에서 사용법
				session.setAttribute("sessionId", loginId); // 로그인 성공
				System.out.println("성공");
				
				MemberDto memberInfo = memberDao.getMemberInfo(loginId);
				session.setAttribute("loginUser", memberInfo);
				session.setAttribute("role", memberInfo.getRole());
			} else {
				System.out.println("실패");
			}
			
			
			viewPage = "index.jsp";
		} else if(comm.equals("/register.do")) {
			viewPage = "register.jsp";
		} else if(comm.equals("/registerOk.do")) {
			String memberid = request.getParameter("userid");
			String memberpw = request.getParameter("password");
			String membername = request.getParameter("name");
			String memberphone = request.getParameter("phone");
			String memberemail = request.getParameter("email");
			
			memberDao.registerMember(memberid, memberpw, membername, memberphone, memberemail);
			
			viewPage = "index.jsp";
		} else if(comm.equals("/music.do")) {
			String searchType = request.getParameter("searchType");
		    String searchKeyword = request.getParameter("searchKeyword");
		    int page = 1; 

		    if(request.getParameter("page") != null) { 
		        page = Integer.parseInt(request.getParameter("page"));
		    }

		    int totalBoardCount = 0; 
		    List<BoardDto> bDtos1 = new ArrayList<>();

		    if(searchType != null && searchKeyword != null && !searchKeyword.strip().isEmpty()) {
		        // ✅ 검색된 게시글 목록 & 개수
		        bDtos1 = boardDao.searchBoardList(searchKeyword, searchType, page);
		        totalBoardCount = boardDao.countSearchBoard(searchType, searchKeyword);
		        request.setAttribute("searchKeyword", searchKeyword);
		        request.setAttribute("searchType", searchType);
		    } else {
		        // ✅ 전체 게시글 목록 & 개수
		        bDtos1 = boardDao.boardList(page);
		        totalBoardCount = boardDao.countBoard();
		    }

		    // ✅ 검색/전체 여부에 맞춰서 페이지 계산
		    int totalPage = (int) Math.ceil((double)totalBoardCount / BoardDao.PAGE_SIZE);
		    int startPage = (((page - 1) / BoardDao.PAGE_SIZE) * BoardDao.PAGE_SIZE) + 1;
		    int endPage = startPage + BoardDao.PAGE_SIZE - 1;
		    if(endPage > totalPage) endPage = totalPage;

		    request.setAttribute("bDtos", bDtos1);
		    request.setAttribute("currentPage", page);
		    request.setAttribute("totalPage", totalPage);
		    request.setAttribute("startPage", startPage);
		    request.setAttribute("endPage", endPage);
			
			viewPage = "music.jsp";
		} else if(comm.equals("/write.do")) {
			viewPage = "write.jsp";
		} else if(comm.equals("/writeOk.do")) {
			request.setCharacterEncoding("UTF-8");
			String btitle = request.getParameter("title");
			String memberid = request.getParameter("writer");
			String bcontent = request.getParameter("content");
			
			boardDao.boardWrite(btitle, memberid, bcontent); // DB에 새글 입력
			
			response.sendRedirect("music.do"); 
			return;
		} else if(comm.equals("/contentView.do")) {	// 선택 글 보기			
			String bnum = request.getParameter("bnum");
			
			//조회수 올려주는 메소드 호출
			boardDao.updateBhit(bnum);
			
			BoardDto boardDto = boardDao.contentView(bnum);
			request.setAttribute("boardDto", boardDto);

			viewPage = "contentView.jsp";
		} else if(comm.equals("/memberModifyInfo.do")) {
			viewPage = "modifyMemberInfo.jsp";
		} else if(comm.equals("/memberModifyOk.do")) {
			String memberid = request.getParameter("userid");
			String memberpw = request.getParameter("newPassword");
			String membername = request.getParameter("name");
			String memberphone = request.getParameter("phone");
			String memberemail = request.getParameter("email");
			
			if(memberpw == null || memberpw.trim().isEmpty()) {
		        request.setAttribute("errorMsg", "비밀번호는 공란일 수 없습니다.");
		        viewPage = "modifyMemberInfo.jsp";
		    } else {
		        memberDao.memberModify(memberid, memberpw, membername, memberphone, memberemail);
		        viewPage = "login.do";
		    } 
		} else if(comm.equals("/modifyBoard.do")) {
			String bnum = request.getParameter("bnum");

		    // DB에서 글 가져오기
		    BoardDto boardDto = boardDao.contentView(bnum);

		    // JSP로 전달
		    request.setAttribute("boardDto", boardDto);
			
			viewPage = "modifyBoard.jsp";
		} else if(comm.equals("/modifyBoardOk.do")) {
			String bnum = request.getParameter("bnum");
			String btitle = request.getParameter("title");
			String bcontent = request.getParameter("content");
			
			session = request.getSession(false);
		    String sessionId = (String) session.getAttribute("sessionId");
		    String role = (String) session.getAttribute("role");

		    BoardDto boardDto = boardDao.contentView(bnum);
		    String memberid = boardDto.getMemberid();
			
		    if(sessionId != null && (role.equals("ADMIN") || sessionId.equals(memberid))) {
		        boardDao.updateContent(btitle, bcontent, bnum);
		    } else {
		        response.sendRedirect("music.do");
		        return;
		    }
			
			viewPage = "contentView.do";
		} else if(comm.equals("/logout.do")) { 
		    session = request.getSession(false); // 세션이 있으면 가져오고, 없으면 null
		    if(session != null) {
		        session.invalidate();
		    }
		    response.sendRedirect("index.do");
		    return;
		} else if(comm.equals("/delete.do")) {
			String bnum = request.getParameter("bnum");
			
			session = request.getSession(false);
		    String sessionId = (String) session.getAttribute("sessionId");
		    String role = (String) session.getAttribute("role");

		    BoardDto boardDto = boardDao.contentView(bnum);
		    String memberid = boardDto.getMemberid();

		    if(sessionId != null && (role.equals("ADMIN") || sessionId.equals(memberid))) {
		        boardDao.deleteContent(bnum);
		    } else {
		        response.sendRedirect("music.do"); // 권한 없으면 목록으로
		        return;
		    }
		    viewPage = "music.do";
		} else if(comm.equals("/contact.do")) {
			session = request.getSession(false);
			
			String sessionId = (String) session.getAttribute("sessionId");
			
			if(sessionId == null) {
		        response.sendRedirect("login.do");
		        return;
		    }
			
			viewPage = "contact.jsp";
		} else if(comm.equals("/contactProcess.do")) {
			
			String memberid = request.getParameter("memberid");
			String membername = request.getParameter("membername");
			String memberemail = request.getParameter("memberemail");
			String memberphone = request.getParameter("memberphone");
			String contact_date = request.getParameter("contact_date");
			String contact_time = request.getParameter("contact_time");
			String contact_content = request.getParameter("contact_content");
			
			ContactDto contactDto = contactDao.contactInfo(memberid, membername, memberemail, memberphone, contact_date, contact_time, contact_content);
			
			request.setAttribute("contactDto", contactDto);
			
			viewPage = "index.do";
		} else if(comm.equals("/contactConfirm.do")) {
			session = request.getSession(false);
			
			String sessionId = (String) session.getAttribute("sessionId");
			
			if(sessionId == null) {
		        response.sendRedirect("login.do");
		        return;
		    }
		
			String memberid = request.getParameter("memberid");
			
			ContactDto contactDto = contactDao.contactView(memberid);
			request.setAttribute("contactDto", contactDto);
			session.setAttribute("contactInfo", contactDto);
			
			viewPage = "contactConfirm.jsp";
			
		} else if(comm.equals("/contactCancel.do")) {
			session = request.getSession(false);
			
			String sessionId = (String) session.getAttribute("sessionId");
			
			if(sessionId == null) {
		        response.sendRedirect("login.do");
		        return;
		    }
			
			String memberid = request.getParameter("memberid");
			
			contactDao.deleteContact(memberid);
			viewPage = "index.jsp";
		} else if(comm.equals("/contactModify.do")) {
			session = request.getSession(false);
		    String memberid = (String) session.getAttribute("sessionId");
		    if(memberid == null) {
		        response.sendRedirect("login.do");
		        return;
		    }

		    ContactDto contactDto = contactDao.contactView(memberid);
		    request.setAttribute("contactDto", contactDto); 
		    viewPage = "contactModify.jsp";

		}  else if(comm.equals("/contactModifyProcess.do")) {
			String memberid = request.getParameter("memberid");
		    String membername = request.getParameter("membername");
		    String memberemail = request.getParameter("memberemail");
		    String memberphone = request.getParameter("memberphone");
		    String contact_date = request.getParameter("contact_date");
		    String contact_time = request.getParameter("contact_time");
		    String contact_content = request.getParameter("contact_content");

		    contactDao.updateContent(memberid, membername, memberemail, memberphone, contact_date, contact_time, contact_content);

		    ContactDto contactDto = contactDao.contactView(memberid);
		    request.setAttribute("contactDto", contactDto);
		    
		    viewPage = "contactConfirm.jsp";
		} 
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
