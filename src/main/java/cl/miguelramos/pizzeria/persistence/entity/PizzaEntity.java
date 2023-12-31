package cl.miguelramos.pizzeria.persistence.entity;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name="pizza")
@Getter
@Setter
@NoArgsConstructor
public class PizzaEntity {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id_pizza", nullable = false)
  private Integer idPizza;

  @Column(nullable = false, length = 30, unique = true)
  private String name;

  @Column(nullable = false, length = 150)
  private String description;

  @Column(nullable = false, columnDefinition = "Decimal(5,2)")
  private double price;

  @Column(columnDefinition = "TINYINT")
  private Boolean vegetarian;

  @Column(columnDefinition = "TINYINT")
  private Boolean vegan;


  @Column(columnDefinition = "TINYINT", nullable = false)
  private Boolean available;






}
