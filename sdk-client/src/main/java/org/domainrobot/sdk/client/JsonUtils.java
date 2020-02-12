package org.domainrobot.sdk.client;

import java.io.IOException;
import java.util.TimeZone;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

public class JsonUtils {

	private static final ObjectMapper MAPPER = create();

	public static ObjectMapper getMapper() {
		return MAPPER;
	}

	public static <T> T deserialize(byte[] binaryData, Class<T> cls) throws IOException {
		try {
			T t = MAPPER.readValue(binaryData, cls);// InvalidFormatException
			return t;
		} catch(IOException e) {
			throw e;
		}
	}

	public static ObjectMapper create() {
		ObjectMapper mapper = new ObjectMapper();

		// Don't throw an exception when json has extra fields you are
		// not serializing on. This is useful when you want to use a pojo
		// for deserialization and only care about a portion of the json
		mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);

		// Ignore null values when writing json.
		mapper.configure(SerializationFeature.WRITE_NULL_MAP_VALUES, false);
		mapper.setSerializationInclusion(Include.NON_NULL);

		// set datetime format to jsr310 (with timezone: 2015-09-28T09:38:59.000+0000)
		// mapper.setDateFormat(new JsonDateFormat());
		mapper.setTimeZone(TimeZone.getDefault());
		// mapper.registerModule(new JavaTimeModule());
		mapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);

		mapper.setVisibility(
			mapper.getSerializationConfig().getDefaultVisibilityChecker()
					// forces to set @JsonProperty
					.withFieldVisibility(JsonAutoDetect.Visibility.NONE)
					.withGetterVisibility(JsonAutoDetect.Visibility.NONE)
					.withSetterVisibility(JsonAutoDetect.Visibility.NONE)
					.withCreatorVisibility(JsonAutoDetect.Visibility.NONE)
					.withIsGetterVisibility(JsonAutoDetect.Visibility.NONE));

		return mapper;
	}

}
