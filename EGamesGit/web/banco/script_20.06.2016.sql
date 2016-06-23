CREATE TABLE cliente
(
  nomecliente character varying(50) NOT NULL,
  enderecocliente character varying(40) NOT NULL,
  cepcliente varchar(15) NOT NULL,
  rgcliente varchar(15) NOT NULL,
  cpfcliente varchar(20) NOT NULL,
  emailcliente character varying(40) NOT NULL,
  senhacliente character varying(15) NOT NULL,
  peracesso numeric(1,0) NOT NULL,
  datacadastro character varying(35) NOT NULL,
  CONSTRAINT cliente_pkey PRIMARY KEY (cpfcliente)
)
CREATE TABLE fazpedido
(
  cpfcliente varchar(20) NOT NULL,
  idpedido int NOT NULL,
  data varchar(35) NOT NULL,
  CONSTRAINT faz_pedido_cpfcliente_fkey FOREIGN KEY (cpfcliente) 
	REFERENCES cliente (cpfcliente),
  CONSTRAINT faz_pedido_id_pedido_fkey FOREIGN KEY (idpedido) 
	REFERENCES pedido (idpedido)
)
CREATE TABLE fornecedor
(
  cnpjforn character varying(20) NOT NULL,
  nomeforn character varying(50) NOT NULL,
  enderecoforn character varying(50) NOT NULL,
  emailforn varchar(50) NOT NULL,
  cepforn character varying(12) NOT NULL,
  CONSTRAINT fornecedor_pkey PRIMARY KEY (cnpjforn)

)
CREATE TABLE forneceproduto
(
  idproduto INT NOT NULL,
  cnpjforn character varying(20) NOT NULL,
  precounitario numeric(7,0) NOT NULL,
  CONSTRAINT fornece_produto_cnpj_fornecedor_fkey FOREIGN KEY (cnpjforn) 
	REFERENCES fornecedor (cnpjforn),
  CONSTRAINT fornece_produto_id_produto FOREIGN KEY (idproduto)
	REFERENCES produto (idproduto) 
)
CREATE TABLE funcionario
(
  nomefunc character varying(50) NOT NULL,
  enderecofunc character varying(40) NOT NULL,
  cepfunc varchar(12) NOT NULL,
  rgfunc varchar(12) NOT NULL,
  peracessfunc numeric(1,0) NOT NULL,
  cpffunc varchar(20) NOT NULL,
  numcarteirafunc varchar(20) NOT NULL,
  matriculafunc serial NOT NULL,
  emailfunc character varying(40) NOT NULL,
  senhafunc character varying(15) NOT NULL,
  datacadastro character varying(35) NOT NULL,
  CONSTRAINT funcionario_pkey PRIMARY KEY (matriculafunc)
)
CREATE TABLE geranotafiscal
(
  idnota INT NOT NULL,
  cpfcliente varchar(20) NOT NULL,
  idpedido INT NOT NULL,
  CONSTRAINT era_nota_fiscal_id_notaf_fkey FOREIGN KEY (idnota)
	REFERENCES notafiscal (idnota),
  CONSTRAINT gera_nota_fiscal_cpfcliente_fkey FOREIGN KEY (cpfcliente)
	REFERENCES cliente (cpfcliente),
  CONSTRAINT gera_nota_fiscal_id_pedido_fkey FOREIGN KEY (idpedido)
	REFERENCES pedido (idpedido)
)
CREATE TABLE itenspedido
(
  qtdeprodutopedido numeric(5,0) NOT NULL,
  idpedido int NOT NULL,
  idproduto int NOT NULL,
  CONSTRAINT itens_pedido_id_pedido FOREIGN KEY (idpedido)
	REFERENCES pedido (idpedido),
  CONSTRAINT itens_pedido_id_produto FOREIGN KEY (idproduto)
	REFERENCES produto (idproduto) ,
  CONSTRAINT itens_pedido_qtde_pedido CHECK (qtdeprodutopedido >= 0)
)
CREATE TABLE notafiscal
(
  precototal numeric(9,6) NOT NULL,
  data varchar(35) NOT NULL,
  idnota serial NOT NULL,
  idpedido int not null,
  cpfcliente varchar(20) NOT NULL,
  CONSTRAINT nota_fiscal_pkey PRIMARY KEY (idnota),
  CONSTRAINT nota_fiscal_cpfcliente_fkey FOREIGN KEY (cpfcliente)
	REFERENCES cliente (cpfcliente),
  CONSTRAINT nota_fiscal_idpedido_fkey FOREIGN KEY (idpedido)
	REFERENCES pedido (idpedido),
  CONSTRAINT nota_fiscal_preco_total_check CHECK (precototal >= 0)
)
CREATE TABLE pedido
(
  data varchar(35) NOT NULL,
  valortotal numeric(8,5) NOT NULL,
  idpedido serial NOT NULL,
  cpfcliente varchar(20) NOT NULL,
  CONSTRAINT pedido_pkey PRIMARY KEY (idpedido),
  CONSTRAINT pedido_cpfcliente_fkey FOREIGN KEY (cpfcliente)
	REFERENCES cliente (cpfcliente),
  CONSTRAINT pedido_valor_check_cpfcliente CHECK (valortotal >= 0)
)
CREATE TABLE produto
(
  qtdeestoque numeric(5,0) NOT NULL,
  descricao character varying(100) NOT NULL,
  preco numeric(8,5) NOT NULL,
  idproduto serial NOT NULL,
  datacadastro character varying(35) NOT NULL,
  categoria character varying(30),
  imagem bytea,
  CONSTRAINT idproduto PRIMARY KEY (idproduto),
  CONSTRAINT produto_preco_check CHECK (preco >= 0),
  CONSTRAINT produto_qtde_est_check CHECK (qtdeestoque >= 0)
)

CREATE TABLE solicitatransporte
(
  cnpjtransp character varying(20) NOT NULL,
  idnota int NOT NULL,
  idpedido int NOT NULL,
  CONSTRAINT transportadora_fkey FOREIGN KEY (cnpjtransp)
      REFERENCES transportadora (cnpjtransp),
  CONSTRAINT transportadora_id_notaf_fkey FOREIGN KEY (idnota)
      REFERENCES notafiscal (idnota),
  CONSTRAINT transportadora_id_pedido_fkey FOREIGN KEY (idpedido)
      REFERENCES pedido (idpedido)
)
CREATE TABLE telefoneCliente
(
  idcliente varchar(20) not null,
  telefone1 varchar(20) NOT NULL,
  telefone2 varchar(20) NOT NULL,
  telefone3 varchar(20),
  CONSTRAINT CLIENTE_ID_TELEFONE_fkey FOREIGN KEY (idcliente)
  REFERENCES cliente (cpfcliente)
)
CREATE TABLE telefoneFuncionario
(
  idfuncionario int not null,
  telefone1 varchar(20) NOT NULL,
  telefone2 varchar(20) NOT NULL,
  telefone3 varchar(20),
  CONSTRAINT FUNCIONARIO_ID_TELEFONE_fkey FOREIGN KEY (idfuncionario)
  REFERENCES funcionario (matriculafunc) 
)
CREATE TABLE telefoneFornecedor
(
  idfornecedor varchar(20) not null,
  telefone1 varchar(20) NOT NULL,
  telefone2 varchar(20) NOT NULL,
  telefone3 varchar(20),
  CONSTRAINT FORNECEDOR_ID_TELEFONE_fkey FOREIGN KEY (idfornecedor)
  REFERENCES fornecedor (cnpjforn)
)
CREATE TABLE telefoneTransportadora
(
  idtransportadora varchar(20) not null,
  telefone1 varchar(20) NOT NULL,
  telefone2 varchar(20) NOT NULL,
  telefone3 varchar(20),
  CONSTRAINT TRANSPORTADORA_ID_TELEFONE_fkey FOREIGN KEY (idtransportadora)
  REFERENCES transportadora (cnpjtransp)
)
drop table telefoneTransportadora;
CREATE TABLE transportadora
(
  cnpjtransp character varying(20) NOT NULL,
  enderecotransp character varying(50) NOT NULL,
  ceptransp varchar(12) NOT NULL,
  nometransp character varying(50) NOT NULL,
  emailtransp character varying(40) NOT NULL,
  CONSTRAINT transportadora_pk PRIMARY KEY (cnpjtransp)
)