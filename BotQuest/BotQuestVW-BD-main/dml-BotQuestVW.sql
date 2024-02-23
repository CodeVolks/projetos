USE bd_bqvw;

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "1",
    "Recursos Humanos"
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "2",
    "Produção"
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "3",
    "Finanças"
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "4",
    "Jurídico"
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "5",
    "Logística"
);

SELECT * FROM tb_setor;
SELECT BIN_TO_UUID(id), nome FROM tb_setor;

INSERT INTO tb_tipousuario VALUES (
	UUID_TO_BIN(UUID()),
    "Comum"
);

INSERT INTO tb_tipousuario VALUES (
	UUID_TO_BIN(UUID()),
    "Admin"
);

SELECT * FROM tb_tipousuario;
SELECT BIN_TO_UUID(id), tituloUsuario FROM tb_tipousuario;

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN('116a1143-bc6d-11ee-951d-b445067b7f91'),
    "André Brisido",
    "andre@email.com",
    "mayaeluna123",
    "12345",
    "2004-10-09 15:34:22",
    ""
);

SELECT * FROM tb_usuario;