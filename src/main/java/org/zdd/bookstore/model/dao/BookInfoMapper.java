package org.zdd.bookstore.model.dao;

import org.zdd.bookstore.common.utils.MyMapper;
import org.zdd.bookstore.model.entity.BookInfo;

import java.util.List;

public interface BookInfoMapper extends MyMapper<BookInfo> {

    List<BookInfo> findAllAllBylook();
}