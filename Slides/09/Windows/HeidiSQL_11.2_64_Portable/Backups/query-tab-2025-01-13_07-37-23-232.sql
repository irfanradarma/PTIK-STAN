DROP DATABASE IF EXISTS `thinkers`;
CREATE DATABASE IF NOT EXISTS `thinkers`;
USE `thinkers`;

DROP TABLE IF EXISTS `writer`;
CREATE TABLE `writer` (
	`id_writer` VARCHAR(3),
	`writer_name` VARCHAR(128),
	`birth_year` INT
);

INSERT INTO `writer` (`id_writer`, `writer_name`, `birth_year`) VALUES
	('01', 'Rene Descartes', '1596'),
	('02', 'John Locke', '1632'),
	('03', 'Immanuel Kant', '1724'),
	('04', 'Friedrich Nietzsche', '1844'),
	('05', 'George Orwell', '1903'),
	('06', 'Jean-Jacques Rousseau', '1712'),
	('07', 'David Hume', '1711'),
	('008', 'Søren Kierkegaard', '1813'),
	('009', 'Simone de Beauvoir', '1908'),
	('010', 'Albert Camus', '1913');

DROP TABLE IF EXISTS Books;

CREATE TABLE Books (
    `Id`	VARCHAR(4),
    `Title`	VARCHAR(512),
    `Year`	INT,
    `Topics` VARCHAR(4),
    `Writer`	VARCHAR(4)
);

INSERT INTO Books (`Id`, `Title`, `Year`, `Topics`, `Writer`) VALUES
	('01', 'Discourse on the Method', '1637', '01', '01'),
	('02', 'Meditations on First Philosophy', '1641', '01', '01'),
	('03', 'Principles of Philosophy', '1644', '01', '01'),
	('04', 'The Passions of the Soul', '1649', '02', '01'),
	('05', 'Rules for the Direction of the Mind', '1628', '01', '01'),
	('06', 'Meditations and Other Metaphysical Writings', '1641', '01', '01'),
	('07', 'An Essay Concerning Human Understanding', '1689', '01', '02'),
	('08', 'Two Treatises of Government', '1689', '03', '02'),
	('09', 'A Letter Concerning Toleration', '1689', '03', '02'),
	('10', 'Some Thoughts Concerning Education', '1693', '04', '02'),
	('11', 'The Reasonableness of Christianity', '1695', '02', '02'),
	('12', 'Of the Conduct of the Understanding', '1706', '01', '02'),
	('13', 'Critique of Pure Reason', '1781', '01', '05'),
	('14', 'Critique of Practical Reason', '1788', '05', '05'),
	('15', 'Critique of Judgment', '1790', '02', '05'),
	('16', 'Groundwork of the Metaphysics of Morals', '1785', '05', '05'),
	('17', 'Prolegomena to Any Future Metaphysics', '1783', '01', '05'),
	('18', 'The Metaphysics of Morals', '1797', '05', '05'),
	('19', 'The Birth of Tragedy', '1872', '06', '07'),
	('20', 'Beyond Good and Evil', '1886', '05', '07'),
	('21', 'On the Genealogy of Morals', '1887', '05', '07'),
	('22', 'Thus Spoke Zarathustra', '1885', '06', '07'),
	('23', 'The Gay Science', '1882', '05', '07'),
	('24', 'Twilight of the Idols', '1889', '05', '07'),
	('25', 'Animal Farm', '1945', '03', '08'),
	('26', '1984', '1949', '03', '08'),
	('27', 'Down and Out in Paris and London', '1933', '07', '08'),
	('28', 'Homage to Catalonia', '1938', '07', '08'),
	('29', 'The Road to Wigan Pier', '1937', '07', '08'),
	('30', 'The Social Contract', '1762', '03', '04'),
	('31', 'Emile or On Education', '1762', '04', '04'),
	('32', 'Discourse on the Origin and Basis of Inequality Among Men', '1755', '03', '04'),
	('33', 'Confessions', '1782', '07', '04'),
	('34', 'Julie or the New Heloise', '1761', '07', '04'),
	('35', 'A Treatise of Human Nature', '1739', '01', '03'),
	('36', 'An Enquiry Concerning Human Understanding', '1748', '01', '03'),
	('37', 'An Enquiry Concerning the Principles of Morals', '1751', '05', '03'),
	('38', 'Dialogues Concerning Natural Religion', '1779', '02', '03'),
	('39', 'The Natural History of Religion', '1757', '02', '03'),
	('40', 'Fear and Trembling', '1843', '02', '06'),
	('41', 'Either/Or', '1843', '06', '06'),
	('42', 'The Sickness Unto Death', '1849', '06', '06'),
	('43', 'The Concept of Anxiety', '1844', '06', '06'),
	('44', 'Works of Love', '1847', '02', '06'),
	('45', 'The Second Sex', '1949', '08', '09'),
	('46', 'The Ethics of Ambiguity', '1947', '08', '09'),
	('47', 'She Came to Stay', '1943', '07', '09'),
	('48', 'The Mandarins', '1954', '07', '09'),
	('49', 'Memoirs of a Dutiful Daughter', '1958', '07', '09'),
	('50', 'The Stranger', '1942', '06', '10'),
	('51', 'The Myth of Sisyphus', '1942', '06', '10'),
	('52', 'The Plague', '1947', '07', '10'),
	('53', 'The Fall', '1956', '07', '10'),
	('54', 'A Happy Death', '1971', '07', '10');
	
DROP TABLE IF EXISTS Topics;

CREATE TABLE Topics (
    `Id`	VARCHAR(4),
    `Topics`	VARCHAR(128)
);

INSERT INTO Topics (`Id`, `Topics`) VALUES
	('01', 'Epistemology and Philosophy of Mind'),
	('02', 'Religion and Theological Philosophy'),
	('03', 'Political Philosophy and Society'),
	('04', 'Education and Human Development'),
	('05', 'Ethics and Morality'),
	('06', 'Existentialism and Absurdism'),
	('07', 'Literary and Memoir-Based Reflections'),
	('08', 'Feminist Philosophy and Gender');
	
DROP TABLE IF EXISTS Questions;

CREATE TABLE Questions (
    q_id	VARCHAR(4),
    books	VARCHAR(4),
    questions	VARCHAR(128)
);

INSERT INTO Questions (q_id, books, questions) VALUES
	('01', '01', 'What is the foundation of human knowledge?'),
	('01', '02', 'What is the foundation of human knowledge?'),
	('01', '05', 'What is the foundation of human knowledge?'),
	('01', '07', 'What is the foundation of human knowledge?'),
	('01', '13', 'What is the foundation of human knowledge?'),
	('01', '17', 'What is the foundation of human knowledge?'),
	('01', '35', 'What is the foundation of human knowledge?'),
	('02', '02', 'How can we distinguish truth from illusion?'),
	('02', '13', 'How can we distinguish truth from illusion?'),
	('02', '36', 'How can we distinguish truth from illusion?'),
	('02', '23', 'How can we distinguish truth from illusion?'),
	('02', '51', 'How can we distinguish truth from illusion?'),
	('02', '24', 'How can we distinguish truth from illusion?'),
	('03', '08', 'What are the principles of a just society?'),
	('03', '30', 'What are the principles of a just society?'),
	('03', '09', 'What are the principles of a just society?'),
	('03', '32', 'What are the principles of a just society?'),
	('03', '25', 'What are the principles of a just society?'),
	('03', '26', 'What are the principles of a just society?'),
	('04', '20', 'What role does power play in shaping morality and society?'),
	('04', '21', 'What role does power play in shaping morality and society?'),
	('04', '25', 'What role does power play in shaping morality and society?'),
	('04', '26', 'What role does power play in shaping morality and society?'),
	('04', '30', 'What role does power play in shaping morality and society?'),
	('04', '32', 'What role does power play in shaping morality and society?'),
	('05', '02', 'How does reason relate to faith and religion?'),
	('05', '38', 'How does reason relate to faith and religion?'),
	('05', '40', 'How does reason relate to faith and religion?'),
	('05', '11', 'How does reason relate to faith and religion?'),
	('05', '16', 'How does reason relate to faith and religion?'),
	('06', '22', 'What is the purpose of life and human existence?'),
	('06', '51', 'What is the purpose of life and human existence?'),
	('06', '50', 'What is the purpose of life and human existence?'),
	('06', '40', 'What is the purpose of life and human existence?'),
	('06', '42', 'What is the purpose of life and human existence?'),
	('07', '04', 'How do emotions and passions influence human behavior?'),
	('07', '20', 'How do emotions and passions influence human behavior?'),
	('07', '24', 'How do emotions and passions influence human behavior?'),
	('07', '43', 'How do emotions and passions influence human behavior?'),
	('08', '10', 'What is the role of education in shaping individuals and society?'),
	('08', '31', 'What is the role of education in shaping individuals and society?'),
	('08', '30', 'What is the role of education in shaping individuals and society?'),
	('09', '08', 'What defines freedom and how is it achieved?'),
	('09', '30', 'What defines freedom and how is it achieved?'),
	('09', '20', 'What defines freedom and how is it achieved?'),
	('09', '26', 'What defines freedom and how is it achieved?'),
	('09', '29', 'What defines freedom and how is it achieved?'),
	('10', '33', 'How do personal identity and experience shape our understanding?'),
	('10', '49', 'How do personal identity and experience shape our understanding?'),
	('10', '27', 'How do personal identity and experience shape our understanding?'),
	('10', '28', 'How do personal identity and experience shape our understanding?'),
	('10', '43', 'How do personal identity and experience shape our understanding?'),
	('11', '34', 'What is the nature of love and human connection?'),
	('11', '44', 'What is the nature of love and human connection?'),
	('11', '45', 'What is the nature of love and human connection?'),
	('11', '46', 'What is the nature of love and human connection?'),
	('12', '45', 'How does gender influence identity and society?'),
	('12', '46', 'How does gender influence identity and society?'),
	('12', '49', 'How does gender influence identity and society?'),
	('13', '25', 'What are the dangers of unchecked power and authoritarianism?'),
	('13', '26', 'What are the dangers of unchecked power and authoritarianism?'),
	('13', '30', 'What are the dangers of unchecked power and authoritarianism?'),
	('13', '32', 'What are the dangers of unchecked power and authoritarianism?');