package cl.miguelramos.pizzeria.service;

import cl.miguelramos.pizzeria.persistence.entity.OrderEntity;
import cl.miguelramos.pizzeria.persistence.projection.IOrderSummary;
import cl.miguelramos.pizzeria.persistence.repository.IOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

@Service
public class OrderService {
  private final IOrderRepository orderRepository;
  private static final String DELIVERY = "D"; // ENTREGA A DOMICILIO
  private static final String CARRYOUT = "C"; // PARA LLEVAR
  private static final String ON_SITE = "S"; // CONSUME EN EL LOCAL
  @Autowired
  public OrderService(IOrderRepository orderRepository) {
    this.orderRepository = orderRepository;
  }

  public List<OrderEntity> getAll() {
    return (List<OrderEntity>) this.orderRepository.findAll();
  }

  public List<OrderEntity> getTodayOrders() {
    LocalDateTime today = LocalDate.now().atTime(0,0);
    return this.orderRepository.findAllByDateAfter(today);
  }

  public IOrderSummary getSummary(int orderId) {
    return this.orderRepository.findSummary(orderId);
  }

  public List<OrderEntity> getOutSideOrders() {
    List<String> methods = Arrays.asList(DELIVERY, CARRYOUT);
    return this.orderRepository.findAllByMethodIn(methods);
  }

}
