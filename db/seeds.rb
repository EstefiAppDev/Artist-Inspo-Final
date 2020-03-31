

AdminUser.create!([
  {email: "admin@example.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])

Painting.create!([
  {paint_medium: "Oil and gold leaf on canvas", artist_id: 9, genre_id: 3, title: "Der Kuss (The Kiss)", currently_at: "Österreichische Galerie Belvedere, Vienna", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/c/c8/Klimt_-_The_Kiss.jpg", date: "1907-1908", theme_id: 1},
  {paint_medium: "Tempera on canvas", artist_id: 18, genre_id: 3, title: "The Birth of Venus", currently_at: "Uffizi Gallery, Florence", additional_info: nil, fan_id: nil, image: "https://images.uffizi.it/production/attachments/1503909239806647-605174-2-.jpg?ixlib=rails-2.1.3&w=1200&h=800&fit=clip&crop=center&fm=gjpg&auto=compress", date: "1486", theme_id: 1},
  {paint_medium: "Tempera on gesso, pitch and mastic", artist_id: 19, genre_id: 3, title: "The Last Supper", currently_at: "Santa Maria delle Grazie, Milan", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/4/48/The_Last_Supper_-_Leonardo_Da_Vinci_-_High_Resolution_32x16.jpg", date: "1498", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 12, genre_id: 3, title: "La mort de Sardanapale (Death of Sardanapalus)", currently_at: "Musée du Louvre, Paris", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/2/2f/Delacroix_-_La_Mort_de_Sardanapale_%281827%29.jpg", date: "1827", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 12, genre_id: 3, title: "La Liberté guidant le peuple (Liberty Leading the People)", currently_at: "Musée du Louvre, Paris", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/5/5d/Eug%C3%A8ne_Delacroix_-_Le_28_Juillet._La_Libert%C3%A9_guidant_le_peuple.jpg", date: "1830", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 20, genre_id: 3, title: "The Raft of the Medusa", currently_at: "Musée du Louvre, Paris", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/1/15/JEAN_LOUIS_TH%C3%89ODORE_G%C3%89RICAULT_-_La_Balsa_de_la_Medusa_%28Museo_del_Louvre%2C_1818-19%29.jpg", date: "1818-1819", theme_id: 1},
  {paint_medium: "Oil on limewood", artist_id: 10, genre_id: 3, title: "Isenheim Altarpiece", currently_at: "Unterlinden Museum, Colmar", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/5/5f/Grunewald_Isenheim1.jpg", date: "1506-1515", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 21, genre_id: 3, title: "The Tête à Tête", currently_at: "The National Gallery, London", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/8/8c/Marriage_A-la-Mode_2%2C_The_T%C3%AAte_%C3%A0_T%C3%AAte_-_William_Hogarth.jpg", date: "1743", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 11, genre_id: 3, title: "La Grande Odalisque", currently_at: "Musée du Louvre, Paris", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/f/f4/Jean_Auguste_Dominique_Ingres_-_The_Grand_Odalisque_-_WGA11841.jpg", date: "1814", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 14, genre_id: 3, title: "Olympia", currently_at: "Musée d'Orsay, Paris", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/f/f7/%C3%89douard_Manet_-_Olympia_-_Mus%C3%A9e_d%27Orsay%2C_Paris.jpg", date: "1863", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 13, genre_id: 3, title: "Le Berceau (The Cradle)", currently_at: "Musée d'Orsay", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/4/42/Berthe_Morisot%2C_Le_berceau_%28The_Cradle%29%2C_1872.jpg", date: "1872", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 17, genre_id: 3, title: "The Anatomy Lesson of Dr. Nicolaes Tulp", currently_at: "Mauritshuis, The Hague", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Rembrandt_-_The_Anatomy_Lesson_of_Dr_Nicolaes_Tulp.jpg", date: "1632", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 15, genre_id: 3, title: "Self-Portrait with Bandaged Ear", currently_at: "The Courtauld Gallery, London", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/f/f0/VanGogh-self-portrait-with_bandaged_ear.jpg", date: "1889", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 16, genre_id: 3, title: "The Allegory of Painting", currently_at: "Museum of Fine Art, Vienna", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/5/5e/Jan_Vermeer_-_The_Art_of_Painting_-_Google_Art_Project.jpg", date: "ca. 1666", theme_id: 1},
  {paint_medium: "Oil on cardboard", artist_id: 4, genre_id: 3, title: "A Norman Milkmaid at Gréville", currently_at: "", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/1/15/Jean-Fran%C3%A7ois_Millet_-_A_Norman_Milkmaid_at_Gr%C3%A9ville_-_Google_Art_Project.jpg", date: "1871", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 5, genre_id: 3, title: "A Scene from the Life of St. Martin", currently_at: "", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/c/c7/Louis_Galloche_-_A_Scene_from_the_Life_of_St._Martin.jpg", date: "ca. 1737", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 6, genre_id: 3, title: "Allegory of Navigation with a Cross-Staff: Averroës", currently_at: "", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/c/c5/Paolo_Veronese_-_Allegory_of_Navigation_with_a_Cross-Staff%2C_Averro%C3%ABs.jpg", date: "1557", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 6, genre_id: 3, title: "Allegory of Navigation with an Astrolabe: Ptolemy", currently_at: "", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/2/29/Paolo_Veronese_-_Allegory_of_Navigation_with_an_Astrolabe%2C_Ptolemy_%281557%29.jpg", date: "1557", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 7, genre_id: 3, title: "Christ in Limbo", currently_at: "", additional_info: nil, fan_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/3/3d/Hieronymus_Bosch_100.jpg", date: "ca. 1655", theme_id: 1},
  {paint_medium: "Mixed media on paper ", artist_id: 1, genre_id: 2, title: "The Long Gone", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/YEhFjdyND8olY3k4K6YgEQ/large.jpg", date: "2020", theme_id: 2},
  {paint_medium: "Oil on plastic canvas", artist_id: 1, genre_id: 2, title: "Mixed Poems (Triptych I)", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/EsK16y0Eq323InpDtqgNpw/large.jpg", date: "2017", theme_id: 2},
  {paint_medium: "Oil and gesso on canvas", artist_id: 22, genre_id: 2, title: "Small Blue Drop", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/sYeEXCzUZSYvTuYPAXVbJQ/large.jpg", date: "2020", theme_id: 2},
  {paint_medium: "Oil and color pencil on linen", artist_id: 23, genre_id: 2, title: "Sleeping 2", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/E8fETehm9lCfi5tVGLfncg/large.jpg", date: nil, theme_id: 3},
  {paint_medium: "Oil on canvas", artist_id: 24, genre_id: 2, title: "Curtain Call for Linda Leven, Room 629", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/l1ru-28ML6a2Of6AvkeTIw/large.jpg", date: "2020", theme_id: 1},
  {paint_medium: "Acrylic on paper", artist_id: 25, genre_id: 2, title: "I wanna dance with somebody", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/pr0f0wVF-7PD_21J01-zZA/large.jpg", date: "2020", theme_id: 3},
  {paint_medium: "Oil on canvas", artist_id: 26, genre_id: 4, title: "Almudena", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/9yjtFSZd30CW1zJWloYkOg/large.jpg", date: "1966", theme_id: 5},
  {paint_medium: "Acrylic on canvas", artist_id: 27, genre_id: 4, title: "The Embrace no.2", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/XWFu7g-AZif5IxaPRo_vqA/large.jpg", date: "1967", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 28, genre_id: 4, title: "Outburst", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/vUdVDwDuwJ8HeBKGEFztMA/large.jpg", date: "1956", theme_id: 3},
  {paint_medium: "Oil on canvas", artist_id: 29, genre_id: 1, title: "Finlandia", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/Pflc_FzfyOMuaf_w7gr2wg/large.jpg", date: "1940", theme_id: 1},
  {paint_medium: "Oil on canvas", artist_id: 30, genre_id: 1, title: "Paysage de Mirmande", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/Ne-L94fTB-pQglSuhzpI6Q/large.jpg", date: "1938", theme_id: 4},
  {paint_medium: "Oil on waxed linen", artist_id: 31, genre_id: 1, title: "Still Life with Apples and Shell", currently_at: nil, additional_info: nil, fan_id: nil, image: "https://d32dm0rphc51dk.cloudfront.net/p9J91glEhW3Qqj5es-2L4A/large.jpg", date: "1912", theme_id: 6}
])
Theme.create!([
  {description: nil, theme_name: "Bodies / Figures"},
  {description: "", theme_name: "Abstract"},
  {description: "", theme_name: "Abstraction"},
  {description: "", theme_name: "Landscape"},
  {description: "", theme_name: "Geometric"},
  {description: "", theme_name: "Still Life"}
])
Fan.create!([
  {painting_id: 0, user_id: nil},
  {painting_id: 34, user_id: 1},
  {painting_id: 39, user_id: 1},
  {painting_id: 39, user_id: 2},
  {painting_id: 20, user_id: 2},
  {painting_id: 40, user_id: 2}
])
Artist.create!([
  {artist_name: "Sam Lock", artist_dob: nil, genre_id: nil},
  {artist_name: "Martha Rosler", artist_dob: nil, genre_id: nil},
  {artist_name: "Jose Ciria", artist_dob: nil, genre_id: nil},
  {artist_name: "Jean-François Millet", artist_dob: "1814-10-04", genre_id: nil},
  {artist_name: "Louis Galloche", artist_dob: "1670-08-24", genre_id: nil},
  {artist_name: "Paolo Veronese", artist_dob: nil, genre_id: nil},
  {artist_name: "Hieronymus Bosch", artist_dob: nil, genre_id: nil},
  {artist_name: "Pierre-Auguste Renoir", artist_dob: "1841-02-25", genre_id: nil},
  {artist_name: "Gustav Klimt", artist_dob: "1862-07-14", genre_id: nil},
  {artist_name: "Matthias Grünewald, Nikolaus Hagenauer", artist_dob: nil, genre_id: nil},
  {artist_name: "Jean Auguste Dominique Ingres", artist_dob: "1780-08-29", genre_id: nil},
  {artist_name: "Eugène Delacroix", artist_dob: "1798-04-26", genre_id: nil},
  {artist_name: "Berthe Morisot", artist_dob: "1841-01-14", genre_id: nil},
  {artist_name: " Édouard Manet", artist_dob: "1832-01-23", genre_id: nil},
  {artist_name: "Vincent van Gogh", artist_dob: "1853-03-30", genre_id: nil},
  {artist_name: "Johannes Vermeer", artist_dob: "1632-10-31", genre_id: nil},
  {artist_name: "Rembrandt", artist_dob: "1606-07-15", genre_id: nil},
  {artist_name: "Sandro Botticelli", artist_dob: "1445-03-01", genre_id: nil},
  {artist_name: "Leonardo da Vinci", artist_dob: "1452-04-15", genre_id: nil},
  {artist_name: "Théodore Géricault", artist_dob: nil, genre_id: nil},
  {artist_name: "William Hogarth", artist_dob: "1697-11-10", genre_id: nil},
  {artist_name: "Tom Lieber", artist_dob: nil, genre_id: nil},
  {artist_name: "Doron Langberg", artist_dob: nil, genre_id: nil},
  {artist_name: "Tali Lennox", artist_dob: nil, genre_id: nil},
  {artist_name: "Selin", artist_dob: nil, genre_id: nil},
  {artist_name: "Manuel Espinosa", artist_dob: nil, genre_id: nil},
  {artist_name: "Sergio Sarri", artist_dob: nil, genre_id: nil},
  {artist_name: "Judit Reigl", artist_dob: nil, genre_id: nil},
  {artist_name: "Harold Weston", artist_dob: nil, genre_id: nil},
  {artist_name: "André Lhote", artist_dob: nil, genre_id: nil},
  {artist_name: "Joseph Stella", artist_dob: nil, genre_id: nil}
])

ArtMovement.create!([
  {genre_name: "Impressionist"},
  {genre_name: "Contemporary Art"},
  {genre_name: "Realism"},
  {genre_name: "Post-War Art"}
  
])
User.create!([
  {email: "enavarro1@uchicago.edu", password: "password", username: "estefinc"},
  {email: "estefinavarro96@gmail.com", password: "password", username: "Estefiagain"}
])
