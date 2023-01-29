/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */


import java.io.File;
import java.io.FileNotFoundException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;

/**
 *
 * @author 84384
 */
public class ReadFile {

    public String getCurrentPath() {
        Path currentRelativePath = Paths.get("");
        String s = currentRelativePath.toAbsolutePath().toString();
        return s;
    }

    public String GetReadText(String path) {
        String data= "";
        try {
            File myObj = new File(path);
            Scanner myReader = new Scanner(myObj);
            while (myReader.hasNextLine()) {
                data= data+ myReader.nextLine();
                System.out.println(data);
            }
            myReader.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
        return data;
    }

    public static void main(String args[]) {
        ReadFile RF = new ReadFile();
        String CurrentPath= RF.getCurrentPath();
        System.out.println("Current path: "+RF.getCurrentPath());
        System.out.println(RF.GetReadText("C:\\Users\\84384\\Desktop\\fpt\\ki4\\PRJ301\\code\\SaveFunction\\src\\model\\text.txt"));
//        System.out.println("C:\\Users\\84384\\Desktop\\fpt\\ki4\\PRJ301\\code\\SaveFunction\\src\\model");
    }
}
