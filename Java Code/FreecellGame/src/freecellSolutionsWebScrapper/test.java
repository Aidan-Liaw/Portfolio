package freecellSolutionsWebScrapper;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;

public class test {
    public static void main(String[] args) throws IOException {
        ArrayList<String> movesSolution;
        Document solutionsHTMLFile;
        Elements htmlCols;
        Element htmlTable;
        Elements htmlRows;

        int gameNo = 101;
        solutionsHTMLFile = Jsoup.connect("https://freecellgamesolutions.com/std/?g=" + gameNo + "&v=All")
                .userAgent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36")
                .header("cookie", "REDACTED")
                .referrer("https://www.google.com/search?q=solution+freecell+game+number+" + gameNo + "+standard+notation&newwindow=1&ei=4VW5YZjoJIfA3LUP8I2EyAQ&ved=0ahUKEwjY3Mb14-T0AhUHILcAHfAGAUkQ4dUDCA4&uact=5&oq=solution+freecell+game+number+1+standard+notation&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BQghEKABOgQIIRAVOgcIIRAKEKABSgQIQRgASgQIRhgAUP0BWKIVYK4XaAFwAngBgAHtAYgB_AySAQYxNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz&safe=active&ssui=on")
                .get();

        System.out.println(solutionsHTMLFile);
    }
}
