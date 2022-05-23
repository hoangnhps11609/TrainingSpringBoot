package edu.poly.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import edu.poly.entity.Order;

@Repository
public interface OrderDAO extends JpaRepository<Order, Integer> {

}
	
	
