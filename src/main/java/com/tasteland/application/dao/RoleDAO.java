package com.tasteland.application.dao;

import com.tasteland.application.entity.Role;

public interface RoleDAO {

	Role findRoleByName(String theRoleName);
	
}
