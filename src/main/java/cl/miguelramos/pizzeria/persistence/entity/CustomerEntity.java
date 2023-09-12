package cl.miguelramos.pizzeria.persistence.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
@Getter
@Setter
@NoArgsConstructor
public class CustomerEntity {

  @Id
  @Column(name="id_customer", nullable = false, length = 15)
  private String idCustomer;

  @Column(nullable = false, length = 60)
  private String name;

  @Column(length = 100)
  private String address;

  @Column(nullable = false, length = 50, unique = true)
  private String email;

  @Column(name="phone_number", length = 20)
  private String phoneNumber;
}
