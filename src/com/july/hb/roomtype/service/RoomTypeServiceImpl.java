package com.july.hb.roomtype.service;

import com.july.hb.roomtype.dao.RoomTypeDao;
import com.july.hb.roomtype.pojo.RoomType;

import java.sql.SQLException;
import java.util.ArrayList;


public class RoomTypeServiceImpl implements RoomTypeService {

    private RoomTypeDao dao = new RoomTypeDao();

    @Override
    public int insertRoomType(RoomType roomType) {

        try {
            if (queryRepeat(roomType.getTypeName()) == 1)
                dao.insertData(roomType);
        } catch (SQLException e) {
            System.out.println(e.getErrorCode() + e.getMessage());
            return -1;
        }
        return 1;
    }

    @Override
    public int deleteRoomType(String typeId) {
        RoomType roomType = new RoomType();
        roomType.setTypeId(typeId);

        try {
            dao.deleteData(roomType);
        } catch (SQLException e) {
            System.out.println(e.getErrorCode() + e.getMessage());
            return -1;
        }
        return 1;
    }

    @Override
    public int updateRoomType(RoomType roomType) {
        try {
            dao.updateData(roomType);
        } catch (SQLException e) {
            System.out.println(e.getErrorCode() + e.getMessage());
            return -1;
        }
        return 1;
    }

    @Override
    public RoomType query(String typeId) {
        RoomType roomType = new RoomType();
        roomType.setTypeId(typeId);

        try {
            return (RoomType) dao.query(roomType);
        } catch (SQLException e) {
            System.out.println(e.getErrorCode() + e.getMessage());
            return null;
        }
    }

    @Override
    public ArrayList query(int page, int limit) {
        int start = (page * limit) - limit + 1; //每一页的起始位置

        if (start < 1)  //小于1的话会触发一个错误
            start = 1;  //但是理论上page和limit是由table表格生成的参数

        try {
            return dao.query(start, limit);
        } catch (SQLException e) {
            System.out.println(e.getErrorCode() + e.getMessage());
            return null;
        }
    }

    @Override
    public int queryRoomTypeNum() {

        try {
            return dao.queryDataNum();
        } catch (SQLException e) {
            System.out.println(e.getErrorCode() + e.getMessage());
            return -1;
        }
    }

    @Override
    public int queryRepeat(String typeName) {
        RoomType roomType;

        try {
            roomType = dao.queryName(typeName);
            if (!roomType.isNull()) //表示存在同名项
                return 0;
            else
                return 1;
        } catch (SQLException e) {
            System.out.println(e.getErrorCode() + e.getMessage());
            return -1;
        }
    }

}
