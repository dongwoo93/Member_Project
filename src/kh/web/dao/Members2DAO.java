package kh.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import kh.web.dbutils.DBUtils;
import kh.web.dto.Members2DTO;

public class Members2DAO {
	
	public int insertMembers2(Members2DTO dto) throws Exception {
		
		Connection con = DBUtils.getConnection();
		String sql = "insert into members2 values(?,?,?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, dto.getId());
		pstat.setString(2, dto.getPw());
		pstat.setString(3, dto.getName());
		pstat.setString(4, dto.getEmail());
		int result = pstat.executeUpdate();
		
		return result;
	}

}
