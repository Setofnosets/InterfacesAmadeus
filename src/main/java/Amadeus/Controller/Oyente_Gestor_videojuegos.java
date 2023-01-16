package Amadeus.Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import Amadeus.MODEL.videojuego;

@WebServlet(name = "Oyente_Gestor_videojuegos", value = "/Oyente_Gestor_videojuegos")
public class Oyente_Gestor_videojuegos extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            RequestDispatcher dispatcher;
            //Determinar a que pagina se va a redireccionar
            switch (req.getParameter("opcion")) {
                case "1":
                    //Redireccionar a la tienda
                    dispatcher = req.getRequestDispatcher("IU_Tienda.jsp");
                    dispatcher.forward(req, resp);
                    break;
                case "2":
                    //Redireccionar a la seccion de noticias
                    dispatcher = req.getRequestDispatcher("IU_Gestor_Noticias.jsp");
                    dispatcher.forward(req, resp);
                    break;
                case "3":
                    //Redireccionar a la seccion de premium
                    dispatcher = req.getRequestDispatcher("IU_Gestor_Membresia.jsp");
                    dispatcher.forward(req, resp);
                    break;
                case "4":
                    //Redireccionar al perfil del usuario
                    dispatcher = req.getRequestDispatcher("IU_Perfil.jsp");
                    dispatcher.forward(req, resp);
                    break;
                case "5":
                    //Redireccionar a reseñas
                    dispatcher = req.getRequestDispatcher("IU_Gestor_Reseñas.jsp");
                    dispatcher.forward(req, resp);
                    break;
                case "6":
                    //Redireccionar a la libreria si el usuario se encuentra logueado sino redireccionar a la pagina de inicio
                    if (req.getSession().getAttribute("usuario") != null) {
                        dispatcher = req.getRequestDispatcher("IU_Libreria.jsp");
                        dispatcher.forward(req, resp);
                    } else {
                        dispatcher = req.getRequestDispatcher("index.jsp");
                        dispatcher.forward(req, resp);
                    }
                    break;
                case "7":
                    //Redireccionar a la pagina de DLC
                    System.out.println(req.getParameter("juegoSeleccionado"));
                    if(req.getParameter("juegoSeleccionado") != ""){
                        req.setAttribute("juegoSeleccionado", req.getParameter("juegoSeleccionado"));
                        dispatcher = req.getRequestDispatcher("IU_Gestor_DLC.jsp");
                        dispatcher.forward(req, resp);
                    }else{
                        dispatcher = req.getRequestDispatcher("IU_Libreria.jsp");
                        dispatcher.forward(req, resp);
                    }
                    break;
                default:
                    //Redireccionar a la pagina de inicio
                    dispatcher = req.getRequestDispatcher("index.jsp");
                    dispatcher.forward(req, resp);
                    break;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            //Redireccionar a la seccion de pagos
            req.setAttribute("dlc", null);
            videojuego juego = (videojuego) req.getSession().getAttribute("juego");
            req.getSession().setAttribute("juego", juego);
            RequestDispatcher dispatcher;
            dispatcher = req.getRequestDispatcher("IU_Gestor_Pagos.jsp");
            dispatcher.forward(req, resp);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
