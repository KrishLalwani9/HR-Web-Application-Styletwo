package com.krish.lalwani.hr.beans;
public class DesignationBean implements java.io.Serializable
{
private int code;
private String title;
public DesignationBean()
{
this.code=0;
this.title="";
}
public void setCode(int code)
{
this.code=code;
}
public int getCode()
{
return this.code;
}
public void setTitle(java.lang.String title)
{
this.title=title;
}
public java.lang.String getTitle()
{
return this.title;
}
}