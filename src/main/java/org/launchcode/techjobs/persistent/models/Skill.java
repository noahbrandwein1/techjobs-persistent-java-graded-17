package org.launchcode.techjobs.persistent.models;

import jakarta.persistence.Entity;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

@Entity
public class Skill extends AbstractEntity {

    @NotBlank
    @Size(max = 100, message = "Description must be less than or equal to 100 characters")
    private String description;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
