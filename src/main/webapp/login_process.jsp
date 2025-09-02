<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rows = null;

    try {
        // Load MySQL JDBC driver
        System.out.println("login");
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Database connection (update username/password as per your setup)
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artgallery", "root", "root");

        // Insert SQL
        String sql = "SELECT * FROM user_details WHERE user_email=? AND user_pass=?";
        ps = conn.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, password);

        rows = ps.executeQuery();

        if (rows.next()) {
        	 out.println("<script type='text/javascript'>");
             out.println("alert('Login Successful!');");
             out.println("window.location = 'Paintings.html';"); 
             out.println("</script>");
        } else {
            out.println("<script type='text/javascript'>");
            out.println("alert('Registration Failed. Try again.');");
            out.println("window.location = 'register.jsp';");
            out.println("</script>");
        }
    } catch (Exception e) {
    	 e.printStackTrace();
         out.println("<script type='text/javascript'>");
         out.println("alert('Error: " + e.getMessage() + "');");
         out.println("window.location = 'register.jsp';");
         out.println("</script>");
    } finally {
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
%>