package edu.poly.DAO;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.entity.OrderDetail;

@Repository
public interface OrderDetailDAO extends JpaRepository<OrderDetail, Integer> {

	
	@Query
	("select * from OrderDetail od where od.order.id = ?1")
	List<OrderDetail> findByOrderId(Long id);
}
