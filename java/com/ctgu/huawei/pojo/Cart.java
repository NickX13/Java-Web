package com.ctgu.huawei.pojo;

public class Cart {

    private int id;
    private int uid;
    private int pid;
    private int num;

    public Cart(){
        super();
    }

    public Cart(int id, int uid, int pid, int num){
        super();
        this.id = id;
        this.uid = uid;
        this.pid = pid;
        this.num = num;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getUid() {
        return uid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getPid() {
        return pid;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getNum() {
        return num;
    }
}
