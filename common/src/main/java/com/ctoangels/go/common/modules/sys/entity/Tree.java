package com.ctoangels.go.common.modules.sys.entity;

/**
 * Created by xhj224 on 2017/2/23.
 * 树状图对应的JSON包装类
 */
public class Tree {
    private String id; // id
    private String parent; // 父节点id
    private String text; // 名称
    private String icon; // 图标
    private State state; // 状态

    public Tree() {
    }

    public Tree(String id, String parent, String text) {
        this.id = id;
        this.parent = parent;
        this.text = text;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }
}
