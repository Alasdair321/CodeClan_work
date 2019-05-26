package com.codeclan.example.PirateService.models;

import javax.persistence.OneToMany;
import java.util.ArrayList;
import java.util.List;

public class Ship {
    @OneToMany(mappedBy = "ship")
    private List<Pirate> pirates;
    private String name;

    public Ship(String name) {
        this.name=name;
        this.pirates = new ArrayList<>();
    }

    public Ship() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public List<Pirate> getPirates() {
        return pirates;
    }

    public void setPirates(List<Pirate> pirates) {
        this.pirates = pirates;
    }


}
