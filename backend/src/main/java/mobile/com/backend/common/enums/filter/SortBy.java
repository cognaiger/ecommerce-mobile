package mobile.com.backend.common.enums.filter;

public enum SortBy {
  PRICE("price"),
  RELEASE_DATE("release_date"),
  DISCOUNT("discount");

  private String value;

  SortBy(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }
}
