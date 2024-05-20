package simple_books_api;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.*;
import org.junit.jupiter.api.Test;

import java.io.File;
import net.masterthought.cucumber.Configuration;
import java.util.*;

import static org.junit.jupiter.api.Assertions.assertEquals;


public class testParallel {


    @Test
    void testParallel() {
        Results results = Runner.path("classpath:simple_books_api").outputCucumberJson(true).parallel(10);
        generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[]{"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "myproject");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }

}
