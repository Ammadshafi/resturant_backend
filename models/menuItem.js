"use strict";

module.exports = (sequelize, DataTypes) => {
  const menu_item = sequelize.define(
    "menu_item",
    {
      name: DataTypes.STRING,
      description: DataTypes.STRING,
      price: DataTypes.FLOAT,
      image: DataTypes.STRING,

    },
    {
      timestamps: false,
    }
  );

  return menu_item;
};
