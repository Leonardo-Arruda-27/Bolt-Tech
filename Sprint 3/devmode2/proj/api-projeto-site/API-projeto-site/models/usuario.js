'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
	let Usuario = sequelize.define('Usuario', {
		id: {
			field: 'idEmpresa',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},
		empresa: {
			field: 'NomeEmpresa',
			type: DataTypes.STRING,
			allowNull: false
		},
		senha: {
			field: 'senha',
			type: DataTypes.STRING,
			allowNull: false
		},
		CNPJ: {
			field: 'CNPJ',
			type: DataTypes.STRING,
			allowNull: false
		},

		CEP: {
			field: 'CEP',
			type: DataTypes.STRING,
			allowNull: false
		},

		endereco: {
			field: 'Rua',
			type: DataTypes.STRING,
			allowNull: false
		},

		endereco_numero: {
			field: 'Número',
			type: DataTypes.INTEGER,
			allowNull: false
		},

		complemento: {
			field: 'Complemento',
			type: DataTypes.STRING,
			allowNull: false
		},

		cidade: {
			field: 'Cidade',
			type: DataTypes.STRING,
			allowNull: false
		},

		UF: {
			field: 'UF',
			type: DataTypes.STRING,
			allowNull: false
		},

		email: {
			field: 'Email',
			type: DataTypes.STRING,
			allowNull: false
		},
	},
		{
			tableName: 'empresa',
			freezeTableName: true,
			underscored: true,
			timestamps: false,
		});

	return Usuario;
};
