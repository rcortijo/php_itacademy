/*collection: pais*/
pais=[{
    "_id": {
      "$oid": "63ea243f3444f2ce29a945eb"
    },
    "nombre": "España"
  },{
    "_id": {
      "$oid": "63ea25263444f2ce29a945ed"
    },
    "nombre": "Peru"
  }]

  /*collection: usuario*/
  usuario=[{
    "_id": {
      "$oid": "63ea255b3444f2ce29a945ef"
    },
    "email": "rccr.2015@gmail.com",
    "password": "29081982",
    "nombre": "Roberto Cortijo",
    "fecha_nacimiento": "1982-08-29",
    "sexo": "M",
    "codigo_postal": "08014",
    "tipo_usuario": "Free",
    "pais": {
      "_id": {
        "$oid": "63ea243f3444f2ce29a945eb"
      },
      "nombre": "España"
    }
  },{
    "_id": {
      "$oid": "63ea26f03444f2ce29a945f2"
    },
    "email": "kfiorella@gmail.com",
    "password": "654321",
    "nombre": "Kristy Fiorella",
    "fecha_nacimiento": "2004-05-08",
    "sexo": "F",
    "codigo_postal": "02017",
    "tipo_usuario": "Premium",
    "pais": {
      "_id": {
        "$oid": "63ea25263444f2ce29a945ed"
      },
      "nombre": "Peru"
    }
  }]

  /*collection: pago*/
  pago=[{
    "_id": {
      "$oid": "63ea27803444f2ce29a945f4"
    },
    "fecha_hora": "2023-02-13 13:20:20",
    "numeroOrden": "2023000005",
    "total": 6,
    "tipo_pago": "Tarjeta",
    "usuario": {
      "_id": {
        "$oid": "63ea26f03444f2ce29a945f2"
      },
      "email": "kfiorella@gmail.com",
      "password": "654321",
      "nombre": "Kristy Fiorella",
      "fecha_nacimiento": "2004-05-08",
      "sexo": "F",
      "codigo_postal": "02017",
      "tipo_usuario": "Premium",
      "pais": {
        "_id": {
          "$oid": "63ea25263444f2ce29a945ed"
        },
        "nombre": "Peru"
      }
    },
    "tarjeta_credito": {
      "numero_tarjeta": "123-654-789-854",
      "mes_caducidad": "08",
      "anio_caducidad": "26",
      "codigo_seguridad": "789"
    }
  }]

  /*collection: suscripcion*/
  suscripcion=[{
    "_id": {
      "$oid": "63ea862bd6b4a71cda111b3e"
    },
    "fecha_inicio": "2023-02-14",
    "fecha_renovacion": "2023-03-15",
    "estado": "activa",
    "pago": {
      "_id": {
        "$oid": "63ea27803444f2ce29a945f4"
      },
      "fecha_hora": "2023-02-13 13:20:20",
      "numeroOrden": "2023000005",
      "total": 6,
      "tipo_pago": "Tarjeta",
      "usuario": {
        "_id": {
          "$oid": "63ea26f03444f2ce29a945f2"
        },
        "email": "kfiorella@gmail.com",
        "password": "654321",
        "nombre": "Kristy Fiorella",
        "fecha_nacimiento": "2004-05-08",
        "sexo": "F",
        "codigo_postal": "02017",
        "tipo_usuario": "Premium",
        "pais": {
          "_id": {
            "$oid": "63ea25263444f2ce29a945ed"
          },
          "nombre": "Peru"
        }
      },
      "tarjeta_credito": {
        "numero_tarjeta": "123-654-789-854",
        "mes_caducidad": "08",
        "anio_caducidad": "26",
        "codigo_seguridad": "789"
      }
    }
  }]

  /*collection: genero*/
  genero=[{
    "_id": {
      "$oid": "63eb685cc013b912e0ba99a6"
    },
    "nombre": "Rock Latino"
  },{
    "_id": {
      "$oid": "63eb689dc013b912e0ba99a7"
    },
    "nombre": "Balada"
  },{
    "_id": {
      "$oid": "63eb68a9c013b912e0ba99a8"
    },
    "nombre": "Salsa"
  },{
    "_id": {
      "$oid": "63eb68b1c013b912e0ba99a9"
    },
    "nombre": "Pop"
  }]

  /*collection: artista*/
  artista=[{
    "_id": {
      "$oid": "63eb7f93c013b912e0ba99ab"
    },
    "nombre": "Mana",
    "imagen": "mana.jpg",
    "artista_relacionado": {
      "_id": {
        "$oid": "63eb7fcdc013b912e0ba99ac"
      },
      "nombre": "Enanitos verdes"
    }
  },{
    "_id": {
      "$oid": "63eb7fcdc013b912e0ba99ac"
    },
    "nombre": "Enanitos verdes"
  }]

  /*collection: album*/
  album=[{
    "_id": {
      "$oid": "63eb81dec013b912e0ba99ae"
    },
    "titulo": "Drama y Luz",
    "anio_publicacion": 2011,
    "imagen_portada": "dramaluz.jpg",
    "artista": {
      "_id": {
        "$oid": "63eb7f93c013b912e0ba99ab"
      },
      "nombre": "Mana",
      "imagen": "mana.jpg",
      "artista_relacionado": {
        "_id": {
          "$oid": "63eb7fcdc013b912e0ba99ac"
        },
        "nombre": "Enanitos verdes"
      }
    },
    "genero": {
      "_id": {
        "$oid": "63eb685cc013b912e0ba99a6"
      },
      "nombre": "Rock Latino"
    }
  },{
    "_id": {
      "$oid": "63eb828fc013b912e0ba99af"
    },
    "titulo": "Cuando los angeles lloran",
    "anio_publicacion": 1995,
    "imagen_portada": "angeleslloran.jpg",
    "artista": {
      "_id": {
        "$oid": "63eb7f93c013b912e0ba99ab"
      },
      "nombre": "Mana",
      "imagen": "mana.jpg",
      "artista_relacionado": {
        "_id": {
          "$oid": "63eb7fcdc013b912e0ba99ac"
        },
        "nombre": "Enanitos verdes"
      }
    },
    "genero": {
      "_id": {
        "$oid": "63eb685cc013b912e0ba99a6"
      },
      "nombre": "Rock Latino"
    }
  }]

  /*collection: album_favorito*/
  album_favorito=[{
    "_id": {
      "$oid": "63eb8372c013b912e0ba99b1"
    },
    "usuario": {
      "_id": {
        "$oid": "63ea255b3444f2ce29a945ef"
      },
      "email": "rccr.2015@gmail.com",
      "password": "29081982",
      "nombre": "Roberto Cortijo",
      "fecha_nacimiento": "1982-08-29",
      "sexo": "M",
      "codigo_postal": "08014",
      "tipo_usuario": "Free",
      "pais": {
        "_id": {
          "$oid": "63ea243f3444f2ce29a945eb"
        },
        "nombre": "España"
      }
    },
    "album": [
      {
        "_id": {
          "$oid": "63eb81dec013b912e0ba99ae"
        },
        "titulo": "Drama y Luz",
        "anio_publicacion": 2011,
        "imagen_portada": "dramaluz.jpg",
        "artista": {
          "_id": {
            "$oid": "63eb7f93c013b912e0ba99ab"
          },
          "nombre": "Mana",
          "imagen": "mana.jpg",
          "artista_relacionado": {
            "_id": {
              "$oid": "63eb7fcdc013b912e0ba99ac"
            },
            "nombre": "Enanitos verdes"
          }
        },
        "genero": {
          "_id": {
            "$oid": "63eb685cc013b912e0ba99a6"
          },
          "nombre": "Rock Latino"
        }
      },
      {
        "_id": {
          "$oid": "63eb828fc013b912e0ba99af"
        },
        "titulo": "Cuando los angeles lloran",
        "anio_publicacion": 1995,
        "imagen_portada": "angeleslloran.jpg",
        "artista": {
          "_id": {
            "$oid": "63eb7f93c013b912e0ba99ab"
          },
          "nombre": "Mana",
          "imagen": "mana.jpg",
          "artista_relacionado": {
            "_id": {
              "$oid": "63eb7fcdc013b912e0ba99ac"
            },
            "nombre": "Enanitos verdes"
          }
        },
        "genero": {
          "_id": {
            "$oid": "63eb685cc013b912e0ba99a6"
          },
          "nombre": "Rock Latino"
        }
      }
    ]
  }]

  /*collection: cancion*/
  cancion=[{
    "_id": {
      "$oid": "63eb8499c013b912e0ba99b3"
    },
    "titulo": "Lluvia al corazón",
    "duracion": "04:10:00",
    "nro_reproducciones": 135,
    "album": {
      "_id": {
        "$oid": "63eb81dec013b912e0ba99ae"
      },
      "titulo": "Drama y Luz",
      "anio_publicacion": 2011,
      "imagen_portada": "dramaluz.jpg",
      "artista": {
        "_id": {
          "$oid": "63eb7f93c013b912e0ba99ab"
        },
        "nombre": "Mana",
        "imagen": "mana.jpg",
        "artista_relacionado": {
          "_id": {
            "$oid": "63eb7fcdc013b912e0ba99ac"
          },
          "nombre": "Enanitos verdes"
        }
      },
      "genero": {
        "_id": {
          "$oid": "63eb685cc013b912e0ba99a6"
        },
        "nombre": "Rock Latino"
      }
    }
  },{
    "_id": {
      "$oid": "63eb85e0c013b912e0ba99b4"
    },
    "titulo": "Amor clandestino",
    "duracion": "04:52:00",
    "nro_reproducciones": 85,
    "album": {
      "_id": {
        "$oid": "63eb81dec013b912e0ba99ae"
      },
      "titulo": "Drama y Luz",
      "anio_publicacion": 2011,
      "imagen_portada": "dramaluz.jpg",
      "artista": {
        "_id": {
          "$oid": "63eb7f93c013b912e0ba99ab"
        },
        "nombre": "Mana",
        "imagen": "mana.jpg",
        "artista_relacionado": {
          "_id": {
            "$oid": "63eb7fcdc013b912e0ba99ac"
          },
          "nombre": "Enanitos verdes"
        }
      },
      "genero": {
        "_id": {
          "$oid": "63eb685cc013b912e0ba99a6"
        },
        "nombre": "Rock Latino"
      }
    }
  },{
    "_id": {
      "$oid": "63eb85f9c013b912e0ba99b5"
    },
    "titulo": "Mi reina del dolor",
    "duracion": "04:06:00",
    "nro_reproducciones": 220,
    "album": {
      "_id": {
        "$oid": "63eb81dec013b912e0ba99ae"
      },
      "titulo": "Drama y Luz",
      "anio_publicacion": 2011,
      "imagen_portada": "dramaluz.jpg",
      "artista": {
        "_id": {
          "$oid": "63eb7f93c013b912e0ba99ab"
        },
        "nombre": "Mana",
        "imagen": "mana.jpg",
        "artista_relacionado": {
          "_id": {
            "$oid": "63eb7fcdc013b912e0ba99ac"
          },
          "nombre": "Enanitos verdes"
        }
      },
      "genero": {
        "_id": {
          "$oid": "63eb685cc013b912e0ba99a6"
        },
        "nombre": "Rock Latino"
      }
    }
  },{
    "_id": {
      "$oid": "63eb8618c013b912e0ba99b6"
    },
    "titulo": "El espejo",
    "duracion": "05:24:00",
    "nro_reproducciones": 75,
    "album": {
      "_id": {
        "$oid": "63eb81dec013b912e0ba99ae"
      },
      "titulo": "Drama y Luz",
      "anio_publicacion": 2011,
      "imagen_portada": "dramaluz.jpg",
      "artista": {
        "_id": {
          "$oid": "63eb7f93c013b912e0ba99ab"
        },
        "nombre": "Mana",
        "imagen": "mana.jpg",
        "artista_relacionado": {
          "_id": {
            "$oid": "63eb7fcdc013b912e0ba99ac"
          },
          "nombre": "Enanitos verdes"
        }
      },
      "genero": {
        "_id": {
          "$oid": "63eb685cc013b912e0ba99a6"
        },
        "nombre": "Rock Latino"
      }
    }
  },{
    "_id": {
      "$oid": "63eb8634c013b912e0ba99b7"
    },
    "titulo": "El verdadero amor perdona",
    "duracion": "04:41:00",
    "nro_reproducciones": 320,
    "album": {
      "_id": {
        "$oid": "63eb81dec013b912e0ba99ae"
      },
      "titulo": "Drama y Luz",
      "anio_publicacion": 2011,
      "imagen_portada": "dramaluz.jpg",
      "artista": {
        "_id": {
          "$oid": "63eb7f93c013b912e0ba99ab"
        },
        "nombre": "Mana",
        "imagen": "mana.jpg",
        "artista_relacionado": {
          "_id": {
            "$oid": "63eb7fcdc013b912e0ba99ac"
          },
          "nombre": "Enanitos verdes"
        }
      },
      "genero": {
        "_id": {
          "$oid": "63eb685cc013b912e0ba99a6"
        },
        "nombre": "Rock Latino"
      }
    }
  },{
    "_id": {
      "$oid": "63eb8676c013b912e0ba99b8"
    },
    "titulo": "Como un perro enloquecido",
    "duracion": "04:30:00",
    "nro_reproducciones": 120,
    "album": {
      "_id": {
        "$oid": "63eb828fc013b912e0ba99af"
      },
      "titulo": "Cuando los angeles lloran",
      "anio_publicacion": 1995,
      "imagen_portada": "angeleslloran.jpg",
      "artista": {
        "_id": {
          "$oid": "63eb7f93c013b912e0ba99ab"
        },
        "nombre": "Mana",
        "imagen": "mana.jpg",
        "artista_relacionado": {
          "_id": {
            "$oid": "63eb7fcdc013b912e0ba99ac"
          },
          "nombre": "Enanitos verdes"
        }
      },
      "genero": {
        "_id": {
          "$oid": "63eb685cc013b912e0ba99a6"
        },
        "nombre": "Rock Latino"
      }
    }
  }]

  /*collection: playlist*/
  playlist=[{
    "_id": {
      "$oid": "63eb876dc013b912e0ba99ba"
    },
    "fecha_hora": "2023-02-14 13:20:25",
    "titulo": "Mi PLayLIst MANA",
    "nro_canciones": 2,
    "estado": "privada",
    "tipo": "activa",
    "usuario": {
      "_id": {
        "$oid": "63ea255b3444f2ce29a945ef"
      },
      "email": "rccr.2015@gmail.com",
      "password": "29081982",
      "nombre": "Roberto Cortijo",
      "fecha_nacimiento": "1982-08-29",
      "sexo": "M",
      "codigo_postal": "08014",
      "tipo_usuario": "Free",
      "pais": {
        "_id": {
          "$oid": "63ea243f3444f2ce29a945eb"
        },
        "nombre": "España"
      }
    },
    "canciones": [
      {
        "_id": {
          "$oid": "63eb8618c013b912e0ba99b6"
        },
        "titulo": "El espejo",
        "duracion": "05:24:00",
        "nro_reproducciones": 75,
        "album": {
          "_id": {
            "$oid": "63eb81dec013b912e0ba99ae"
          },
          "titulo": "Drama y Luz",
          "anio_publicacion": 2011,
          "imagen_portada": "dramaluz.jpg",
          "artista": {
            "_id": {
              "$oid": "63eb7f93c013b912e0ba99ab"
            },
            "nombre": "Mana",
            "imagen": "mana.jpg",
            "artista_relacionado": {
              "_id": {
                "$oid": "63eb7fcdc013b912e0ba99ac"
              },
              "nombre": "Enanitos verdes"
            }
          },
          "genero": {
            "_id": {
              "$oid": "63eb685cc013b912e0ba99a6"
            },
            "nombre": "Rock Latino"
          }
        }
      },
      {
        "_id": {
          "$oid": "63eb8634c013b912e0ba99b7"
        },
        "titulo": "El verdadero amor perdona",
        "duracion": "04:41:00",
        "nro_reproducciones": 320,
        "album": {
          "_id": {
            "$oid": "63eb81dec013b912e0ba99ae"
          },
          "titulo": "Drama y Luz",
          "anio_publicacion": 2011,
          "imagen_portada": "dramaluz.jpg",
          "artista": {
            "_id": {
              "$oid": "63eb7f93c013b912e0ba99ab"
            },
            "nombre": "Mana",
            "imagen": "mana.jpg",
            "artista_relacionado": {
              "_id": {
                "$oid": "63eb7fcdc013b912e0ba99ac"
              },
              "nombre": "Enanitos verdes"
            }
          },
          "genero": {
            "_id": {
              "$oid": "63eb685cc013b912e0ba99a6"
            },
            "nombre": "Rock Latino"
          }
        }
      }
    ]
  }]

  /*collection: cancion_favorita*/
  cancion_favorita=[{
    "_id": {
      "$oid": "63eb8bc9c013b912e0ba99bc"
    },
    "usuario": {
      "_id": {
        "$oid": "63ea255b3444f2ce29a945ef"
      },
      "email": "rccr.2015@gmail.com",
      "password": "29081982",
      "nombre": "Roberto Cortijo",
      "fecha_nacimiento": "1982-08-29",
      "sexo": "M",
      "codigo_postal": "08014",
      "tipo_usuario": "Free",
      "pais": {
        "_id": {
          "$oid": "63ea243f3444f2ce29a945eb"
        },
        "nombre": "España"
      }
    },
    "cancion": {
      "_id": {
        "$oid": "63eb8634c013b912e0ba99b7"
      },
      "titulo": "El verdadero amor perdona",
      "duracion": "04:41:00",
      "nro_reproducciones": 320,
      "album": {
        "_id": {
          "$oid": "63eb81dec013b912e0ba99ae"
        },
        "titulo": "Drama y Luz",
        "anio_publicacion": 2011,
        "imagen_portada": "dramaluz.jpg",
        "artista": {
          "_id": {
            "$oid": "63eb7f93c013b912e0ba99ab"
          },
          "nombre": "Mana",
          "imagen": "mana.jpg",
          "artista_relacionado": {
            "_id": {
              "$oid": "63eb7fcdc013b912e0ba99ac"
            },
            "nombre": "Enanitos verdes"
          }
        },
        "genero": {
          "_id": {
            "$oid": "63eb685cc013b912e0ba99a6"
          },
          "nombre": "Rock Latino"
        }
      }
    }
  }]

  /*collection: seguidor*/
  seguidor=[{
    "_id": {
      "$oid": "63eb8c9cc013b912e0ba99be"
    },
    "usuario": {
      "_id": {
        "$oid": "63ea255b3444f2ce29a945ef"
      },
      "email": "rccr.2015@gmail.com",
      "password": "29081982",
      "nombre": "Roberto Cortijo",
      "fecha_nacimiento": "1982-08-29",
      "sexo": "M",
      "codigo_postal": "08014",
      "tipo_usuario": "Free",
      "pais": {
        "_id": {
          "$oid": "63ea243f3444f2ce29a945eb"
        },
        "nombre": "España"
      }
    },
    "artista": {
      "_id": {
        "$oid": "63eb7f93c013b912e0ba99ab"
      },
      "nombre": "Mana",
      "imagen": "mana.jpg",
      "artista_relacionado": {
        "_id": {
          "$oid": "63eb7fcdc013b912e0ba99ac"
        },
        "nombre": "Enanitos verdes"
      }
    }
  }]