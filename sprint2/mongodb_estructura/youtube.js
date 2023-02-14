/*collection: pais*/
pais=[{
    "_id": {
      "$oid": "63e9ff053444f2ce29a945c1"
    },
    "nombre": "España"
  },{
    "_id": {
      "$oid": "63ea00f73444f2ce29a945c8"
    },
    "nombre": "Peru"
  }]

  /*collection: usuario*/
  usuario=[{
    "_id": {
      "$oid": "63e9fff63444f2ce29a945c5"
    },
    "email": "rccr.2015@gmail.com",
    "password": "123456",
    "nombre_usuario": "rccr",
    "fecha_nacimiento": "1982-08-29",
    "sexo": "M",
    "codigo_postal": "08014",
    "pais": {
      "_id": {
        "$oid": "63e9ff053444f2ce29a945c1"
      },
      "nombre": "España"
    }
  },{
    "_id": {
      "$oid": "63ea00e73444f2ce29a945c6"
    },
    "email": "fiorella@gmail.com",
    "password": "654321",
    "nombre_usuario": "kfiorella",
    "fecha_nacimiento": "2004-05-08",
    "sexo": "F",
    "codigo_postal": "02710",
    "pais": {
      "_id": {
        "$oid": "63e9ff053444f2ce29a945c8"
      },
      "nombre": "Peru"
    }
  }]

  /*collection: categoria_canal*/
  categoria_canal=[{
    "_id": {
      "$oid": "63ea015e3444f2ce29a945cb"
    },
    "nombre": "Deportes"
  },{
    "_id": {
      "$oid": "63ea01d43444f2ce29a945cc"
    },
    "nombre": "Mascotas"
  }]

  /*collection: canal*/
  canal=[{
    "_id": {
      "$oid": "63ea025c3444f2ce29a945ce"
    },
    "nombre": "RobertoCR FCB",
    "descripcion": "Noticias y Goles de FCB",
    "usuario": {
      "_id": {
        "$oid": "63e9fff63444f2ce29a945c5"
      },
      "email": "rccr.2015@gmail.com",
      "password": "123456",
      "nombre_usuario": "rccr",
      "fecha_nacimiento": "1982-08-29",
      "sexo": "M",
      "codigo_postal": "08014",
      "pais": {
        "_id": {
          "$oid": "63e9ff053444f2ce29a945c1"
        },
        "nombre": "España"
      }
    },
    "categoria_canal": {
      "_id": {
        "$oid": "63ea015e3444f2ce29a945cb"
      },
      "nombre": "Deportes"
    }
  },{
    "_id": {
      "$oid": "63ea031f3444f2ce29a945cf"
    },
    "nombre": "Copito CAT",
    "descripcion": "Fotos y Videos de mi gato Copito.",
    "usuario": {
      "_id": {
        "$oid": "63ea00e73444f2ce29a945c6"
      },
      "email": "fiorella@gmail.com",
      "password": "654321",
      "nombre_usuario": "kfiorella",
      "fecha_nacimiento": "2004-05-08",
      "sexo": "M",
      "codigo_postal": "02710",
      "pais": {
        "_id": {
          "$oid": "63e9ff053444f2ce29a945c8"
        },
        "nombre": "Peru"
      }
    },
    "categoria_canal": {
      "_id": {
        "$oid": "63ea01d43444f2ce29a945cc"
      },
      "nombre": "Mascotas"
    }
  }]

  /*collection: suscripcion*/
  suscripcion=[{
    "_id": {
      "$oid": "63ea038a3444f2ce29a945d1"
    },
    "fecha_hora": "2023-02-13 10:32:23",
    "usuario": {
      "_id": {
        "$oid": "63e9fff63444f2ce29a945c5"
      },
      "email": "rccr.2015@gmail.com",
      "password": "123456",
      "nombre_usuario": "rccr",
      "fecha_nacimiento": "1982-08-29",
      "sexo": "M",
      "codigo_postal": "08014",
      "pais": {
        "_id": {
          "$oid": "63e9ff053444f2ce29a945c1"
        },
        "nombre": "España"
      }
    },
    "canal": {
      "_id": {
        "$oid": "63ea031f3444f2ce29a945cf"
      },
      "nombre": "Copito CAT",
      "descripcion": "Fotos y Videos de mi gato Copito.",
      "usuario": {
        "_id": {
          "$oid": "63ea00e73444f2ce29a945c6"
        },
        "email": "fiorella@gmail.com",
        "password": "654321",
        "nombre_usuario": "kfiorella",
        "fecha_nacimiento": "2004-05-08",
        "sexo": "M",
        "codigo_postal": "02710",
        "pais": {
          "_id": {
            "$oid": "63e9ff053444f2ce29a945c8"
          },
          "nombre": "Peru"
        }
      }
    }
  }]

  /*collection: video*/
  video=[{
    "_id": {
      "$oid": "63ea07ee3444f2ce29a945d8"
    },
    "titulo": "Primer Partido FCB Champions 2013",
    "descripcion": "Goles",
    "tamanio": "5MB",
    "nombre_archivo": "goles1.mp4",
    "duracion": "00:02:30",
    "thumbnail": "file1.jpg",
    "estado": "publico",
    "nro_reproducciones": 150,
    "nro_likes": 20,
    "nro_dislikes": 1,
    "tags": "messi,barcelona,fbc,champions,2013,xavi,iniesta",
    "categoria_video": {
      "_id": {
        "$oid": "63ea07683444f2ce29a945d5"
      },
      "nombre": "Futbol"
    },
    "canal": {
      "_id": {
        "$oid": "63ea025c3444f2ce29a945ce"
      },
      "nombre": "RobertoCR FCB",
      "descripcion": "Noticias y Goles de FCB",
      "usuario": {
        "_id": {
          "$oid": "63e9fff63444f2ce29a945c5"
        },
        "email": "rccr.2015@gmail.com",
        "password": "123456",
        "nombre_usuario": "rccr",
        "fecha_nacimiento": "1982-08-29",
        "sexo": "M",
        "codigo_postal": "08014",
        "pais": {
          "_id": {
            "$oid": "63e9ff053444f2ce29a945c1"
          },
          "nombre": "España"
        }
      },
      "categoria_canal": {
        "_id": {
          "$oid": "63ea015e3444f2ce29a945cb"
        },
        "nombre": "Deportes"
      }
    }
  },{
    "_id": {
      "$oid": "63ea093e3444f2ce29a945d9"
    },
    "titulo": "Segundo Partido FCB Champions 2013",
    "descripcion": "Goles",
    "tamanio": "3MB",
    "nombre_archivo": "goles2.mp4",
    "duracion": "00:02:00",
    "thumbnail": "file2.jpg",
    "estado": "publico",
    "nro_reproducciones": 110,
    "nro_likes": 14,
    "nro_dislikes": 0,
    "tags": "messi,barcelona,fbc,champions,2013,xavi,iniesta",
    "categoria_video": {
      "_id": {
        "$oid": "63ea07683444f2ce29a945d5"
      },
      "nombre": "Futbol"
    },
    "canal": {
      "_id": {
        "$oid": "63ea025c3444f2ce29a945ce"
      },
      "nombre": "RobertoCR FCB",
      "descripcion": "Noticias y Goles de FCB",
      "usuario": {
        "_id": {
          "$oid": "63e9fff63444f2ce29a945c5"
        },
        "email": "rccr.2015@gmail.com",
        "password": "123456",
        "nombre_usuario": "rccr",
        "fecha_nacimiento": "1982-08-29",
        "sexo": "M",
        "codigo_postal": "08014",
        "pais": {
          "_id": {
            "$oid": "63e9ff053444f2ce29a945c1"
          },
          "nombre": "España"
        }
      },
      "categoria_canal": {
        "_id": {
          "$oid": "63ea015e3444f2ce29a945cb"
        },
        "nombre": "Deportes"
      }
    }
  },{
    "_id": {
      "$oid": "63ea09bd3444f2ce29a945da"
    },
    "titulo": "Mi Copito durmiendo",
    "descripcion": "Mi mascota Copo",
    "tamanio": "7MB",
    "nombre_archivo": "gato1.mp4",
    "duracion": "00:06:30",
    "thumbnail": "cat1.jpg",
    "estado": "publico",
    "nro_reproducciones": 360,
    "nro_likes": 135,
    "nro_dislikes": 0,
    "tags": "gato,mascota,copito,copo",
    "categoria_video": {
      "_id": {
        "$oid": "63ea07953444f2ce29a945d6"
      },
      "nombre": "Gatos"
    },
    "canal": {
      "_id": {
        "$oid": "63ea031f3444f2ce29a945cf"
      },
      "nombre": "Copito CAT",
      "descripcion": "Fotos y Videos de mi gato Copito.",
      "usuario": {
        "_id": {
          "$oid": "63ea00e73444f2ce29a945c6"
        },
        "email": "fiorella@gmail.com",
        "password": "654321",
        "nombre_usuario": "kfiorella",
        "fecha_nacimiento": "2004-05-08",
        "sexo": "M",
        "codigo_postal": "02710",
        "pais": {
          "_id": {
            "$oid": "63e9ff053444f2ce29a945c8"
          },
          "nombre": "Peru"
        }
      },
      "categoria_canal": {
        "_id": {
          "$oid": "63ea01d43444f2ce29a945cc"
        },
        "nombre": "Mascotas"
      }
    }
  }]

  /*collection: playlist*/
  playlist=[{
    "_id": {
      "$oid": "63ea06533444f2ce29a945d3"
    },
    "fecha_hora": "2023-02-13 10:45:10",
    "nombre": "Goles FCB - Champions 2013",
    "estado": "1",
    "canal": {
      "_id": {
        "$oid": "63ea025c3444f2ce29a945ce"
      },
      "nombre": "RobertoCR FCB",
      "descripcion": "Noticias y Goles de FCB",
      "usuario": {
        "_id": {
          "$oid": "63e9fff63444f2ce29a945c5"
        },
        "email": "rccr.2015@gmail.com",
        "password": "123456",
        "nombre_usuario": "rccr",
        "fecha_nacimiento": "1982-08-29",
        "sexo": "M",
        "codigo_postal": "08014",
        "pais": {
          "_id": {
            "$oid": "63e9ff053444f2ce29a945c1"
          },
          "nombre": "España"
        }
      },
      "categoria_canal": {
        "_id": {
          "$oid": "63ea015e3444f2ce29a945cb"
        },
        "nombre": "Deportes"
      }
    }
  }]
  
  /*collection: categoria_video*/
  categoria_video=[{
    "_id": {
      "$oid": "63ea07683444f2ce29a945d5"
    },
    "nombre": "Futbol"
  },{
    "_id": {
      "$oid": "63ea07953444f2ce29a945d6"
    },
    "nombre": "Gatos"
  }]

  /*collection: playlist_video*/
  playlist_video=[{
    "_id": {
      "$oid": "63ea0a413444f2ce29a945dc"
    },
    "video": [
      {
        "_id": {
          "$oid": "63ea07ee3444f2ce29a945d8"
        },
        "titulo": "Primer Partido FCB Champions 2013",
        "descripcion": "Goles",
        "tamanio": "5MB",
        "nombre_archivo": "goles1.mp4",
        "duracion": "00:02:30",
        "thumbnail": "file1.jpg",
        "estado": "publico",
        "nro_reproducciones": 150,
        "nro_likes": 20,
        "nro_dislikes": 1,
        "categoria_video": {
          "_id": {
            "$oid": "63ea07683444f2ce29a945d5"
          },
          "nombre": "Futbol"
        },
        "canal": {
          "_id": {
            "$oid": "63ea025c3444f2ce29a945ce"
          },
          "nombre": "RobertoCR FCB",
          "descripcion": "Noticias y Goles de FCB",
          "usuario": {
            "_id": {
              "$oid": "63e9fff63444f2ce29a945c5"
            },
            "email": "rccr.2015@gmail.com",
            "password": "123456",
            "nombre_usuario": "rccr",
            "fecha_nacimiento": "1982-08-29",
            "sexo": "M",
            "codigo_postal": "08014",
            "pais": {
              "_id": {
                "$oid": "63e9ff053444f2ce29a945c1"
              },
              "nombre": "España"
            }
          },
          "categoria_canal": {
            "_id": {
              "$oid": "63ea015e3444f2ce29a945cb"
            },
            "nombre": "Deportes"
          }
        }
      },
      {
        "_id": {
          "$oid": "63ea093e3444f2ce29a945d9"
        },
        "titulo": "Segundo Partido FCB Champions 2013",
        "descripcion": "Goles",
        "tamanio": "3MB",
        "nombre_archivo": "goles2.mp4",
        "duracion": "00:02:00",
        "thumbnail": "file2.jpg",
        "estado": "publico",
        "nro_reproducciones": 110,
        "nro_likes": 14,
        "nro_dislikes": 0,
        "categoria_video": {
          "_id": {
            "$oid": "63ea07683444f2ce29a945d5"
          },
          "nombre": "Futbol"
        },
        "canal": {
          "_id": {
            "$oid": "63ea025c3444f2ce29a945ce"
          },
          "nombre": "RobertoCR FCB",
          "descripcion": "Noticias y Goles de FCB",
          "usuario": {
            "_id": {
              "$oid": "63e9fff63444f2ce29a945c5"
            },
            "email": "rccr.2015@gmail.com",
            "password": "123456",
            "nombre_usuario": "rccr",
            "fecha_nacimiento": "1982-08-29",
            "sexo": "M",
            "codigo_postal": "08014",
            "pais": {
              "_id": {
                "$oid": "63e9ff053444f2ce29a945c1"
              },
              "nombre": "España"
            }
          },
          "categoria_canal": {
            "_id": {
              "$oid": "63ea015e3444f2ce29a945cb"
            },
            "nombre": "Deportes"
          }
        }
      }
    ],
    "playlist": {
      "_id": {
        "$oid": "63ea06533444f2ce29a945d3"
      },
      "fecha_hora": "2023-02-13 10:45:10",
      "nombre": "Goles FCB - Champions 2013",
      "estado": "1",
      "canal": {
        "_id": {
          "$oid": "63ea025c3444f2ce29a945ce"
        },
        "nombre": "RobertoCR FCB",
        "descripcion": "Noticias y Goles de FCB",
        "usuario": {
          "_id": {
            "$oid": "63e9fff63444f2ce29a945c5"
          },
          "email": "rccr.2015@gmail.com",
          "password": "123456",
          "nombre_usuario": "rccr",
          "fecha_nacimiento": "1982-08-29",
          "sexo": "M",
          "codigo_postal": "08014",
          "pais": {
            "_id": {
              "$oid": "63e9ff053444f2ce29a945c1"
            },
            "nombre": "España"
          }
        },
        "categoria_canal": {
          "_id": {
            "$oid": "63ea015e3444f2ce29a945cb"
          },
          "nombre": "Deportes"
        }
      }
    }
  }]

  /*collection: publicacion*/
  publicacion=[{
    "_id": {
      "$oid": "63ea0e0a3444f2ce29a945e1"
    },
    "fecha_hora": "2023-02-13 11:20:14",
    "texto": "Este canal esta dedicado a todos los hinchas azulgranas.",
    "nro_reproducciones": 125,
    "nro_likes": 56,
    "nro_dislikes": 2,
    "imagen": "imagen.jpg",
    "canal": {
      "_id": {
        "$oid": "63ea025c3444f2ce29a945ce"
      },
      "nombre": "RobertoCR FCB",
      "descripcion": "Noticias y Goles de FCB",
      "usuario": {
        "_id": {
          "$oid": "63e9fff63444f2ce29a945c5"
        },
        "email": "rccr.2015@gmail.com",
        "password": "123456",
        "nombre_usuario": "rccr",
        "fecha_nacimiento": "1982-08-29",
        "sexo": "M",
        "codigo_postal": "08014",
        "pais": {
          "_id": {
            "$oid": "63e9ff053444f2ce29a945c1"
          },
          "nombre": "España"
        }
      },
      "categoria_canal": {
        "_id": {
          "$oid": "63ea015e3444f2ce29a945cb"
        },
        "nombre": "Deportes"
      }
    }
  }]

  /*collection: publicacion_reaccion*/
  publicacion_reaccion=[{
    "_id": {
      "$oid": "63ea121f3444f2ce29a945e3"
    },
    "fecha_hora": "2023-02-13 08:20:23",
    "tipo_reaccion": "Like",
    "usuario": {
      "_id": {
        "$oid": "63ea00e73444f2ce29a945c6"
      },
      "email": "fiorella@gmail.com",
      "password": "654321",
      "nombre_usuario": "kfiorella",
      "fecha_nacimiento": "2004-05-08",
      "sexo": "F",
      "codigo_postal": "02710",
      "pais": {
        "_id": {
          "$oid": "63e9ff053444f2ce29a945c8"
        },
        "nombre": "Peru"
      }
    },
    "publicacion": {
      "_id": {
        "$oid": "63ea0e0a3444f2ce29a945e1"
      },
      "fecha_hora": "2023-02-13 11:20:14",
      "texto": "Este canal esta dedicado a todos los hinchas azulgranas.",
      "nro_reproducciones": 125,
      "nro_likes": 56,
      "nro_dislikes": 2,
      "imagen": "imagen.jpg",
      "canal": {
        "_id": {
          "$oid": "63ea025c3444f2ce29a945ce"
        },
        "nombre": "RobertoCR FCB",
        "descripcion": "Noticias y Goles de FCB",
        "usuario": {
          "_id": {
            "$oid": "63e9fff63444f2ce29a945c5"
          },
          "email": "rccr.2015@gmail.com",
          "password": "123456",
          "nombre_usuario": "rccr",
          "fecha_nacimiento": "1982-08-29",
          "sexo": "M",
          "codigo_postal": "08014",
          "pais": {
            "_id": {
              "$oid": "63e9ff053444f2ce29a945c1"
            },
            "nombre": "España"
          }
        },
        "categoria_canal": {
          "_id": {
            "$oid": "63ea015e3444f2ce29a945cb"
          },
          "nombre": "Deportes"
        }
      }
    }
  }]

  /*collection: comentario*/
  comentario=[{
    "_id": {
      "$oid": "63ea13073444f2ce29a945e5"
    },
    "comentario": "Epoca inolvidable del club español!!",
    "fecha_hora": "2023-02-11 12:45:32",
    "usuario": {
      "_id": {
        "$oid": "63ea00e73444f2ce29a945c6"
      },
      "email": "fiorella@gmail.com",
      "password": "654321",
      "nombre_usuario": "kfiorella",
      "fecha_nacimiento": "2004-05-08",
      "sexo": "F",
      "codigo_postal": "02710",
      "pais": {
        "_id": {
          "$oid": "63e9ff053444f2ce29a945c8"
        },
        "nombre": "Peru"
      }
    },
    "video": {
      "_id": {
        "$oid": "63ea07ee3444f2ce29a945d8"
      },
      "titulo": "Primer Partido FCB Champions 2013",
      "descripcion": "Goles",
      "tamanio": "5MB",
      "nombre_archivo": "goles1.mp4",
      "duracion": "00:02:30",
      "thumbnail": "file1.jpg",
      "estado": "publico",
      "nro_reproducciones": 150,
      "nro_likes": 20,
      "nro_dislikes": 1,
      "categoria_video": {
        "_id": {
          "$oid": "63ea07683444f2ce29a945d5"
        },
        "nombre": "Futbol"
      },
      "canal": {
        "_id": {
          "$oid": "63ea025c3444f2ce29a945ce"
        },
        "nombre": "RobertoCR FCB",
        "descripcion": "Noticias y Goles de FCB",
        "usuario": {
          "_id": {
            "$oid": "63e9fff63444f2ce29a945c5"
          },
          "email": "rccr.2015@gmail.com",
          "password": "123456",
          "nombre_usuario": "rccr",
          "fecha_nacimiento": "1982-08-29",
          "sexo": "M",
          "codigo_postal": "08014",
          "pais": {
            "_id": {
              "$oid": "63e9ff053444f2ce29a945c1"
            },
            "nombre": "España"
          }
        },
        "categoria_canal": {
          "_id": {
            "$oid": "63ea015e3444f2ce29a945cb"
          },
          "nombre": "Deportes"
        }
      }
    }
  }]

  /*collection: comentario_reaccion*/
  comentario_reaccion=[{
    "_id": {
      "$oid": "63ea14d23444f2ce29a945e9"
    },
    "fecha_hora": "2023-02-10 16:45:21",
    "tipo_reaccion": "Like",
    "usuario": {
      "_id": {
        "$oid": "63e9fff63444f2ce29a945c5"
      },
      "email": "rccr.2015@gmail.com",
      "password": "123456",
      "nombre_usuario": "rccr",
      "fecha_nacimiento": "1982-08-29",
      "sexo": "M",
      "codigo_postal": "08014",
      "pais": {
        "_id": {
          "$oid": "63e9ff053444f2ce29a945c1"
        },
        "nombre": "España"
      }
    },
    "comentario": {
      "_id": {
        "$oid": "63ea13073444f2ce29a945e5"
      },
      "comentario": "Epoca inolvidable del club español!!",
      "fecha_hora": "2023-02-11 12:45:32",
      "usuario": {
        "_id": {
          "$oid": "63ea00e73444f2ce29a945c6"
        },
        "email": "fiorella@gmail.com",
        "password": "654321",
        "nombre_usuario": "kfiorella",
        "fecha_nacimiento": "2004-05-08",
        "sexo": "F",
        "codigo_postal": "02710",
        "pais": {
          "_id": {
            "$oid": "63e9ff053444f2ce29a945c8"
          },
          "nombre": "Peru"
        }
      },
      "video": {
        "_id": {
          "$oid": "63ea07ee3444f2ce29a945d8"
        },
        "titulo": "Primer Partido FCB Champions 2013",
        "descripcion": "Goles",
        "tamanio": "5MB",
        "nombre_archivo": "goles1.mp4",
        "duracion": "00:02:30",
        "thumbnail": "file1.jpg",
        "estado": "publico",
        "nro_reproducciones": 150,
        "nro_likes": 20,
        "nro_dislikes": 1,
        "categoria_video": {
          "_id": {
            "$oid": "63ea07683444f2ce29a945d5"
          },
          "nombre": "Futbol"
        },
        "canal": {
          "_id": {
            "$oid": "63ea025c3444f2ce29a945ce"
          },
          "nombre": "RobertoCR FCB",
          "descripcion": "Noticias y Goles de FCB",
          "usuario": {
            "_id": {
              "$oid": "63e9fff63444f2ce29a945c5"
            },
            "email": "rccr.2015@gmail.com",
            "password": "123456",
            "nombre_usuario": "rccr",
            "fecha_nacimiento": "1982-08-29",
            "sexo": "M",
            "codigo_postal": "08014",
            "pais": {
              "_id": {
                "$oid": "63e9ff053444f2ce29a945c1"
              },
              "nombre": "España"
            }
          },
          "categoria_canal": {
            "_id": {
              "$oid": "63ea015e3444f2ce29a945cb"
            },
            "nombre": "Deportes"
          }
        }
      }
    }
  }]