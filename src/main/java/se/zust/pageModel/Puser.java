package se.zust.pageModel;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 21:41
 * @description:
 */
@Data
public class Puser {

    private int id;

    private String name;

    private Date birth;

    private String idCard;

    private String username;

    private String account;

    private String password;

    private Date regTime;

    private String mobile;

    private String qq;

    private String email;

    private String intro;

    private String gender;

    private String province;

    private String city;

    private int worksAccount;

}
