import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class KtServlet : HttpServlet() {
    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
        val name = req.getParameter("name")
        resp.writer.use {
            it.println(
                    if (name != null)
                        "Hello, $name"
                    else
                        "You didn't provided name, but anyway hello"
            )
        }
    }

    override fun doPost(req: HttpServletRequest, resp: HttpServletResponse) {
        if(req.pathInfo != "/account")
        if(req.getParameter("username") == req.getParameter("password").reversed()) {
            req.setAttribute("authOk", true)
        } else {
            req.setAttribute("authOk", false)
        }
        req.getRequestDispatcher("/account.jsp").forward(req, resp)
    }
}