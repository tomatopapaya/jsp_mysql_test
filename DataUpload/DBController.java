package controller;
import java.sql.*;
import java.util.ArrayList;

public class DBController {
	private Connection con;
	private Statement st;
	private ResultSet rs;

	public DBController() {
		try {
			// Class ���R�A forName() ��k��{�ʺA�[�����O
			Class.forName("com.mysql.jdbc.Driver");
			// 3306|MySQL�}�񦹺ݤf
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "orange0832");
			st = con.createStatement();

		} catch (Exception ex) {
			System.out.println("Error: " + ex);
		}
	}

	public ArrayList<Data> getData() {
		ArrayList<Data> result=new ArrayList<Data>();
		try {
			String query = "select * from user";
			rs = st.executeQuery(query);
			System.out.println("Records for Database");
			while (rs.next()) {
				Data data=new Data();
				data.id = rs.getLong("id");
				data.name = rs.getString("name");
				data.mail = rs.getString("mail");
				data.phone = rs.getString("phone");
				data.birthday = rs.getString("birthday");
				result.add(data);
			}
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return result;
	}

}