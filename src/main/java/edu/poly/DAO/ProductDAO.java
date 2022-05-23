package edu.poly.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import edu.poly.entity.OrderDetail;
import edu.poly.entity.Product;

@Repository
public interface ProductDAO extends JpaRepository<Product, Integer> {
	
	
}