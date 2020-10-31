package app.model;

public class Point {
    double x;
    double y, r;
    boolean income;

    public Point(double x, double y, double r, boolean income) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.income = income;
    }

    @Override
    public String toString() {
        return "<td>" +
                x + "</td><td>" +
                y + "</td><td>" +
                r + "</td><td>" +
                income + "</td>";
    }
}
