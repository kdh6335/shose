package com.shose.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.action.*;




/**
 * Servlet implementation class BzipollFrontController
 */
@WebServlet("/BzipollFrontController")
public class BzipollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BzipollFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    // doGet , doPost 모두 service() 통해서 작동
	protected void service(HttpServletRequest request, HttpServletResponse respnse) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			
			//인터페이스
			Action action = null;
			
			// 페이지 이동방법 결정(Forward, sendRedirect)
			ActionForward forward = null;
			
			String uri = request.getRequestURI(); // 주소를 가져온다. /shose/index.bizpoll 
			String ctx = request.getContextPath(); // Context만 가져온다 '/shose ' 만 가져온다.
			String command = uri.substring(ctx.length());
			
			System.out.println("uri ====> "+ uri );
			System.out.println("ctx ====> "+ ctx );
			System.out.println("command ====> "+ command );
			
			
			//======액션 매핑======
			// 실제로 동작하는 곳, 하나의 Servlet에서 URL을 읽어 해당 기능을 구현
			if(command.equals("/index.bizpoll")) {
				
				action = new IndexAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/login.bizpoll")) {
				
				action = new LoginAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/member.bizpoll")) {
				
				action = new memberAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/Constract.bizpoll")) {
				
				action = new ConstractAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/id_olap_ck.bizpoll")) {
				
				action = new IdolapckAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/memberinsert.bizpoll")) {
				
				action = new MembeinsertAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/memajax.bizpoll")) {
				
				action = new MemAjaxAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/loginck.bizpoll")) {
				
				action = new LoginCkAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/logout.bizpoll")) {
				
				action = new LoginOutAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
			}else if(command.equals("/boardlist.bizpoll")) {
				
				action = new BoardListAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/boardInsertView.bizpoll")) {
				
				action = new BoardInsertViewAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
			}else if(command.equals("/boardinertsave.bizpoll")) {
				
				action = new boardinertsaveAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/boardbody.bizpoll")) {
				
				action = new BoardBodyAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/modify.bizpoll")) {
				
				action = new ModifyAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/modifyupdate.bizpoll")) {
				
				action = new ModifyUpdateAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
				
			}else if(command.equals("/modifydelete.bizpoll")) {
				
				action = new ModifyDeleteAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
			}else if(command.equals("/sweetadd.bizpoll")) {
				
				action = new SweetAddAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
			}else if(command.equals("/search.bizpoll")) {
				
				action = new SearchAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
			}else if(command.equals("/replyadd.bizpoll")) {
				
				action = new ReplyAddAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
			}else if(command.equals("/replydel.bizpoll")) {
				
				action = new ReplyDelAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
			}else if(command.equals("/commentlist.bizpoll")) {
				
				action = new CommentListAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
				
			}
			
			
			//=======공통 분기 작업 =======
			if(forward != null) {
				if(forward.isRedirect()) {
					respnse.sendRedirect(forward.getPath());
				}else {
					RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
					rd.forward(request, respnse);
				}
			}
	
	}

}
