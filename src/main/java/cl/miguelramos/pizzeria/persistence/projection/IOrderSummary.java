package cl.miguelramos.pizzeria.persistence.projection;

import java.time.LocalDateTime;

public interface IOrderSummary {
  Integer getIdOrder();
  String getCustomerName();
  LocalDateTime getOrdersDate();
  Double getOrderTotal();
  String getPizzaNames();

}
