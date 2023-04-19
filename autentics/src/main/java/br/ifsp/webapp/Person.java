package br.ifsp.webapp;

import java.text.SimpleDateFormat;

public class Person {
    private static Integer ID_PK = 0;
    private Integer id;
    private String name;
    private String sex;
    
    public Person() {
    }

    public Person(String name, String sex) {
        ID_PK++;
        this.id = ID_PK;
        this.name = name;
        this.sex = sex;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "Person [id=" + id + ", name=" + name + ", sex=" + sex + "]";
    }

}
