import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/UsuarioServlet"})
public class UsuarioServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String tipoDocumento = request.getParameter("tipoDocumento");
        String numeroDocumento = request.getParameter("numeroDocumento");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        String confirmarPassword = request.getParameter("confirmarPassword");
// mensaje de confirman contraseñas//
 
        if (!password.equals(confirmarPassword)) {
    request.setAttribute("mensaje", "Las contraseñas no coinciden");
    request.getRequestDispatcher("resultado.jsp").forward(request, response);
    return; 
}

        request.setAttribute("nombre", nombre);
        request.setAttribute("apellido", apellido);
        request.setAttribute("tipoDocumento", tipoDocumento);
        request.setAttribute("numeroDocumento", numeroDocumento);
        request.setAttribute("correo", correo);
        request.setAttribute("mensaje", "Usuario registrado correctamente");

        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}

