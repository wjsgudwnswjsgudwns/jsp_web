package command;

import dao.MemberDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao memberDao = new MemberDao();
		HttpSession session = request.getSession();
		
		String loginId = request.getParameter("userid");
		String loginPw = request.getParameter("password");
		
		int loginFlag = memberDao.loginCheck(loginId, loginPw);
		if (loginFlag == 1) {
			session = request.getSession(); // session을 java에서 사용법
			session.setAttribute("sessionId", loginId); // 로그인 성공
		} else {
			return;
		}
	}

}
