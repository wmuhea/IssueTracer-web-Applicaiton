package storage;

import com.google.gson.Gson;
import models.Issue;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class Storage {
    protected static String filename;
    protected static String baseDir = System.getProperty("catalina.base");
    protected static Gson gson = new Gson();
    protected static String separator = File.separator;
    protected static String directory = "data";

    private static File getDir() {
        File dirPath = new File(baseDir + separator + directory);

        if(!dirPath.exists()) dirPath.mkdir();

        return dirPath;
    }

    private static File getFile() {
        return new File(getDir() + separator + filename);
    }

    private static void setUpFile() throws FileNotFoundException {
        if(filename == null) throw new FileNotFoundException("File name required");

        try {
            getFile().createNewFile();
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

    public static boolean writeDb(Map<String, List<Issue>> data)  {
        try {
            setUpFile();
            FileWriter fileWriter = new FileWriter(getFile());
            fileWriter.write(gson.toJson(data));
            fileWriter.close();
            return true;
        } catch(IOException ex) {
            ex.printStackTrace();
        } catch(Exception e) {
            e.printStackTrace();
        }

        return false;
    };

    public static Map<String, List<Issue>> load() {
        try {
            File file = getFile();
            FileReader fileReader = new FileReader(file);
            Map<String, List<Issue>> result = gson.fromJson(fileReader, Map.class);
            fileReader.close();
            return result;

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            return new HashMap<>();
        }

    }
}
