package dao;

import java.sql.*;
import java.util.*;

import util.*;
import vo.*;

public class FilmDao {
	
	public ArrayList<Film> selectFilmIdListAll() throws Exception{
		DBUtil dbutil = new DBUtil();
		Connection conn = dbutil.getConnection();
		String sql = "SELECT film_id, title FROM film";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		ArrayList<Film> list = new ArrayList<Film>();
		while(rs.next()) {
			Film f = new Film();
			f.setFilmId(rs.getInt("film_id"));
			f.setTitle(rs.getString("title"));
			list.add(f);
		}
		return list;
	}
}

---------------------------------------------------------------------------------------------------------------------------------
FilmActorDao.java

package dao;

import java.sql.*;
import java.util.*;
import util.*;
import vo.*;

public class FilmActorDao {
	public ArrayList<FilmActor> selectfilmActor() throws Exception{
		DbUtil dbUtil = new DbUtil();
		Connection conn = dbUtil.getConnection();
		String sql = "SELECT * FROM film_actor";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		ArrayList<FilmActor> list = new ArrayList<FilmActor>();
		while(rs.next()) {
			FilmActor filmActor = new FilmActor();
			filmActor.setActorId(rs.getInt("actor_id"));
			filmActor.setFilmId(rs.getInt("film_id"));
			filmActor.setLastUpdate(rs.getString("last_update"));
			list.add(filmActor);
		}
		return list;
	}
}

----------------------------------------------------------------------------------------------------------------------------------
FilmCategoryDao.java

package dao;
import java.sql.*;
import java.util.*;
import util.*;
import vo.*;

public class FilmCategoryDao {
	public ArrayList<FilmCategory> selectfilmCategory() throws Exception{
		DbUtil dbUtil = new DbUtil();
		Connection conn = dbUtil.getConnection();
		String sql = "SELECT * FROM film_category";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		ArrayList<FilmCategory> list = new ArrayList<FilmCategory>();
		while(rs.next()) {
			FilmCategory filmCategory = new FilmCategory();
			filmCategory.setCategoryId(rs.getInt("category_id"));
			filmCategory.setFilmId(rs.getInt("film_id"));
			filmCategory.setLastUpdate(rs.getString("last_update"));
			list.add(filmCategory);
		}
		return list;
	}
}

--------------------------------------------------------------------------------------------------------------------
FilmTextDao.java

package dao;
import java.sql.*;
import java.util.*;
import util.*;
import vo.*;

public class FilmTextDao {
	public ArrayList<FilmText> selectfilmText() throws Exception{
		DbUtil dbUtil = new DbUtil();
		Connection conn = dbUtil.getConnection();
		String sql = "SELECT * FROM film_text";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		ArrayList<FilmText> list = new ArrayList<FilmText>();
		while(rs.next()) {
			FilmText filmText = new FilmText();
			filmText.setDescription(rs.getString("description"));
			filmText.setFilmId(rs.getInt("film_id"));
			filmText.setTitle(rs.getString("title"));
			list.add(filmText);
		}
		return list;
	}
}

