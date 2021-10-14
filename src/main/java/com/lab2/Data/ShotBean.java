package com.lab2.Data;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class ShotBean {
    private final float x;
    private final float y;
    private final int r;
    private final LocalDateTime time;
    private final double executionTime;
    private final boolean success;

    public ShotBean(float x, float y, int r, LocalDateTime time, double executionTime, boolean success) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.time = time;
        this.executionTime = executionTime;
        this.success = success;
    }

    public float getX() {
        return x;
    }

    public float getY() {
        return y;
    }

    public int getR() {
        return r;
    }

    public String getTime() {
        return time.format(DateTimeFormatter.ofPattern("dd-mm-yy HH:mm:ss"));
    }

    public double getExecutionTime() {
        return executionTime;
    }

    public String isSuccess() {
        return success ? "попал" : "не попал";
    }
}