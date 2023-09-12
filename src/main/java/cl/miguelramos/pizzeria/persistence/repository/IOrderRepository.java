package cl.miguelramos.pizzeria.persistence.repository;

import cl.miguelramos.pizzeria.persistence.entity.OrderEntity;
import org.springframework.data.repository.CrudRepository;

import java.time.LocalDateTime;
import java.util.List;

public interface IOrderRepository  extends CrudRepository<OrderEntity, Integer> {

  // las ordenes del dia del hoy
  List<OrderEntity> findAllByDateAfter(LocalDateTime date);
  // SELECT * FROM order WHERE date > ?;
}
