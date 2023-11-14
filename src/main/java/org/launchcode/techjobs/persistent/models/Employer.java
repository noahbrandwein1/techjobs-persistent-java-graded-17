package org.launchcode.techjobs.persistent.models;

import jakarta.persistence.Entity;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
interface EmployerRepository extends CrudRepository<Employer, Integer> {

}

@Entity
public class Employer extends AbstractEntity {

    @NotBlank
    @Size(max = 55, message = "Number of characters must be less than or equal to 55")
    private String location;

    public Employer(){

    }

    public Employer(String name, String location) {
        setName(name);
        this.location = location;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}
