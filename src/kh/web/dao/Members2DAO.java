package kh.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;

import kh.web.dbutils.DBUtils;

public class Members2DAO {
	public boolean idCheck(String id) throws Exception{
		boolean b = false;
		
		Connection con = DBUtils.getConnection();
		String sql = "select * from MEMBERS2 where ID=?";
		
		PreparedStatement pstat = con.prepareStatement(sql);
		
		pstat.setString(1, id);
		
		ResultSet rs = pstat.executeQuery();
		
		while(rs.next()) {
			if(rs.getString(1).equals(id)) {
				b=true;
			}
		}
		
		return b;
	}
	
	public boolean login(String id, String pw) throws Exception{
		boolean b = false;
		
		Connection con = DBUtils.getConnection();
		
		String sql = "select * from MEMBERS2 where ID=?,PW=?";
		
		PreparedStatement pstat = con.prepareStatement(sql);
		
		pstat.setString(1, id);
		pstat.setString(2, pw);
		
		ResultSet rs = pstat.executeQuery();
		
		while(rs.next()) {
			if(rs.getString(1).equals(id) && rs.getString(2).equals(pw)) {
				b = true;
			}
		}
		
		return b;
	}
}
