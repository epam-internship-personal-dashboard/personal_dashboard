package com.github.gokolo.personaldashboard.data.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class AddressEntity {
    @Id
    @GeneratedValue
    private int id;

    private String street;
    private String houseNumber;
    private String zipCode;
    private String city;
    private String country;
}