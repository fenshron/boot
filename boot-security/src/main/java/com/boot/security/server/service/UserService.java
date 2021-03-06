package com.boot.security.server.service;

import java.util.Set;

import com.boot.security.server.dto.UserDto;
import com.boot.security.server.model.SysUser;

public interface UserService {

	SysUser saveUser(UserDto userDto);

	SysUser updateUser(UserDto userDto);

	SysUser getUser(String username);

	void changePassword(String username, String oldPassword, String newPassword);

	void updateLoginUserCache(Set<Long> userIds);
}
