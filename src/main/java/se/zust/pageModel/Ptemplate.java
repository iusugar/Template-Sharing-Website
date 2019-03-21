package se.zust.pageModel;


import lombok.Data;

import java.util.Date;
import java.util.Set;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 21:41
 * @description:
 */
@Data
public class Ptemplate {

    private int id;

    private String name;

    private String type;

    private String userAccount;

    private Date uploadTime;

    private String path;

    private int downAmount;

    private float fileSize;

    private float price;

    private int pageAmount;

    private String description;

    private String tag;

    private int userId;

    private String username;

}
