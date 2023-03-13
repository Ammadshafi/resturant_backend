"use strict";

module.exports = (sequelize, DataTypes) => {
  const customer = sequelize.define(
    "customer",
    {
        name: DataTypes.STRING,
        email: DataTypes.STRING,
        phone: DataTypes.STRING,
        address: DataTypes.STRING
    },
    {
      timestamps: false,
    }
  );

  return customer;
};
