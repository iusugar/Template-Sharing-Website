package se.zust.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 22:28
 * @description:
 */
@Data
@Entity
@Table(name = "tag")
//@DynamicInsert(true)
//@DynamicUpdate(true)
public class Tag {

    @Id
    @GeneratedValue
    private int id;

    @Column
    private String name;

    @ManyToMany
    @JoinTable(name = "tag_to_tmpl",joinColumns = { @JoinColumn(name = "tag_id", nullable = false, updatable = false) },inverseJoinColumns = { @JoinColumn(name = "tmpl_id", nullable = false, updatable = false) })
    private Set<Template> template = new HashSet<Template>(0);


}
