package command;

import dao.MemberDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao memberDao = new MemberDao();
		
		String memberid = request.getParameter("memberid");
		String memberpw = request.getParameter("memberpw");
		String membername = request.getParameter("membername");
		String memberphone = request.getParameter("memberphone");
		String memberemail = request.getParameter("memberemail");
		
		memberDao.registerMember(memberid, memberpw, membername, memberphone, memberemail);

	}

}
