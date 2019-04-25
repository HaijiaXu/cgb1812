package com.ed.util;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ObjectMapperUtil {
	private static final ObjectMapper mapper=new ObjectMapper();

	public static String toString(Object object) {
		if(object==null) {
			return null;
		}
		try {
			return mapper.writeValueAsString(object);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public static <T>T toObject(String json, Class<T> target) {
		if(json==null||target==null) {
			return null;
		}
		try {
			return mapper.readValue(json, target);
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
}
