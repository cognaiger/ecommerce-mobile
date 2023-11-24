package mobile.com.backend.mapper.request.entity;

public interface GenericCommandMapper<D, E> {
  E toEntity(D request);

}
