package application.model;

public enum GameType {
    OW("Overwatch", "ow.png"),
    LOL("League of Legends", "lol.png"),
    RL("Rocket League ", "rl.png"),
    WOW("World of Warcraft", "wow.png"),
    CSGO("Counter-Strike: Global Offensive", "csgo.png");

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
        return "/pictures/game-picture/" + icon;
    }

}
