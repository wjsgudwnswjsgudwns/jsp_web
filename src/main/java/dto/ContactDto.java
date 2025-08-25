package dto;

public class ContactDto {

	private String contact_date;
	private String contact_time;
	private String contact_content;
	private String nowtime;
	
	private MemberDto memberDto;

	public ContactDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ContactDto(String contact_date, String contact_time, String contact_content, String nowtime,
			MemberDto memberDto) {
		super();
		this.contact_date = contact_date;
		this.contact_time = contact_time;
		this.contact_content = contact_content;
		this.nowtime = nowtime;
		this.memberDto = memberDto;
	}

	public String getContact_date() {
		return contact_date;
	}

	public void setContact_date(String contact_date) {
		this.contact_date = contact_date;
	}

	public String getContact_time() {
		return contact_time;
	}

	public void setContact_time(String contact_time) {
		this.contact_time = contact_time;
	}

	public String getContact_content() {
		return contact_content;
	}

	public void setContact_content(String contact_content) {
		this.contact_content = contact_content;
	}

	public String getNowtime() {
		return nowtime;
	}

	public void setNowtime(String nowtime) {
		this.nowtime = nowtime;
	}

	public MemberDto getMemberDto() {
		return memberDto;
	}

	public void setMemberDto(MemberDto memberDto) {
		this.memberDto = memberDto;
	}
	
	
}
