package com.tasteland.application.dao;

import com.tasteland.application.entity.user.Role;

public interface RoleDAO {

	Role findRoleByName(String theRoleName);
	
}
