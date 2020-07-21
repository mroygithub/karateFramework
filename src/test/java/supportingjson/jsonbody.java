

package supportingjson;
import java.io.FileWriter;
import java.io.IOException;

public class jsonbody {


    public static String bodyis(String Tittle , String Body , int UserID)
    {return "{\"title\":\""+Tittle+"\",\"body\":\""+Body+"\",\"userId\":\""+UserID+"\"}";}


    public static String writenotepad(String text){

        try {
            FileWriter writer = new FileWriter("/Users/mithunroy/IdeaProjects/commavenKarate/src/test/java/supportingjson/MyFile.txt", true);
            //writer.write("Hello World");
            writer.write("\r\n");   // write new line
            writer.write(text);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "PASS";

    }


}
