-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Fev-2024 às 12:46
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agendaescolar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `primNome` varchar(40) NOT NULL,
  `ultNome` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `primNome`, `ultNome`) VALUES
(1, 'Maria', 'Silva'),
(2, 'josé', 'maria'),
(3, 'franciso', 'rodrigues'),
(4, 'antonio', 'sobrinho'),
(5, 'luiz', 'ferreira'),
(6, 'humberto', 'florentino'),
(7, 'jose', 'aragão'),
(8, 'antonio', 'sobrinho'),
(9, 'hugo', 'pereira'),
(10, 'elizabete', 'maçaranduba');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `idDisciplina` int(11) NOT NULL,
  `nomeDisciplina` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`idDisciplina`, `nomeDisciplina`) VALUES
(1, 'Portugues'),
(2, 'Física'),
(3, 'Biologia'),
(4, 'Mecânica dos Solos'),
(5, 'Sistema nervoso'),
(6, 'Lógica de Programaçã'),
(7, 'Estrutura de Dados'),
(8, 'Modelagem de Dados'),
(9, 'Engemharia de Softwa'),
(10, 'Robótica indusctrial');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `idMatricula` int(6) NOT NULL,
  `idDisciplina` int(11) NOT NULL,
  `nota1` decimal(4,2) NOT NULL,
  `nota2` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`idMatricula`, `idDisciplina`, `nota1`, `nota2`) VALUES
(1, 1, '8.00', '7.00'),
(1, 5, '6.50', '7.80'),
(1, 8, '7.00', '7.70'),
(2, 8, '9.00', '10.00'),
(3, 2, '8.00', '7.00'),
(3, 4, '7.50', '6.90'),
(3, 10, '8.00', '7.00'),
(4, 2, '8.50', '9.00'),
(4, 7, '7.00', '8.90'),
(4, 9, '8.00', '9.50');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idDisciplina`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idMatricula`,`idDisciplina`),
  ADD KEY `idDisciplina` (`idDisciplina`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`idDisciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
