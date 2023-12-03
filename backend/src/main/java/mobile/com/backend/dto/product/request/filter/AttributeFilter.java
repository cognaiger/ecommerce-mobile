package mobile.com.backend.dto.product.request.filter;

import java.util.List;

public abstract class AttributeFilter {

  public static <T extends AttributeFilter> List<AttributeFilter> castList(List<T> list) {
    return (List<AttributeFilter>) list;
  }

  protected List<String> values;
  public abstract String getFilter();
  public List<String> getValues() {
    return values;
  }
}
