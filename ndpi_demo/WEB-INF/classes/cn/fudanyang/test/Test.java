package cn.fudanyang.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cn.fudanyang.pojo.ClickPojo;

public class Test {

    public static void main(String[] args) throws IOException {
        //mybatis�������ļ�
        String resource = "conf.xml";
        //ʹ�������������mybatis�������ļ�����Ҳ���ع�����ӳ���ļ���
        InputStream is = Test.class.getClassLoader().getResourceAsStream(resource);
        //����sqlSession�Ĺ���
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
        SqlSession session = sessionFactory.openSession();
        String statement = "cn.fudanyang.mapping.ClickMapper.getClickInfo";//ӳ��sql�ı�ʶ�ַ���
        ClickPojo click=session.selectOne(statement,5);
        System.out.println(click);
    }
}