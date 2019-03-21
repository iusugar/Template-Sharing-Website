package se.zust.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.util.Date;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/25 8:36
 * @description:
 */

@Data
@Entity
@Table(name = "comment")
//@DynamicInsert(true)
//@DynamicUpdate(true)
public class Comment {

    @Id
    @GeneratedValue
    private int id;

    @Column(name = "create_date")
    private Date createTime;

    @Column
    private String content;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User commentUser;

    @ManyToOne
    @JoinColumn(name = "tmpl_id")
    private Template commentTemplate;
}
