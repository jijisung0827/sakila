package dao;
import java.sql.*;
import java.util.*;

import util.*;
import vo.*;

public class LanguageDao {
	public ArrayList<Language> select() throws Exception{
		DbUtil dbUtil = new DbUtil();
		Connection conn = dbUtil.getConnection();
		String sql = "SELECT language_id FROM language";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		ArrayList<Language> list = new ArrayList<Language>();
		while(rs.next()) {
			Language language = new Language();
			language.setLanguageId(rs.getInt("language_id"));
			list.add(language);
		}
		return list;
	}

}
