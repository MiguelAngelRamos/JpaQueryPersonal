package cl.miguelramos.pizzeria.web.controller;

import cl.miguelramos.pizzeria.persistence.entity.OrderEntity;
import cl.miguelramos.pizzeria.persistence.projection.IOrderSummary;
import cl.miguelramos.pizzeria.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/orders")
public class OrderController {
  private final OrderService orderService;

  @Autowired
  public OrderController(OrderService orderService) {
    this.orderService = orderService;
  }

  @GetMapping
  public ResponseEntity<List<OrderEntity>> getAll() {
    return ResponseEntity.ok(this.orderService.getAll());
  }

  @GetMapping("/today")
  public ResponseEntity<List<OrderEntity>> getTodayOrders() {
    return ResponseEntity.ok(this.orderService.getTodayOrders());
  }

  @GetMapping("/summary/{id}")
  public ResponseEntity<IOrderSummary> getSummary(@PathVariable int id) {
    return ResponseEntity.ok(this.orderService.getSummary(id));
  }

  //* localhost:8080/api/orders/outside
  @GetMapping("/outside")
  public ResponseEntity<List<OrderEntity>> getOutSideOrders() {
    return ResponseEntity.ok(this.orderService.getOutSideOrders());
  }

}
