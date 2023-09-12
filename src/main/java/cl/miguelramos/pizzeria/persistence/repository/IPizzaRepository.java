package cl.miguelramos.pizzeria.persistence.repository;

import cl.miguelramos.pizzeria.persistence.entity.PizzaEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface IPizzaRepository extends CrudRepository<PizzaEntity, Integer> {

  // Querys Methods
  // vamos a obtener la pizzas que estan disponibles
  List<PizzaEntity> findAllByAvailableTrueOrderByPrice();
  /*
  * - findAll: "selecciona todas las filas" en el contexto de JPA
  * - By: Se utiliza para definir condiciones (condición 'available')
  * - AvailableTrue: "donde el campo 'available' es verdadero
  * - OrderBy: Cómo deseas ordenar los resultados de la consulta
  * - Price: finalmente queremos ordenar por el precio
  *
  * SELECT * FROM pizza WHERE available = TRUE ORDER BY price; = findAllByAvailableTrueOrderByPrice
  * */

  //* Buscar una Pizza por su nombre

  PizzaEntity findAllByAvailableTrueAndNameIgnoreCase(String name);
  /*
  * And: Combina condiciones
  * NameIgnoreCase: Filtra el campo name si hacemos match con el valor proporcionado y ademas ignorando la diferencia entre mayusculas
  * y minúsculas
  * */

  // Obtener las pizzas que tengan un ingrediente en especifico (en su description)
  List<PizzaEntity> findAllByAvailableTrueAndDescriptionContainingIgnoreCase(String description);

  /*
  * DescriptionContaining: Filtra los registros donde del description para ver si tiene el valor proporcinado
  * IgnoreCase: Ignora entre mayusculas y minusculas
  * */

}
