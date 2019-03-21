package se.zust.entity;

import lombok.Data;
import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 14:03
 * @description:
 */
@Data
@Entity
@Table(name = "template")
@DynamicInsert(true)
@DynamicUpdate(true)
@OptimisticLocking
public class Template implements Serializable {

    @Id
    @GeneratedValue
    private int id;
    @Column
    private String name;
    @Column
    private String type;
    @Column(name = "upload_time")
    private Date uploadTime;
    @Column
    private String path;
    @Column(name = "down_amount")
    private int downAmount;
    @Column(name = "file_size")
    private float fileSize;
    @Column
    private float price;
    @Column(name = "page_amount")
    private int pageAmount;
    @Column
    private String description;
    @Column
    private boolean status;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id",nullable = true)
    private User user;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "tag_to_tmpl",joinColumns = { @JoinColumn(name = "tmpl_id", nullable = false, updatable = false) },inverseJoinColumns = { @JoinColumn(name = "tag_id", nullable = false, updatable = false) })
    private Set<Tag> tag = new HashSet<Tag>(0);

    @ManyToMany
    @JoinTable(name = "collection",joinColumns = { @JoinColumn(name = "tmpl_id", nullable = false, updatable = false) },inverseJoinColumns = { @JoinColumn(name = "user_id", nullable = false, updatable = false) })
    private Set<User> collectUser = new HashSet<User>(0);

    @ManyToMany
    @JoinTable(name = "comment",joinColumns = { @JoinColumn(name = "tmpl_id", nullable = false, updatable = false) },inverseJoinColumns = { @JoinColumn(name = "user_id", nullable = false, updatable = false) })
    private Set<User> commentUser = new HashSet<User>(0);



}
