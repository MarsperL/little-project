package JavaBean;

public class users {
    private  Integer id;
    private    String name;
    private    String password;
    private    String gender;
    private    String email;
    private    String resume;
    public users(Integer id,String name, String password,String gender,String email,String resume) {
		// TODO 自动生成的构造函数存根
        super();
        this.id=id;
        this.name=name;
        this.password=password;
        this.gender=gender;
        this.email=email;
        this.resume=resume;
    }
    public users() {
    	super();
    }
    public   Integer getId() {
        return id;
    }
 
    public void setId(Integer id) {
        this.id = id;
    }
    public  String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public  String getPassword() {
        return password;
    }
    public  void setPassword(String password) {
        this.password = password;
    }
    public  String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public  String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public  String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }
 
}
