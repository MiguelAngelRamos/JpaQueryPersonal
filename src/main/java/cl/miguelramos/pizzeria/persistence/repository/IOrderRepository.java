package cl.miguelramos.pizzeria.persistence.repository;

import cl.miguelramos.pizzeria.persistence.entity.OrderEntity;
import cl.miguelramos.pizzeria.persistence.projection.IOrderSummary;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;

public interface IOrderRepository  extends CrudRepository<OrderEntity, Integer> {

  // las ordenes del dia del hoy
  List<OrderEntity> findAllByDateAfter(LocalDateTime date);
  // SELECT * FROM order WHERE date > ?;

  @Query(value =
          "SELECT  po.id_order AS idOrder, cu.name AS customerName, po.date AS orderDate," +
                  "        po.total AS orderTotal, GROUP_CONCAT(pi.name) AS pizzaNames " +
                  "FROM   pizza_order po  " +
                  "   INNER JOIN customer cu ON po.id_customer = cu.id_customer  " +
                  "   INNER JOIN order_item oi ON po.id_order = oi.id_order  " +
                  "   INNER JOIN pizza pi ON oi.id_pizza = pi.id_pizza  " +
                  "WHERE  po.id_order = :orderId " +
                  "GROUP BY po.id_order, cu.name, po.date, po.total", nativeQuery = true)
  IOrderSummary findSummary(@Param("orderId") int orderId);

  // Delivery and Carryout
  List<OrderEntity> findAllByMethodIn(List<String> methods);

  /*
  * MethodIn : Selecciona aquellos registros en donde el valor del campo method, exista dentro de una lista
  * */

}
