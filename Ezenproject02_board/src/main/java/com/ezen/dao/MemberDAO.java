package com.ezen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.ezen.dto.MemberVO;

public class MemberDAO {
	private MemberDAO() {

	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {

		return instance;
	}

	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}

	// 사용자 인증시 사용하는 메소드
	public int userCheck(String id, String pwd) {

		int result = -1;
		String sql = "select pwd from ezen_member where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)) {
					result = 1;

				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public MemberVO getMember(String id) {
		MemberVO mVo = null;
		String sql = "select * from ezen_member where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mVo = new MemberVO();

				mVo.setId(rs.getString("id"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setName(rs.getString("name"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setEmail(rs.getString("email"));
				mVo.setGender(rs.getInt("gender"));
				mVo.setAge(rs.getString("age"));
				mVo.setAdmin(rs.getInt("admin"));

			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}

	public int confirmID(String id) {
		int result = -1;
		String sql = "select id from ezen_member where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 1;

			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int insertMember(MemberVO mVo) {
		int result = -1;
		String sql = "insert into ezen_member values(?,?,?,?,?,?,?,?,sysdate)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mVo.getId());
			pstmt.setString(2, mVo.getPwd());
			pstmt.setString(3, mVo.getName());
			pstmt.setString(4, mVo.getPhone());
			pstmt.setString(5, mVo.getEmail());
			pstmt.setInt(6, mVo.getGender());
			pstmt.setString(7, mVo.getAge());
			pstmt.setInt(8, mVo.getAdmin());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int updateMember(MemberVO mVo) {
		int result = -1;
		String sql = "update ezen_member set pwd=?,phone=?,email=?,gender=?,age=?,admin=? where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getPwd());
			pstmt.setString(2, mVo.getPhone());
			pstmt.setString(3, mVo.getEmail());
			pstmt.setInt(4, mVo.getGender());
			pstmt.setString(5, mVo.getAge());

			pstmt.setInt(6, mVo.getAdmin());
			pstmt.setString(7, mVo.getId());

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	 public int deleteMember(MemberVO mVo) { //회원탈퇴
	  int result=-1;
	  String sql="delete ezen_member where id=? and pwd=? ";
	  Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getId());
			pstmt.setString(2, mVo.getPwd());
			
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	  }
	 //진행중    //아이디가여러개일경우?
	 public String findMember(String name,String phone) { //아이디찾기
		  String id=null;
		  String sql="SELECT id FROM ezen_member WHERE name=? AND phone=?";
		  Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,name);
				pstmt.setString(2, phone);
		
				rs = pstmt.executeQuery();
				
				
				if (rs.next()) {
					id=rs.getString("id");
				}else {
					id=null;
				}
				
				
			}catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return id;
		  }
	 
	 public String findMemberPwd(String id,String name,String phone) { //비밀번호찾기
		  String pwd=null;
		  String sql="SELECT pwd FROM ezen_member WHERE id=? and name=? AND phone=?";
		  Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,id);
				pstmt.setString(2,name);
				pstmt.setString(3, phone);
		
				rs = pstmt.executeQuery();
				
				
				if (rs.next()) {
					pwd=rs.getString("pwd");
				}else {
					pwd=null;
				}
				
				
			}catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return pwd;
		  }
}
