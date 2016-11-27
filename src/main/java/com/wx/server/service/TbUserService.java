package com.wx.server.service;

import com.wx.server.entity.TbUser;

public interface TbUserService {

	public TbUser findTbUserByUsername(String username);

	public TbUser login(TbUser user) throws Exception;

	public TbUser register(TbUser user) throws Exception;

	public TbUser updateUser(TbUser user) throws Exception;

}
