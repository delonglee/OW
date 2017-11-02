package com.situ.crm.pojo;

public class Product {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column product.id
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column product.name
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column product.model
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    private String model;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column product.unit
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    private String unit;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column product.price
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    private Float price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column product.stock
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    private Double stock;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column product.remark
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    private String remark;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column product.id
     *
     * @return the value of product.id
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column product.id
     *
     * @param id the value for product.id
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column product.name
     *
     * @return the value of product.name
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column product.name
     *
     * @param name the value for product.name
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column product.model
     *
     * @return the value of product.model
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public String getModel() {
        return model;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column product.model
     *
     * @param model the value for product.model
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public void setModel(String model) {
        this.model = model == null ? null : model.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column product.unit
     *
     * @return the value of product.unit
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public String getUnit() {
        return unit;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column product.unit
     *
     * @param unit the value for product.unit
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column product.price
     *
     * @return the value of product.price
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public Float getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column product.price
     *
     * @param price the value for product.price
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public void setPrice(Float price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column product.stock
     *
     * @return the value of product.stock
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public Double getStock() {
        return stock;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column product.stock
     *
     * @param stock the value for product.stock
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public void setStock(Double stock) {
        this.stock = stock;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column product.remark
     *
     * @return the value of product.remark
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column product.remark
     *
     * @param remark the value for product.remark
     *
     * @mbggenerated Mon Oct 30 13:49:55 CST 2017
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}