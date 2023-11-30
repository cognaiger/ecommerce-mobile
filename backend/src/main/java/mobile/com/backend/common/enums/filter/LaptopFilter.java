package mobile.com.backend.common.enums.filter;

import lombok.RequiredArgsConstructor;

public enum LaptopFilter {
  BRAND("brand"),
  SERIES("series"),
  SCREEN_SIZE("screenSize"),
  STORAGE("storage"),
  OS("os"),
  CPU("cpu"),
  GPU("gpu"),
  RAM("ram");

  private String value;

  LaptopFilter(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }
}
