-- sqlite

--
-- Database: `phinch`
--

-- --------------------------------------------------------

--
-- Table structure for table `Layer`
--

CREATE TABLE IF NOT EXISTS `Layer` (
  `layer_id` int(10) PRIMARY KEY,
  `name` varchar(60) NOT NULL
);

--
-- Dumping data for table `Layer`
--

INSERT INTO `Layer` (`layer_id`, `name`) VALUES
(1, 'kingdom'),
(2, 'phylum'),
(3, 'class'),
(4, 'order'),
(5, 'family'),
(6, 'genus'),
(7, 'species');

-- --------------------------------------------------------

--
-- Table structure for table `SharedData`
--

CREATE TABLE IF NOT EXISTS `SharedData` (
  `SharedData_id` int(10) PRIMARY KEY,
  `biom_filename` varchar(255) NOT NULL,
  `biom_file_hash` varchar(32) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `to_name` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `filter_options_json` text NOT NULL,
  `url_hash` varchar(32) NOT NULL,
  `visualization_id` int(10) NOT NULL,
  `layer_id` int(10) NOT NULL,
  `visualization_options` text NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `countView` int(10) NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `Visualization`
--

CREATE TABLE IF NOT EXISTS `Visualization` (
  `visualization_id` int(10) PRIMARY KEY,
  `name` varchar(60) NOT NULL
);

--
-- Dumping data for table `Visualization`
--

INSERT INTO `Visualization` (`visualization_id`, `name`) VALUES
(1, 'taxonomyBarChart'),
(2, 'bubbleChart'),
(3, 'sankeyDiagram'),
(4, 'donutPartition'),
(5, 'attributesColumn');
