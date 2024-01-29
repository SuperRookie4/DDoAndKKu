package mgJoin_p;

import java.util.Date;

public class BoardDTO {
	String postTitle, contents, pid, postFile, pname;
	int number;
	Date postDay;
	
	
	
	public BoardDTO() {
		super();
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPostFile() {
		return postFile;
	}
	public void setPostFile(String postFile) {
		this.postFile = postFile;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Date getPostDay() {
		return postDay;
	}
	public void setPostDay(Date postDay) {
		this.postDay = postDay;
	}
	@Override
	public String toString() {
		return "BoardDTO [postTitle=" + postTitle + ", contents=" + contents + ", pid=" + pid + ", postFile=" + postFile
				+ ", number=" + number + ", postDay=" + postDay +", pname=" + pname+ "]";
	}
	
	
}
