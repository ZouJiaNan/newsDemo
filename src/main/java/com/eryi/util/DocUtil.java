package com.eryi.util;


import org.apache.poi.POIXMLDocument;
import org.apache.poi.POIXMLTextExtractor;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

import java.io.File;
import java.io.FileInputStream;


/**
 * @author ZouJiaNan
 * @version 1.0
 * @description
 * @date 2021/11/8 23:12
 */
public class DocUtil {
    public static String readDoc(String path){
        File file = new File(path);
        String str = "";
        try {
            FileInputStream fis = new FileInputStream(file);
            HWPFDocument doc = new HWPFDocument(fis);
            String doc1 = doc.getDocumentText();
            System.out.println(doc1);
            StringBuilder doc2 = doc.getText();
            System.out.println(doc2);
            Range rang = doc.getRange();
            String doc3 = rang.text();
            System.out.println(doc3);
            fis.close();
            str = doc1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String  readDocx(String path){
        File file = new File(path);
        String str = "";
        try {
            FileInputStream fis = new FileInputStream(file);
            XWPFDocument xdoc = new XWPFDocument(fis);
            XWPFWordExtractor extractor = new XWPFWordExtractor(xdoc);
            String doc1 = extractor.getText();
            extractor.getText();
//            System.out.println(doc1);
            fis.close();
            str = doc1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }
}
