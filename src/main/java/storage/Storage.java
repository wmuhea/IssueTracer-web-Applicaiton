package storage;

import com.google.gson.Gson;
import models.Issue;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

public abstract class Storage {
    protected static String filename;
    protected static String directory;
    protected static Gson gson = new Gson();
    protected static String separator = System.lineSeparator();

    private static File getFile() throws FileNotFoundException {
        if(filename == null) throw new FileNotFoundException("File name required");
        if(directory == null) directory = "./";
        return new File(directory + filename);
    }

    public static boolean writeDb(Map<String, ArrayList<Issue>> data)  {
        try {
            FileWriter fileWriter = new FileWriter(getFile());
            fileWriter.write(gson.toJson(data));
            fileWriter.close();
            return true;
        } catch(IOException ex) {
            ex.printStackTrace();
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            return false;
        }
    };

    public static void load() {

    }
}
