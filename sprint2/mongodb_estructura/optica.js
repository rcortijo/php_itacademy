/*collection: pais*/
pais = [{
    "_id": {
      "$oid": "63e229bd9cb1609df573740d"
    },
    "nombre": "España"
}]

/*collection: ciudad*/
ciudad = [{
  "_id": {
    "$oid": "63e22a139cb1609df573740f"
  },
  "nombre": "Barcelona",
  "pais": {
    "_id": {
      "$oid": "63e229bd9cb1609df573740d"
    },
    "nombre": "España"
  }
}]

/*collection: proveedor*/
proveedor = [{
    "_id": {
      "$oid": "63e368f7d7c6ded866abdb06"
    },
    "nombre": "Proveedor Eyes SL",
    "nif": "A29268166",
    "telefono": "555555555",
    "fax": "555555555",
    "direccion": {
      "calle": "Carrer Constitucio",
      "numero": "120",
      "piso": "2",
      "puerta": "4",
      "codigo_postal": "08014"
    },
    "ciudad": {
      "_id": {
        "$oid": "63e22a139cb1609df573740f"
      },
      "nombre": "Barcelona",
      "pais": {
        "_id": {
          "$oid": "63e229bd9cb1609df573740d"
        },
        "name": "España"
      }
    }
}]

/*collection: marca */
marca = [{
  "_id": {
    "$oid": "63e36d09d7c6ded866abdb08"
  },
  "nombre": "FILA",
  "proveedor": {
    "_id": {
      "$oid": "63e368f7d7c6ded866abdb06"
    },
    "nombre": "Proveedor Eyes SL",
    "nif": "A29268166",
    "telefono": "555555555",
    "fax": "555555555",
    "direccion": {
      "calle": "Carrer Constitucio",
      "numero": "120",
      "piso": "2",
      "puerta": "4",
      "codigo_postal": "08014"
    },
    "ciudad": {
      "_id": {
        "$oid": "63e22a139cb1609df573740f"
      },
      "nombre": "Barcelona",
      "pais": {
        "_id": {
          "$oid": "63e229bd9cb1609df573740d"
        },
        "name": "España"
      }
    }
  }
}]

/*collection: tipo_montura */
tipo_montura=[{
  "_id": {
    "$oid": "63e370ccd7c6ded866abdb0a"
  },
  "nombre": "titanio"
},{
  "_id": {
    "$oid": "63e37123d7c6ded866abdb0b"
  },
  "nombre": "metal"
}]

/*collection: producto*/
producto = [{
  "_id": {
    "$oid": "63e3719ed7c6ded866abdb0d"
  },
  "nombre": "Lentes adulto 120B",
  "color_montura": "negro c/rojo",
  "color_vidrio": "transparente",
  "precio_venta": 120,
  "stock": 5,
  "marca": {
    "_id": {
      "$oid": "63e36d09d7c6ded866abdb08"
    },
    "nombre": "FILA",
    "proveedor": {
      "_id": {
        "$oid": "63e368f7d7c6ded866abdb06"
      },
      "nombre": "Proveedor Eyes SL",
      "nif": "A29268166",
      "telefono": "555555555",
      "fax": "555555555",
      "direccion": {
        "calle": "Carrer Constitucio",
        "numero": "120",
        "piso": "2",
        "puerta": "4",
        "codigo_postal": "08014"
      },
      "ciudad": {
        "_id": {
          "$oid": "63e22a139cb1609df573740f"
        },
        "nombre": "Barcelona",
        "pais": {
          "_id": {
            "$oid": "63e229bd9cb1609df573740d"
          },
          "name": "España"
        }
      }
    }
  },
  "tipo_montura": {
    "_id": {
      "$oid": "63e370ccd7c6ded866abdb0a"
    },
    "nombre": "titanio"
  }
}]

/*collection: persona*/
persona =[{
  "_id": {
    "$oid": "63e37375d7c6ded866abdb0f"
  },
  "nombre": "Roberto Cortijo",
  "telefono": "628555569",
  "correo": "rccr@gmail.com",
  "direccion": {
    "calle": "La Gran Via",
    "numero": "120",
    "piso": "2",
    "puerta": "4",
    "codigo_postal": "08014"
  },
  "fechacrea": "2023-02-08 11:06:20"
}]

/*collection: cargo*/
cargo=[{
  "_id": {
    "$oid": "63e37474d7c6ded866abdb11"
  },
  "nombre": "Administrativo"
},{
  "_id": {
    "$oid": "63e374afd7c6ded866abdb12"
  },
  "nombre": "Vendedor"
}]

/*collection: empleado*/
empleado=[{
  "_id": {
    "$oid": "63e37546d7c6ded866abdb15"
  },
  "fecha_ingreso": "2022-05-20",
  "persona": {
    "_id": {
      "$oid": "63e37375d7c6ded866abdb0f"
    },
    "nombre": "Roberto Cortijo",
    "telefono": "628555569",
    "correo": "rccr@gmail.com",
    "direccion": {
      "calle": "La Gran Via",
      "numero": "120",
      "piso": "2",
      "puerta": "4",
      "codigo_postal": "08014"
    },
    "fechacrea": "2023-02-08 11:06:20"
  },
  "cargo": {
    "_id": {
      "$oid": "63e37474d7c6ded866abdb11"
    },
    "nombre": "Administrativo"
  }
}]

/*collection: compra*/
compra=[{
  "_id": {
    "$oid": "63e37674d7c6ded866abdb17"
  },
  "fecha": "2023-02-05",
  "total": 132,
  "proveedor": {
    "_id": {
      "$oid": "63e368f7d7c6ded866abdb06"
    },
    "nombre": "Proveedor Eyes SL",
    "nif": "A29268166",
    "telefono": "555555555",
    "fax": "555555555",
    "direccion": {
      "calle": "Carrer Constitucio",
      "numero": "120",
      "piso": "2",
      "puerta": "4",
      "codigo_postal": "08014"
    },
    "ciudad": {
      "_id": {
        "$oid": "63e22a139cb1609df573740f"
      },
      "nombre": "Barcelona",
      "pais": {
        "_id": {
          "$oid": "63e229bd9cb1609df573740d"
        },
        "name": "España"
      }
    }
  },
  "empleado": {
    "_id": {
      "$oid": "63e37546d7c6ded866abdb15"
    },
    "fecha_ingreso": "2022-05-20",
    "persona": {
      "_id": {
        "$oid": "63e37375d7c6ded866abdb0f"
      },
      "nombre": "Roberto Cortijo",
      "telefono": "628555569",
      "correo": "rccr@gmail.com",
      "direccion": {
        "calle": "La Gran Via",
        "numero": "120",
        "piso": "2",
        "puerta": "4",
        "codigo_postal": "08014"
      },
      "fechacrea": "2023-02-08 11:06:20"
    },
    "cargo": {
      "_id": {
        "$oid": "63e37474d7c6ded866abdb11"
      },
      "nombre": "Administrativo"
    }
  },
  "detalle_compra": [
    {
      "producto": {
        "_id": {
          "$oid": "63e3719ed7c6ded866abdb0d"
        },
        "nombre": "Lentes adulto 120B",
        "color_montura": "negro c/rojo",
        "color_vidrio": "transparente",
        "precio_venta": 120,
        "stock": 5,
        "marca": {
          "_id": {
            "$oid": "63e36d09d7c6ded866abdb08"
          },
          "nombre": "FILA",
          "proveedor": {
            "_id": {
              "$oid": "63e368f7d7c6ded866abdb06"
            },
            "nombre": "Proveedor Eyes SL",
            "nif": "A29268166",
            "telefono": "555555555",
            "fax": "555555555",
            "direccion": {
              "calle": "Carrer Constitucio",
              "numero": "120",
              "piso": "2",
              "puerta": "4",
              "codigo_postal": "08014"
            },
            "ciudad": {
              "_id": {
                "$oid": "63e22a139cb1609df573740f"
              },
              "nombre": "Barcelona",
              "pais": {
                "_id": {
                  "$oid": "63e229bd9cb1609df573740d"
                },
                "name": "España"
              }
            }
          }
        },
        "tipo_montura": {
          "_id": {
            "$oid": "63e370ccd7c6ded866abdb0a"
          },
          "nombre": "titanio"
        }
      },
      "cantidad": 1,
      "precio": 210,
      "importe": 210
    }
  ]
}]

/*collection: cliente*/
cliente=[{
  "_id": {
    "$oid": "63e37878d7c6ded866abdb19"
  },
  "persona": {
    "_id": {
      "$oid": "63e37375d7c6ded866abdb0f"
    },
    "nombre": "Junior Rosales",
    "telefono": "628555411",
    "correo": "ajcr26@gmail.com",
    "direccion": {
      "calle": "Calle sin nombre xxx",
      "numero": "250",
      "piso": "1",
      "puerta": "5",
      "codigo_postal": "08014"
    },
    "fechacrea": "2023-02-08 11:06:20"
  },
  "cliente_recomienda": {
    "_id": {
      "$oid": "63e37878d7c6ded866abdb19"
    },
    "persona": {
      "_id": {
        "$oid": "63e37375d7c6ded866abdb0f"
      },
      "nombre": "Rossmary Rosales",
      "telefono": "656879123",
      "correo": "rossmary_555@gmail.com",
      "direccion": {
        "calle": "Calle sin nombre xxx",
        "numero": "250",
        "piso": "1",
        "puerta": "5",
        "codigo_postal": "08014"
      },
      "fechacrea": "2023-02-08 11:06:20"
    }
  }
}]

/*collection: periodo_venta*/
periodo_venta=[{
  "_id": {
    "$oid": "63e37d28d7c6ded866abdb1b"
  },
  "nombre": "Venta Trimestral 2023-I",
  "fecha_inicio": "2023-01-01",
  "fecha_fin": "2023-03-30"
}]

/*collection: venta*/
venta=[{
  "_id": {
    "$oid": "63e37df9d7c6ded866abdb1d"
  },
  "fecha": "2023-02-08",
  "total": 132,
  "cliente": {
    "_id": {
      "$oid": "63e37878d7c6ded866abdb19"
    },
    "persona": {
      "_id": {
        "$oid": "63e37375d7c6ded866abdb0f"
      },
      "nombre": "Junior Rosales",
      "telefono": "628555411",
      "correo": "ajcr26@gmail.com",
      "direccion": {
        "calle": "Calle sin nombre xxx",
        "numero": "250",
        "piso": "1",
        "puerta": "5",
        "codigo_postal": "08014"
      },
      "fechacrea": "2023-02-08 11:06:20"
    }
  },
  "empleado": {
    "_id": {
      "$oid": "63e37546d7c6ded866abdb15"
    },
    "fecha_ingreso": "2022-05-20",
    "persona": {
      "_id": {
        "$oid": "63e37375d7c6ded866abdb0f"
      },
      "nombre": "Jorge Perez",
      "telefono": "666555444",
      "correo": "jperez@gmail.com",
      "direccion": {
        "calle": "La Gran Via",
        "numero": "120",
        "piso": "4",
        "puerta": "1",
        "codigo_postal": "08014"
      },
      "fechacrea": "2023-02-08 11:06:20"
    },
    "cargo": {
      "_id": {
        "$oid": "63e37474d7c6ded866abdb11"
      },
      "nombre": "Vendedor"
    }
  },
  "periodo_venta": {
    "_id": {
      "$oid": "63e37d28d7c6ded866abdb1b"
    },
    "nombre": "Venta Trimestral 2023-I",
    "fecha_inicio": "2023-01-01",
    "fecha_fin": "2023-03-30"
  },
  "detalle_venta": [
    {
      "producto": {
        "_id": {
          "$oid": "63e3719ed7c6ded866abdb0d"
        },
        "nombre": "Lentes adulto 120B",
        "color_montura": "negro c/rojo",
        "color_vidrio": "transparente",
        "precio_venta": 120,
        "stock": 5,
        "marca": {
          "_id": {
            "$oid": "63e36d09d7c6ded866abdb08"
          },
          "nombre": "FILA",
          "proveedor": {
            "_id": {
              "$oid": "63e368f7d7c6ded866abdb06"
            },
            "nombre": "Proveedor Eyes SL",
            "nif": "A29268166",
            "telefono": "555555555",
            "fax": "555555555",
            "direccion": {
              "calle": "Carrer Constitucio",
              "numero": "120",
              "piso": "2",
              "puerta": "4",
              "codigo_postal": "08014"
            },
            "ciudad": {
              "_id": {
                "$oid": "63e22a139cb1609df573740f"
              },
              "nombre": "Barcelona",
              "pais": {
                "_id": {
                  "$oid": "63e229bd9cb1609df573740d"
                },
                "name": "España"
              }
            }
          }
        },
        "tipo_montura": {
          "_id": {
            "$oid": "63e370ccd7c6ded866abdb0a"
          },
          "nombre": "titanio"
        }
      },
      "cantidad": 1,
      "precio": 210,
      "importe": 210
    }
  ]
}]