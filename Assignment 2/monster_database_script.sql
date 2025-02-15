CREATE DATABASE dnd_monsters;

USE dnd_monsters;

CREATE TABLE monsters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    monster_name VARCHAR(100) NOT NULL,
    monster_size VARCHAR(20) NOT NULL,
    monster_type VARCHAR(50) NOT NULL,
    alignment VARCHAR(20) NOT NULL,
    hit_points INT NOT NULL
);

-- I used ChatGPT to generate the data using the following prompt:
/*
I need 100 entries of mock data for a sql database.
Please make it based on D&D 5e monsters. Include the fields: id, monster_name, monster_size, monster_type, alignment, hit_points
For example: Ancient Red Dragon, Gargantuan, Dragon, Chaotic Evil, 546
*/

-- Insert 100 rows of fake data
INSERT INTO monsters (id, monster_name, monster_size, monster_type, alignment, hit_points) VALUES
(1, 'Ancient Red Dragon', 'Gargantuan', 'Dragon', 'Chaotic Evil', 546),
(2, 'Goblin', 'Small', 'Humanoid', 'Neutral Evil', 7),
(3, 'Orc', 'Medium', 'Humanoid', 'Chaotic Evil', 15),
(4, 'Beholder', 'Large', 'Aberration', 'Lawful Evil', 180),
(5, 'Young Blue Dragon', 'Large', 'Dragon', 'Lawful Evil', 152),
(6, 'Lich', 'Medium', 'Undead', 'Neutral Evil', 135),
(7, 'Tarrasque', 'Gargantuan', 'Monstrosity', 'Unaligned', 676),
(8, 'Kobold', 'Small', 'Humanoid', 'Lawful Evil', 5),
(9, 'Mind Flayer', 'Medium', 'Aberration', 'Lawful Evil', 71),
(10, 'Gelatinous Cube', 'Large', 'Ooze', 'Unaligned', 84),
(11, 'Troll', 'Large', 'Giant', 'Chaotic Evil', 84),
(12, 'Adult Black Dragon', 'Huge', 'Dragon', 'Chaotic Evil', 195),
(13, 'Young Green Dragon', 'Large', 'Dragon', 'Lawful Evil', 136),
(14, 'Balor', 'Huge', 'Fiend', 'Chaotic Evil', 262),
(15, 'Skeleton', 'Medium', 'Undead', 'Lawful Evil', 13),
(16, 'Vampire', 'Medium', 'Undead', 'Lawful Evil', 144),
(17, 'Ankheg', 'Large', 'Monstrosity', 'Unaligned', 39),
(18, 'Bugbear', 'Medium', 'Humanoid', 'Chaotic Evil', 27),
(19, 'Wyvern', 'Large', 'Dragon', 'Unaligned', 110),
(20, 'Hill Giant', 'Huge', 'Giant', 'Chaotic Neutral', 105),
(21, 'Young Red Dragon', 'Large', 'Dragon', 'Chaotic Evil', 178),
(22, 'Mummy', 'Medium', 'Undead', 'Lawful Evil', 58),
(23, 'Ogre', 'Large', 'Giant', 'Chaotic Evil', 59),
(24, 'Stone Golem', 'Large', 'Construct', 'Unaligned', 178),
(25, 'Yuan-ti Abomination', 'Large', 'Monstrosity', 'Neutral Evil', 127),
(26, 'Sahuagin', 'Medium', 'Humanoid', 'Lawful Evil', 22),
(27, 'Fire Elemental', 'Large', 'Elemental', 'Neutral', 102),
(28, 'Frost Giant', 'Huge', 'Giant', 'Neutral Evil', 138),
(29, 'Remorhaz', 'Huge', 'Monstrosity', 'Unaligned', 195),
(30, 'Pit Fiend', 'Large', 'Fiend', 'Lawful Evil', 300),
(31, 'Banshee', 'Medium', 'Undead', 'Chaotic Evil', 58),
(32, 'Owlbear', 'Large', 'Monstrosity', 'Unaligned', 59),
(33, 'Night Hag', 'Medium', 'Fiend', 'Neutral Evil', 112),
(34, 'Hydra', 'Huge', 'Monstrosity', 'Unaligned', 172),
(35, 'Rakshasa', 'Medium', 'Fiend', 'Lawful Evil', 110),
(36, 'Doppelganger', 'Medium', 'Monstrosity', 'Neutral', 52),
(37, 'Aboleth', 'Large', 'Aberration', 'Lawful Evil', 135),
(38, 'Young Brass Dragon', 'Large', 'Dragon', 'Chaotic Good', 110),
(39, 'Chimera', 'Large', 'Monstrosity', 'Chaotic Evil', 114),
(40, 'Hill Dwarf', 'Medium', 'Humanoid', 'Lawful Good', 12),
(41, 'Invisible Stalker', 'Medium', 'Elemental', 'Neutral', 104),
(42, 'Nothic', 'Medium', 'Aberration', 'Neutral Evil', 45),
(43, 'Gorgon', 'Large', 'Monstrosity', 'Unaligned', 114),
(44, 'Ancient Blue Dragon', 'Gargantuan', 'Dragon', 'Lawful Evil', 481),
(45, 'Gnoll', 'Medium', 'Humanoid', 'Chaotic Evil', 22),
(46, 'Kraken', 'Gargantuan', 'Monstrosity', 'Chaotic Evil', 472),
(47, 'Young Silver Dragon', 'Large', 'Dragon', 'Lawful Good', 168),
(48, 'Wraith', 'Medium', 'Undead', 'Neutral Evil', 67),
(49, 'Green Hag', 'Medium', 'Fey', 'Neutral Evil', 82),
(50, 'Roc', 'Gargantuan', 'Monstrosity', 'Unaligned', 248),
(51, 'Adult White Dragon', 'Huge', 'Dragon', 'Chaotic Evil', 200),
(52, 'Harpy', 'Medium', 'Monstrosity', 'Chaotic Evil', 38),
(53, 'Griffon', 'Large', 'Monstrosity', 'Unaligned', 59),
(54, 'Merfolk', 'Medium', 'Humanoid', 'Neutral', 11),
(55, 'Succubus', 'Medium', 'Fiend', 'Neutral Evil', 66),
(56, 'Basilisk', 'Medium', 'Monstrosity', 'Unaligned', 52),
(57, 'Cloaker', 'Large', 'Aberration', 'Chaotic Neutral', 78),
(58, 'Bulette', 'Large', 'Monstrosity', 'Unaligned', 94),
(59, 'Young Gold Dragon', 'Large', 'Dragon', 'Lawful Good', 256),
(60, 'Storm Giant', 'Huge', 'Giant', 'Chaotic Good', 230),
(61, 'Wight', 'Medium', 'Undead', 'Neutral Evil', 45),
(62, 'Dryad', 'Medium', 'Fey', 'Neutral', 22),
(63, 'Giant Spider', 'Large', 'Beast', 'Unaligned', 26),
(64, 'Gelatinous Cube', 'Large', 'Ooze', 'Unaligned', 84),
(65, 'Lamia', 'Large', 'Monstrosity', 'Chaotic Evil', 97),
(66, 'Purple Worm', 'Gargantuan', 'Monstrosity', 'Unaligned', 247),
(67, 'Drow', 'Medium', 'Humanoid', 'Neutral Evil', 13),
(68, 'Nalfeshnee', 'Huge', 'Fiend', 'Chaotic Evil', 184),
(69, 'Adult Brass Dragon', 'Huge', 'Dragon', 'Chaotic Good', 172),
(70, 'Iron Golem', 'Large', 'Construct', 'Unaligned', 210),
(71, 'Ancient Green Dragon', 'Gargantuan', 'Dragon', 'Lawful Evil', 385),
(72, 'Spectator', 'Medium', 'Aberration', 'Lawful Neutral', 39),
(73, 'Mimic', 'Medium', 'Monstrosity', 'Neutral', 58),
(74, 'Hill Troll', 'Large', 'Giant', 'Chaotic Evil', 105),
(75, 'Zuggtmoy', 'Large', 'Fiend', 'Chaotic Evil', 304),
(76, 'Annis Hag', 'Large', 'Fey', 'Chaotic Evil', 75),
(77, 'Ettin', 'Large', 'Giant', 'Chaotic Evil', 85),
(78, 'Bullywug', 'Medium', 'Humanoid', 'Neutral Evil', 11),
(79, 'Death Tyrant', 'Large', 'Undead', 'Lawful Evil', 187),
(80, 'Young White Dragon', 'Large', 'Dragon', 'Chaotic Evil', 133),
(81, 'Treant', 'Huge', 'Plant', 'Chaotic Good', 138),
(82, 'Clay Golem', 'Large', 'Construct', 'Unaligned', 133),
(83, 'Adult Copper Dragon', 'Huge', 'Dragon', 'Chaotic Good', 184),
(84, 'Githyanki', 'Medium', 'Humanoid', 'Lawful Evil', 49),
(85, 'Ogre Mage', 'Large', 'Giant', 'Lawful Evil', 92),
(86, 'Lizardfolk', 'Medium', 'Humanoid', 'Neutral', 22),
(87, 'Carrion Crawler', 'Large', 'Monstrosity', 'Unaligned', 51),
(88, 'Nightwalker', 'Huge', 'Undead', 'Chaotic Evil', 337),
(89, 'Umber Hulk', 'Large', 'Monstrosity', 'Chaotic Evil', 93),
(90, 'Slaad', 'Medium', 'Aberration', 'Chaotic Neutral', 127),
(91, 'Rust Monster', 'Medium', 'Monstrosity', 'Unaligned', 27),
(92, 'Demi-Lich', 'Tiny', 'Undead', 'Neutral Evil', 80),
(93, 'Displacer Beast', 'Large', 'Monstrosity', 'Lawful Evil', 85),
(94, 'Fomorian', 'Huge', 'Giant', 'Chaotic Evil', 149),
(95, 'Ice Devil', 'Large', 'Fiend', 'Lawful Evil', 180),
(96, 'Barlgura', 'Large', 'Fiend', 'Chaotic Evil', 68),
(97, 'Shadow Demon', 'Medium', 'Fiend', 'Chaotic Evil', 66),
(98, 'Bone Devil', 'Large', 'Fiend', 'Lawful Evil', 142),
(99, 'Will-o-Wisp', 'Tiny', 'Undead', 'Chaotic Evil', 22),
(100, 'Stone Giant', 'Huge', 'Giant', 'Neutral', 126);