package application.model;

public enum GameType {
    OW("Overwatch", "ow.jpg"),
    LOL("League of Legends", "lol.jpg"),
    FIFA("FIFA", "fifa.jpg"),
    WOW("World of Warcraft", "wow.jpg"),
    CSGO("Counter-Strike: Global Offensive", "csgo.jpg");

    private String name;
    private String icon;

    GameType(String name, String icon) {
        this.name = name;
        this.icon = icon;
    }

    public String getName() {
        return name;
    }

    public String getIcon() {
        return "/img/" + icon;
    }
}
