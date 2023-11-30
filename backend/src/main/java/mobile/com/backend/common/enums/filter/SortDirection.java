package mobile.com.backend.common.enums.filter;

public enum SortDirection {
  ASC("asc"),
  DESC("desc");

  private String value;

  SortDirection(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }
}
