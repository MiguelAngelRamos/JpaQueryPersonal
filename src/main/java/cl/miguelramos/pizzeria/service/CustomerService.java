package cl.miguelramos.pizzeria.service;

import cl.miguelramos.pizzeria.persistence.entity.CustomerEntity;
import cl.miguelramos.pizzeria.persistence.repository.ICustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

  private final ICustomerRepository customerRepository;

  @Autowired
  public CustomerService(ICustomerRepository customerRepository) {
    this.customerRepository = customerRepository;
  }

  // Nuestro método personalizado

  public CustomerEntity findByPhone(String phone) {
    return this.customerRepository.findByPhone(phone);
  }
}
