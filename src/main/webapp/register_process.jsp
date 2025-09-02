<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement ps = null;

    try {
        // Load MySQL JDBC driver
        System.out.println("Creating the sql connetion");
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Database connection (update username/password as per your setup)
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artgallery", "root", "root");

        // Insert SQL
        String sql = "INSERT INTO user_details(user_name, user_email, user_pass) VALUES (?, ?, ?)";
        ps = conn.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);

        int rows = ps.executeUpdate();

        if (rows > 0) {
        	 out.println("<script type='text/javascript'>");
             out.println("alert('Registration Successful!');");
             out.println("window.location = 'login.jsp';"); 
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