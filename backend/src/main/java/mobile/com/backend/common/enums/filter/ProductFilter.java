package mobile.com.backend.common.enums.filter;

public enum ProductFilter {

  BRAND("brand");

  private String value;

  ProductFilter(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }
}
