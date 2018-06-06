public class Config {
    private String url = "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    private String user = "adlister";
    private String password = "adlister123";



    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
