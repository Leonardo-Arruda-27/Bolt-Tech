'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
  let Funcionario = sequelize.define('Funcionario', {
    idUsuario: {
      field: 'idUsuario',
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    Email: {
      field: 'Email',
      type: DataTypes.STRING,
      allowNull: false
    },
    Celular: {
      field: 'Celular',
      type: DataTypes.STRING,
      allowNull: false
    },
    nomeUsuario: {
      field: 'nomeUsuario',
      type: DataTypes.STRING,
      allowNull: false
    },
    senha: {
      field: 'senha',
      type: DataTypes.STRING,
      allowNull: false
    },
    fkEmpresa: {
      field: 'fkEmpresa',
      type: DataTypes.INTEGER,
      allowNull: false
    }
  },
    {
      tableName: 'funcionario',
      freezeTableName: true,
      underscored: true,
      timestamps: false,
    });

  return Funcionario;
};
