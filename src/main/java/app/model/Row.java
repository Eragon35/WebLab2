package app.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Row {
    private final Point point;
    private final String date;

    public Row(Point point) {
        this.point = point;
        SimpleDateFormat formatter = new SimpleDateFormat("dd MM yyyy HH:mm:ss");
        this.date = formatter.format(new Date(System.currentTimeMillis()));
    }

    @Override
    public String toString() { return "<tr>" + point.toString() + "<td>" + date + "</td></tr>"; }
}
