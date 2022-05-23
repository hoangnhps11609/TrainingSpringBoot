package edu.poly.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;

import edu.poly.entity.Order;
import edu.poly.entity.OrderDetail;
import edu.poly.service.OrderDetailService;
import edu.poly.service.OrderService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orders")
public class OrderController {
	
	@Autowired
	OrderService OrderService;
	
	@Autowired
	OrderDetailService orderDetailService;
	
	@GetMapping()
	public List<Order> getAll() {
		return OrderService.findAll();
	}
	
	@PostMapping()
	public Order create(@RequestBody JsonNode orderData) {		
		return OrderService.create(orderData);
	}
	
	@GetMapping("{id}")
	public List<OrderDetail> getOrderDetail(@PathVariable("id") Long id){
		List<OrderDetail> orderDetails = orderDetailService.findByOrderId(id);	
		return orderDetails;
	} 
}
