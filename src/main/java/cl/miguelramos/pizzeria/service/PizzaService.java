package cl.miguelramos.pizzeria.service;

import cl.miguelramos.pizzeria.persistence.entity.PizzaEntity;
import cl.miguelramos.pizzeria.persistence.repository.IPizzaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PizzaService {
  private final IPizzaRepository pizzaRepository;

  @Autowired
  public PizzaService(IPizzaRepository pizzaRepository) {
    this.pizzaRepository = pizzaRepository;
  }

  public List<PizzaEntity> getAll() {
    return (List<PizzaEntity>) this.pizzaRepository.findAll();
  }

  public PizzaEntity get(int idPizza) {
    return this.pizzaRepository.findById(idPizza).orElse(null); // si no encuentra nada retorna null
  }

  public PizzaEntity save(PizzaEntity pizza) {
    return this.pizzaRepository.save(pizza);
  }

  public void delete(int idPizza) {
    this.pizzaRepository.deleteById(idPizza);
  }

  public boolean exists(int idPizza) {
    return this.pizzaRepository.existsById(idPizza); // retorna true si la pizza existe.
  }

  //* Query method
  // Pizza disponible
  public List<PizzaEntity> getAvailable() {
    return this.pizzaRepository.findAllByAvailableTrueOrderByPrice();
  }

  // Por el nombre
  public PizzaEntity getByName(String name) {
    return this.pizzaRepository.findAllByAvailableTrueAndNameIgnoreCase(name);
  }

  // Obtener una pizza por un ingrediente
  public List<PizzaEntity> getWith(String ingredient) {
    return this.pizzaRepository.findAllByAvailableTrueAndDescriptionContainingIgnoreCase(ingredient);
  }


}
