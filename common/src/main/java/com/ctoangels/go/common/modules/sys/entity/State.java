package com.ctoangels.go.common.modules.sys.entity;

/**
 * Created by xhj224 on 2017/2/23.
 * 树状图包装类所用到的子类，用了表示树的状态
 */
public class State {
    private boolean opened; // 是否打开
    private boolean disabled; // 是否可用
    private boolean selected; // 是否选中

    public State() {
    }

    public State(boolean opened, boolean disabled, boolean selected) {
        this.opened = opened;
        this.disabled = disabled;
        this.selected = selected;
    }

    public boolean isOpened() {
        return opened;
    }

    public void setOpened(boolean opened) {
        this.opened = opened;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
}
