package se.zust.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 11:05
 * @description:
 */
@Data
@Entity
@Table(name = "user")
//@DynamicInsert(true)
//@DynamicUpdate(true)
public class User {

    @Id
    @GeneratedValue
    private int id;
    @Column
    private String name;
    @Column
    private Date birth;
    @Column(name = "id_card")
    private String idCard;
    @Column
    private String username;
    @Column(unique = true)
    private String account;
    @Column
    private String password;
    @Column(name = "reg_time")
    private Date regTime;
    @Column
    private String mobile;
    @Column
    private String qq;
    @Column
    private String email;
    @Column
    private String intro;
    @Column
    private String gender;
    @Column
    private String province;
    @Column
    private String city;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set<Template> userTemplate = new HashSet<Template>(0);

    @ManyToMany
    @JoinTable(name = "collection",joinColumns = { @JoinColumn(name = "user_id", nullable = false, updatable = false) },inverseJoinColumns = { @JoinColumn(name = "tmpl_id", nullable = false, updatable = false) })
    private Set<Template> collectTemplate = new HashSet<Template>(0);

    @ManyToMany
    @JoinTable(name = "comment",joinColumns = { @JoinColumn(name = "user_id", nullable = false, updatable = false) },inverseJoinColumns = { @JoinColumn(name = "tmpl_id", nullable = false, updatable = false) })
    private Set<Template> commentTemplate = new HashSet<Template>(0);

    @ManyToMany
    @JoinTable(name = "concern",joinColumns = { @JoinColumn(name = "fans_id", nullable = false, updatable = false) },inverseJoinColumns = { @JoinColumn(name = "concerned_id", nullable = false, updatable = false) })
    private Set<User> UserFans = new HashSet<User>(0);

    @ManyToMany
    @JoinTable(name = "concern",joinColumns = { @JoinColumn(name = "concerned_id", nullable = false, updatable = false) },inverseJoinColumns = { @JoinColumn(name = "fans_id", nullable = false, updatable = false) })
    private Set<User> UserConcerned = new HashSet<User>(0);

}
