/*collection: tipo_producto*/
[{
    "_id": {
      "$oid": "63e38350d7c6ded866abdb22"
    },
    "nombre": "pizza"
  },{
    "_id": {
      "$oid": "63e38392d7c6ded866abdb23"
    },
    "nombre": "hamburguesa"
  },{
    "_id": {
      "$oid": "63e383add7c6ded866abdb24"
    },
    "nombre": "bebida"
  }]

/*collection: categoria_pizza*/
[{
  "_id": {
    "$oid": "63e4cd5a6bf9d79cf3d0b254"
  },
  "nombre": "Napolitana"
},{
  "_id": {
    "$oid": "63e4cdb16bf9d79cf3d0b255"
  },
  "nombre": "Carbonara"
},{
  "_id": {
    "$oid": "63e4cdcf6bf9d79cf3d0b256"
  },
  "nombre": "Barbacoa"
}]

/*collection: producto*/
[{
    "_id": {
      "$oid": "63e4cea96bf9d79cf3d0b258"
    },
    "nombre": "Pizza mediana",
    "descripcion": "Pizza mediana",
    "imagen": "img/products/pizzamedia.jpg",
    "precio": 8,
    "tipo_producto": {
      "_id": {
        "$oid": "63e38350d7c6ded866abdb22"
      },
      "nombre": "pizza"
    },
    "categoria_pizza": {
      "_id": {
        "$oid": "63e4cd5a6bf9d79cf3d0b254"
      },
      "nombre": "Napolitana"
    }
  },{
    "_id": {
      "$oid": "63e4daa16bf9d79cf3d0b26e"
    },
    "nombre": "Hamburguesa Simple",
    "descripcion": "Hamburguesa Simple economica",
    "imagen": "img/products/hamburguesaEconomica.jpg",
    "precio": 6,
    "tipo_producto": {
      "_id": {
        "$oid": "63e38392d7c6ded866abdb23"
      },
      "nombre": "hamburguesa"
    }
  }]

/*collection: persona*/
[{
    "_id": {
      "$oid": "63e4d37f6bf9d79cf3d0b25d"
    },
    "nif": "12345678",
    "nombre": "Roberto",
    "apellidos": "Cortijo Rosales",
    "telefono": "628569874",
    "correo": "rrccrr@gmail.com",
    "direccion": {
      "calle": "constitucion",
      "numero": 100,
      "piso": 2,
      "puerta": 1,
      "codigo_postal": "08014"
    }
  },{
    "_id": {
      "$oid": "63e4d7726bf9d79cf3d0b268"
    },
    "nif": "879654321",
    "nombre": "Juan",
    "apellidos": "Perez Perez",
    "telefono": "333555666",
    "correo": "jperez@gmail.com",
    "direccion": {
      "calle": "Carles III",
      "numero": 200,
      "piso": 2,
      "puerta": 1,
      "codigo_postal": "08014"
    }
  },{
    "_id": {
      "$oid": "63e4d8546bf9d79cf3d0b269"
    },
    "nif": "444445555",
    "nombre": "Carlos",
    "apellidos": "Rosales Cano",
    "telefono": "789098767",
    "correo": "cano@gmail.com",
    "direccion": {
      "calle": "constitucion",
      "numero": 300,
      "piso": 2,
      "puerta": 1,
      "codigo_postal": "08014"
    }
  }]
  
/*collection: provincia*/
[{
    "_id": {
      "$oid": "63e4db9b6bf9d79cf3d0b271"
    },
    "nombre": "Barcelona"
  }]

/*collection: localidad*/
[{
  "_id": {
    "$oid": "63e4dbca6bf9d79cf3d0b273"
  },
  "nombre": "Barcelona",
  "provincia": {
    "_id": {
      "$oid": "63e4db9b6bf9d79cf3d0b271"
    },
    "nombre": "Barcelona"
  }
}]

/*collection: tienda*/
[{
    "_id": {
      "$oid": "63e4dd266bf9d79cf3d0b27c"
    },
    "nombre": "Pizzeria Barcelona",
    "direccion": {
      "calle": "Avenida Madrid",
      "numero": "320",
      "codigo_postal": "08015"
    }
  }]

/*collection: cargo*/
[{
  "_id": {
    "$oid": "63e4d6ed6bf9d79cf3d0b264"
  },
  "cargo": "Vendedor"
},{
  "_id": {
    "$oid": "63e4d6ed6bf9d79cf3d0b265"
  },
  "cargo": "Cocinero"
},{
  "_id": {
    "$oid": "63e4d6ed6bf9d79cf3d0b266"
  },
  "cargo": "Repartidor"
}]

/*collection: empleado*/
[{
    "_id": {
      "$oid": "63e4ddae6bf9d79cf3d0b27e"
    },
    "fecha_ingreso": "2023-10-20",
    "persona": {
      "_id": {
        "$oid": "63e4d7726bf9d79cf3d0b268"
      },
      "nif": "879654321",
      "nombre": "Juan",
      "apellidos": "Perez Perez",
      "telefono": "333555666",
      "correo": "jperez@gmail.com",
      "direccion": {
        "calle": "Carles III",
        "numero": 200,
        "piso": 2,
        "puerta": 1,
        "codigo_postal": "08014"
      }
    },
    "tienda": {
      "_id": {
        "$oid": "63e4dd266bf9d79cf3d0b27c"
      },
      "nombre": "Pizzeria Barcelona",
      "direccion": {
        "calle": "Avenida Madrid",
        "numero": "320",
        "codigo_postal": "08015"
      }
    },
    "cargo": {
      "_id": {
        "$oid": "63e4d6ed6bf9d79cf3d0b264"
      },
      "cargo": "Vendedor"
    }
  },{
    "_id": {
      "$oid": "63e4deb16bf9d79cf3d0b27f"
    },
    "fecha_ingreso": "2023-12-10",
    "persona": {
      "_id": {
        "$oid": "63e4d8546bf9d79cf3d0b269"
      },
      "nif": "444445555",
      "nombre": "Carlos",
      "apellidos": "Rosales Cano",
      "telefono": "789098767",
      "correo": "cano@gmail.com",
      "direccion": {
        "calle": "constitucion",
        "numero": 300,
        "piso": 2,
        "puerta": 1,
        "codigo_postal": "08014"
      }
    },
    "tienda": {
      "_id": {
        "$oid": "63e4dd266bf9d79cf3d0b27c"
      },
      "nombre": "Pizzeria Barcelona",
      "direccion": {
        "calle": "Avenida Madrid",
        "numero": "320",
        "codigo_postal": "08015"
      }
    },
    "cargo": {
      "_id": {
        "$oid": "63e4d6ed6bf9d79cf3d0b266"
      },
      "cargo": "Repartidor"
    }
  }]

/*collection: cliente*/
[{
  "_id": {
    "$oid": "63e4d62a6bf9d79cf3d0b262"
  },
  "persona": {
    "_id": {
      "$oid": "63e4d37f6bf9d79cf3d0b25d"
    },
    "nif": "12345678",
    "nombre": "Roberto",
    "apellidos": "Cortijo Rosales",
    "telefono": "628569874",
    "correo": "rrccrr@gmail.com",
    "direccion": {
      "calle": "constitucion",
      "numero": 100,
      "piso": 2,
      "puerta": 1,
      "codigo_postal": "08014"
    }
  }
}]

/*collection: pedido*/
[{
    "_id": {
      "$oid": "63e4df4a6bf9d79cf3d0b281"
    },
    "fecha_hora": "2023-02-09 10:20:52",
    "tipo": "reparto",
    "precio_total": 14,
    "direccion_entrega": {
      "calle": "Avinguda Madrid",
      "numero": "850",
      "piso": 2,
      "puerta": 5
    },
    "cliente": {
      "_id": {
        "$oid": "63e4d62a6bf9d79cf3d0b262"
      },
      "persona": {
        "_id": {
          "$oid": "63e4d37f6bf9d79cf3d0b25d"
        },
        "nif": "12345678",
        "nombre": "Roberto",
        "apellidos": "Cortijo Rosales",
        "telefono": "628569874",
        "correo": "rrccrr@gmail.com",
        "direccion": {
          "calle": "constitucion",
          "numero": 100,
          "piso": 2,
          "puerta": 1,
          "codigo_postal": "08014"
        }
      }
    },
    "empleado": {
      "_id": {
        "$oid": "63e4ddae6bf9d79cf3d0b27e"
      },
      "fecha_ingreso": "2023-10-20",
      "persona": {
        "_id": {
          "$oid": "63e4d7726bf9d79cf3d0b268"
        },
        "nif": "879654321",
        "nombre": "Juan",
        "apellidos": "Perez Perez",
        "telefono": "333555666",
        "correo": "jperez@gmail.com",
        "direccion": {
          "calle": "Carles III",
          "numero": 200,
          "piso": 2,
          "puerta": 1,
          "codigo_postal": "08014"
        }
      },
      "tienda": {
        "_id": {
          "$oid": "63e4dd266bf9d79cf3d0b27c"
        },
        "nombre": "Pizzeria Barcelona",
        "direccion": {
          "calle": "Avenida Madrid",
          "numero": "320",
          "codigo_postal": "08015"
        }
      },
      "cargo": {
        "_id": {
          "$oid": "63e4d6ed6bf9d79cf3d0b264"
        },
        "cargo": "Vendedor"
      }
    },
    "pedido_detalle": [
      {
        "_id": {
          "$oid": "63e4cea96bf9d79cf3d0b258"
        },
        "nombre": "Pizza mediana",
        "descripcion": "Pizza mediana",
        "imagen": "img/products/pizzamedia.jpg",
        "precio": 8,
        "tipo_producto": {
          "_id": {
            "$oid": "63e38350d7c6ded866abdb22"
          },
          "nombre": "pizza"
        },
        "categoria_pizza": {
          "_id": {
            "$oid": "63e4cd5a6bf9d79cf3d0b254"
          },
          "nombre": "Napolitana"
        }
      },
      {
        "_id": {
          "$oid": "63e4daa16bf9d79cf3d0b26e"
        },
        "nombre": "Hamburguesa Simple",
        "descripcion": "Hamburguesa Simple economica",
        "imagen": "img/products/hamburguesaEconomica.jpg",
        "precio": 6,
        "tipo_producto": {
          "_id": {
            "$oid": "63e38392d7c6ded866abdb23"
          },
          "nombre": "hamburguesa"
        }
      }
    ]
  }]

/*collection: pedido_entrega*/
[{
    "_id": {
      "$oid": "63ea8c08d6b4a71cda111b40"
    },
    "fecha_hora": "2023-12-02 12:45:20",
    "pedido": {
      "_id": {
        "$oid": "63e4df4a6bf9d79cf3d0b281"
      },
      "fecha_hora": "2023-02-09 10:20:52",
      "tipo": "reparto",
      "precio_total": 14,
      "direccion_entrega": {
        "calle": "Avinguda Madrid",
        "numero": "850",
        "piso": 2,
        "puerta": 5
      },
      "cliente": {
        "_id": {
          "$oid": "63e4d62a6bf9d79cf3d0b262"
        },
        "persona": {
          "_id": {
            "$oid": "63e4d37f6bf9d79cf3d0b25d"
          },
          "nif": "12345678",
          "nombre": "Roberto",
          "apellidos": "Cortijo Rosales",
          "telefono": "628569874",
          "correo": "rrccrr@gmail.com",
          "direccion": {
            "calle": "constitucion",
            "numero": 100,
            "piso": 2,
            "puerta": 1,
            "codigo_postal": "08014"
          }
        }
      },
      "empleado": {
        "_id": {
          "$oid": "63e4ddae6bf9d79cf3d0b27e"
        },
        "fecha_ingreso": "2023-10-20",
        "persona": {
          "_id": {
            "$oid": "63e4d7726bf9d79cf3d0b268"
          },
          "nif": "879654321",
          "nombre": "Juan",
          "apellidos": "Perez Perez",
          "telefono": "333555666",
          "correo": "jperez@gmail.com",
          "direccion": {
            "calle": "Carles III",
            "numero": 200,
            "piso": 2,
            "puerta": 1,
            "codigo_postal": "08014"
          }
        },
        "tienda": {
          "_id": {
            "$oid": "63e4dd266bf9d79cf3d0b27c"
          },
          "nombre": "Pizzeria Barcelona",
          "direccion": {
            "calle": "Avenida Madrid",
            "numero": "320",
            "codigo_postal": "08015"
          }
        },
        "cargo": {
          "_id": {
            "$oid": "63e4d6ed6bf9d79cf3d0b264"
          },
          "cargo": "Vendedor"
        }
      },
      "pedido_detalle": [
        {
          "_id": {
            "$oid": "63e4cea96bf9d79cf3d0b258"
          },
          "nombre": "Pizza mediana",
          "descripcion": "Pizza mediana",
          "imagen": "img/products/pizzamedia.jpg",
          "precio": 8,
          "tipo_producto": {
            "_id": {
              "$oid": "63e38350d7c6ded866abdb22"
            },
            "nombre": "pizza"
          },
          "categoria_pizza": {
            "_id": {
              "$oid": "63e4cd5a6bf9d79cf3d0b254"
            },
            "nombre": "Napolitana"
          }
        },
        {
          "_id": {
            "$oid": "63e4daa16bf9d79cf3d0b26e"
          },
          "nombre": "Hamburguesa Simple",
          "descripcion": "Hamburguesa Simple economica",
          "imagen": "img/products/hamburguesaEconomica.jpg",
          "precio": 6,
          "tipo_producto": {
            "_id": {
              "$oid": "63e38392d7c6ded866abdb23"
            },
            "nombre": "hamburguesa"
          }
        }
      ]
    },
    "repartidor": {
      "_id": {
        "$oid": "63e4deb16bf9d79cf3d0b27f"
      },
      "fecha_ingreso": "2023-12-10",
      "persona": {
        "_id": {
          "$oid": "63e4d8546bf9d79cf3d0b269"
        },
        "nif": "444445555",
        "nombre": "Carlos",
        "apellidos": "Rosales Cano",
        "telefono": "789098767",
        "correo": "cano@gmail.com",
        "direccion": {
          "calle": "constitucion",
          "numero": 300,
          "piso": 2,
          "puerta": 1,
          "codigo_postal": "08014"
        }
      },
      "tienda": {
        "_id": {
          "$oid": "63e4dd266bf9d79cf3d0b27c"
        },
        "nombre": "Pizzeria Barcelona",
        "direccion": {
          "calle": "Avenida Madrid",
          "numero": "320",
          "codigo_postal": "08015"
        }
      },
      "cargo": {
        "_id": {
          "$oid": "63e4d6ed6bf9d79cf3d0b266"
        },
        "cargo": "Repartidor"
      }
    }
  }]