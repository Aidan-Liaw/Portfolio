package freecellSolutionsWebScrapper;

import com.opencsv.*;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvException;

import java.io.FileReader;
import java.io.IOException;
import java.util.List;

public class csvMoveReader {
    public static void main(String[] args) throws IOException, CsvException {
        for (int fileNo = 1; fileNo <= 9; fileNo++) {
            CSVReader reader = new CSVReader(
                    new FileReader(
                            "/Users/aidanliaw/Desktop/freecellSolutions/freecellSolutions" + fileNo + ".csv"));
            List<String[]> rows = reader.readAll();
            for (String[] row : rows) {
                for (String move : row) {
                    System.out.print(move + ", ");
                }
                System.out.println();
            }
        }
    }

    public static List<String[]> getCSVFileContent(int fileNo) throws IOException, CsvException {
//        CSVReader reader = new CSVReader(
//                new FileReader(
//                        "/Users/aidanliaw/Desktop/freecellSolutions/freecellSolutions" + fileNo + ".csv"));
//        return reader.readAll();
        return new CSVReader(new FileReader
                ("/Users/aidanliaw/Desktop/freecellSolutions/freecellSolutions" + fileNo + ".csv")
                            ).readAll();
    }

    public static char getSelectionChar (String inp) {
        return inp.charAt(0);
    }

    public static char getDestinationChar (String inp) {
        return inp.charAt(1);
    }
}
