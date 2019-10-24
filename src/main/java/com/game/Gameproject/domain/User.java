package com.game.Gameproject.domain;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {

    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_id_generator")
    @SequenceGenerator(name = "user_id_generator", sequenceName = "user_id_seq", allocationSize = 1)
    @Id
    private Long id;

    @Column(nullable = false, unique = true)
    @NotBlank
    @Size(max = 255)
    private String name;

    @Column(nullable = false, unique = true)
    @Email
    @NotBlank
    private String mail;

    @Column(nullable = false)
    @NotBlank
    private String password;

    @Column(nullable = false, columnDefinition = "boolean default false")
    private boolean isAdmin = false;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean isAdmin(){
        return isAdmin;
    }

    public String isAdminString(){
        return isAdmin().toString();
    }
}
