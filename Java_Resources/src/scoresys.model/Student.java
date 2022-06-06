package scoresys.model;

public class Student {
  private String no;
  private String name;
  private String password;
  private String clazz;
  private String position;
  private int scorce;

  public Student(String no, String name, String password, String clazz, String position, int scorce) {
    this.no = no;
    this.name = name;
    this.password = password;
    this.clazz = clazz;
    this.position = position;
    this.scorce = scorce;
  }
  public Student() {

  }
  public String getNo() {
    return no;
  }

  public void setNo(String no) {
    this.no = no;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getClazz() {
    return clazz;
  }

  public void setClazz(String clazz) {
    this.clazz = clazz;
  }

  public String getPosition() {
    return position;
  }

  public void setPosition(String position) {
    this.position = position;
  }

  public int getScorce() {
    return scorce;
  }

  public void setScorce(int scorce) {
    this.scorce = scorce;
  }
}
