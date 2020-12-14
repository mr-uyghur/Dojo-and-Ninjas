package com.ali.DojoAndNinjas.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ali.DojoAndNinjas.models.Dojo;

@Repository
public interface DojoRepo extends CrudRepository<Dojo, Long>{
    // this method retrieves all the books from the database
    List<Dojo> findAll();
}
