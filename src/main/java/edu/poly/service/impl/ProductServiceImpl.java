package edu.poly.service.impl;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.stereotype.Service;

import edu.poly.DAO.OrderDetailDAO;
import edu.poly.DAO.ProductDAO;
import edu.poly.entity.Product;
import edu.poly.service.ProductService;

@Service
public class ProductServiceImpl  implements ProductService{
	@Autowired
	ProductDAO ProductDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;

	public ProductServiceImpl(ProductDAO ProductDAO) {
		this.ProductDAO = ProductDAO;
	}

	@Override
	public <S extends Product> S save(S entity) {
		return ProductDAO.save(entity);
	}

	@Override
	public <S extends Product> Optional<S> findOne(Example<S> example) {
		return ProductDAO.findOne(example);
	}

	@Override
	public List<Product> findAll() {
		return ProductDAO.findAll();
	}

	@Override
	public Page<Product> findAll(Pageable pageable) {
		return ProductDAO.findAll(pageable);
	}

	@Override
	public List<Product> findAll(Sort sort) {
		return ProductDAO.findAll(sort);
	}

	@Override
	public List<Product> findAllById(Iterable<Integer> ids) {
		return ProductDAO.findAllById(ids);
	}

	@Override
	public Optional<Product> findById(Integer id) {
		return ProductDAO.findById(id);
	}

	@Override
	public <S extends Product> List<S> saveAll(Iterable<S> entities) {
		return ProductDAO.saveAll(entities);
	}

	@Override
	public void flush() {
		ProductDAO.flush();
	}

	@Override
	public <S extends Product> S saveAndFlush(S entity) {
		return ProductDAO.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Integer id) {
		return ProductDAO.existsById(id);
	}

	@Override
	public <S extends Product> List<S> saveAllAndFlush(Iterable<S> entities) {
		return ProductDAO.saveAllAndFlush(entities);
	}

	@Override
	public <S extends Product> Page<S> findAll(Example<S> example, Pageable pageable) {
		return ProductDAO.findAll(example, pageable);
	}

	@Override
	public void deleteInBatch(Iterable<Product> entities) {
		ProductDAO.deleteInBatch(entities);
	}

	@Override
	public <S extends Product> long count(Example<S> example) {
		return ProductDAO.count(example);
	}

	@Override
	public void deleteAllInBatch(Iterable<Product> entities) {
		ProductDAO.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return ProductDAO.count();
	}

	@Override
	public <S extends Product> boolean exists(Example<S> example) {
		return ProductDAO.exists(example);
	}

	@Override
	public void deleteById(Integer id) {
		ProductDAO.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Integer> ids) {
		ProductDAO.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(Product entity) {
		ProductDAO.delete(entity);
	}

	@Override
	public <S extends Product, R> R findBy(Example<S> example, Function<FetchableFluentQuery<S>, R> queryFunction) {
		return ProductDAO.findBy(example, queryFunction);
	}

	@Override
	public void deleteAllById(Iterable<? extends Integer> ids) {
		ProductDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		ProductDAO.deleteAllInBatch();
	}

	@Override
	public Product getOne(Integer id) {
		return ProductDAO.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends Product> entities) {
		ProductDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		ProductDAO.deleteAll();
	}

	@Override
	public Product getById(Integer id) {
		return ProductDAO.getById(id);
	}

	@Override
	public <S extends Product> List<S> findAll(Example<S> example) {
		return ProductDAO.findAll(example);
	}

	@Override
	public <S extends Product> List<S> findAll(Example<S> example, Sort sort) {
		return ProductDAO.findAll(example, sort);
	}


}