package com.devstack.app.service.impl;

import com.devstack.app.dao.CustomerDao;
import com.devstack.app.entity.Customer;
import com.devstack.app.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//@Component >> controller,repository,service
@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
     private CustomerDao customerDao;

    @Override
    @Transactional
    public List<Customer> findAllCustomers() {
        return customerDao.findAllCustomers();
    }

    @Override
    @Transactional
    public void saveCustomer(Customer customer) {
        customerDao.saveCustomer(customer);
    }

    @Override
    @Transactional
    public Customer findCustomer(long id) {
        return customerDao.findCustomer(id);
    }

    @Override
    @Transactional
    public void deleteCustomer(long id) {
        customerDao.deleteCustomer(id);
    }
}
