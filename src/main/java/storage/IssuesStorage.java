package storage;

import models.Issue;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

public class IssuesStorage extends Storage {
    public static void init() {
        filename = "db.issues.json";
        directory = "./";
    }
}
