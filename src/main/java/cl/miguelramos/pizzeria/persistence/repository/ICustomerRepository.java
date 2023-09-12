package cl.miguelramos.pizzeria.persistence.repository;

import cl.miguelramos.pizzeria.persistence.entity.CustomerEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ICustomerRepository extends CrudRepository<CustomerEntity,String> {

  // Obtener a un cliente por su telefono

  // SELECT c FROM customer c WHERE ="5454454";
  // JPQL
  @Query(value="SELECT c FROM CustomerEntity c WHERE c.phoneNumber =:phone")
  CustomerEntity findByPhone(@Param("phone") String phone);
}
