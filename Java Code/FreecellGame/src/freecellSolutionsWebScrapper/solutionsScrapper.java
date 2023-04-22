package freecellSolutionsWebScrapper;

import com.opencsv.CSVWriter;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class solutionsScrapper {
    public static void main(String[] args) throws IOException {

        ArrayList<String> movesSolution;
        Document solutionsHTMLFile;
        Elements htmlCols;
        Element htmlTable;
        Elements htmlRows;
        File csvFile = new File("/Users/aidanliaw/freecellSolutions.csv");
        FileWriter outputFile = new FileWriter(csvFile);
        CSVWriter writer = new CSVWriter(outputFile);

        for (int gameNo = 1; gameNo < 11982; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        for (int gameNo = 11983; gameNo < 146692; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        for (int gameNo = 146693; gameNo < 186216; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        for (int gameNo = 186217; gameNo < 455889; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        for (int gameNo = 455890; gameNo < 495505; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        for (int gameNo = 495506; gameNo < 512118; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        for (int gameNo = 512119; gameNo < 517776; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        for (int gameNo = 517777; gameNo < 781948; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        for (int gameNo = 781949; gameNo < 1000001; gameNo++) {
            movesSolution = new ArrayList<>();
            solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                    .userAgent("REDACTED")
                    .header("cookie", "REDACTED")
                    .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                    .get();
            htmlTable = solutionsHTMLFile.select("table").get(0);
            htmlRows = htmlTable.select("tr");
            movesSolution.add(Integer.toString(gameNo));
            for (Element row : htmlRows) {
                htmlCols = row.select("td");
                for (Element col : htmlCols) {
                    movesSolution.add(col.text());
                }
            }
            movesSolution.removeIf(move -> move.isEmpty() || move.charAt(0) == 'W' || move.charAt(0) == 'I');
            writer.writeNext(movesSolution.toArray(new String[movesSolution.size()]));
            System.out.println(gameNo);
        }

        writer.close();

    }
}
