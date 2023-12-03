package mobile.com.backend.mapper.user;

import mobile.com.backend.dto.user.UserGeneralResponse;
import mobile.com.backend.entity.User;
import mobile.com.backend.mapper.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface UserGeneralMapper extends GenericMapper<UserGeneralResponse, User> {
}
