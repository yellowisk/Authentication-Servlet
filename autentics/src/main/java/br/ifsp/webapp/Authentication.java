package br.ifsp.webapp;

public class Authentication {
    private String user;
    private String password;
    private Person person;

    public Authentication(String user, String password, Person person) {
        this.user = user;
        this.password = password;
        this.person = person;
    }

    public Authentication() {
    }
    
    public String getUser() {
        return user;
    }

    public void setUser(String usuario) {
        user = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    @Override
    public String toString() {
        return "Autenticacao [Usuario=" + user + ", password=" + password + ", person=" + person + "]";
    }

}