package com.kdn.model.domain;

public class Menu 
{
	private int m_id;
	private String m_date;
	private String m_img;
	private String m_category;
	private String m_etc;
	private int m_t_id;
	
	public Menu(){}
	
	public Menu(int m_id, String m_date, String m_img, String m_category,
			String m_etc, int m_t_id) 
	{
		this.m_id = m_id;
		this.m_date = m_date;
		this.m_img = m_img;
		this.m_category = m_category;
		this.m_etc = m_etc;
		this.m_t_id = m_t_id;
	}


	public Menu(String m_date, String m_category, String m_etc, int m_t_id) 
	{
		this.m_date = m_date;
		this.m_category = m_category;
		this.m_etc = m_etc;
		this.m_t_id = m_t_id;
	}
	
	public Menu(String m_date, String m_img, String m_category, String m_etc,
			int m_t_id) 
	{
		this.m_date = m_date;
		this.m_img = m_img;
		this.m_category = m_category;
		this.m_etc = m_etc;
		this.m_t_id = m_t_id;
	}

	public Menu(String m_date, String m_category) 
	{
		this.m_date = m_date;
		this.m_category = m_category;
	}

	public int getM_id() 
	{
		return m_id;
	}
	public void setM_id(int m_id) 
	{
		this.m_id = m_id;
	}
	public String getM_date() 
	{
		return m_date;
	}
	public void setM_date(String m_date) 
	{
		this.m_date = m_date;
	}
	public String getM_img() 
	{
		return m_img;
	}
	public void setM_img(String m_img) 
	{
		this.m_img = m_img;
	}
	public String getM_category() 
	{
		return m_category;
	}
	public void setM_category(String m_category) 
	{
		this.m_category = m_category;
	}
	public String getM_etc()
	{
		return m_etc;
	}
	public void setM_etc(String m_etc) 
	{
		this.m_etc = m_etc;
	}
	public int getM_t_id() 
	{
		return m_t_id;
	}
	public void setM_t_id(int m_t_id) 
	{
		this.m_t_id = m_t_id;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Menu [m_id=").append(m_id).append(", m_date=")
				.append(m_date).append(", m_img=").append(m_img)
				.append(", m_category=").append(m_category).append(", m_etc=")
				.append(m_etc).append(", m_t_id=").append(m_t_id).append("]");
		return builder.toString();
	}
	
}
