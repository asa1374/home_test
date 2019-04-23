package com.yeogil.web.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.yeogil.web.domain.CityDTO;

@Repository
public interface CityMapper {
	public void insertCity(CityDTO city);
	public List<CityDTO> selectAllCity(HashMap<String, Object> map);
	public List<CityDTO> selectSomeCity(HashMap<String, Object> map);
	public CityDTO selectCustomer(CityDTO city);
	public int countCity();
	public void updateCity(CityDTO city);
	public void deleteCity(CityDTO city);
}
