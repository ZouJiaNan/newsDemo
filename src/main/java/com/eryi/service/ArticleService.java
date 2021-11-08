package com.eryi.service;

import com.eryi.Mapper.ArticleMapper;
import com.eryi.pojo.Article;
import com.eryi.util.DocUtil;
import org.apache.poi.xwpf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @author ZouJiaNan
 * @version 1.0
 * @description
 * @date 2021/10/30 20:36
 */
@Service
public class ArticleService {
    @Autowired
    ArticleMapper articleMapper;

    public void upload(Article article,MultipartFile file){
        if(file.isEmpty()){
            System.out.println("文件不能为空，上传失败!");
        }
        try {
            file.transferTo(new File("D:\\articles\\"+ article.getFile_id()));
//            uploadDocx(article,file);
            articleMapper.add(article);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void add(Article article){
        articleMapper.add(article);
    }

    public List<Article> queryAll(){
        return articleMapper.queryAll();
    }

    public List<Article> queryByAuthor(String author){
        return articleMapper.queryByAuthor(author);
    }

    public List<Article> queryByType(String type){
        return articleMapper.queryByType(type);
    }

    public List<String> article(String file_id){
        List<String> article=new ArrayList<String>();

        try {
            if(file_id.contains("doc")||file_id.contains("docx")) {
                article.add(DocUtil.readDocx("D:\\articles\\" + file_id));
            }
            if(file_id.contains("txt")) {
                article = readFile("D:\\articles\\" + file_id, article);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return article;
    }

    private List<String> readFile(String filaPath,List<String> str){
        File file = new File(filaPath);
        BufferedReader reader = null;
        StringBuffer sbf = new StringBuffer();
        try {
            reader = new BufferedReader(new FileReader(file));
            String tempStr;
            while ((tempStr = reader.readLine()) != null) {
//                System.out.println(tempStr+"\n");
                str.add(tempStr+"\n");
            }
            reader.close();
            return str;
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
        return str;
    }

    private Map<String,String> uploadDocx(Article article,MultipartFile file) throws Exception{
        File tofile=new File("D:\\articles\\"+ article.getFile_id());
        FileWriter fileWriter=new FileWriter("D:\\articles\\"+ article.getFile_id());
        Map<String, String> result = new HashMap<String, String>(30);
        try {
            InputStream inputStream = file.getInputStream();
            XWPFDocument xdoc = new XWPFDocument(inputStream);
            List<XWPFParagraph> paras = xdoc.getParagraphs();
            for (XWPFParagraph para : paras) {
                //当前段落的属性
                //       CTPPr pr = para.getCTP().getPPr();
                fileWriter.append(para.getText()+"\r\n");
                System.out.println(para.getText()+"\n");
            }
            //获取文档中所有的表格
            List<XWPFTable> tables = xdoc.getTables();
            List<XWPFTableRow> rows;
            List<XWPFTableCell> cells;
            int index = 1;
            String value = "";
            String key = "";
            for (XWPFTable table : tables) {
                //表格属性
                //       CTTblPr pr = table.getCTTbl().getTblPr();
                //获取表格对应的行
                rows = table.getRows();
                for (XWPFTableRow row : rows) {
                    //获取行对应的单元格
                    cells = row.getTableCells();
                    for (XWPFTableCell cell : cells) {
                        System.out.println(cell.getText());
                        String text = cell.getText();
                        text = text.replaceAll("\r", "");
                        text = text.replaceAll("\r\n", "");
                        text = text.replaceAll("\\u0007", "");
                        if (index % 2 != 0) {
                            key = text;
                        } else {
                            StringBuffer stringBuffer = new StringBuffer();
                            value = text;
                            stringBuffer.append(key).append(":").append(value);
                            result.put(key, value);
                        }
                        index++;
                    }
                }
            }
            inputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

        }
        return result;

    }
}
