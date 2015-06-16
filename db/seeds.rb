users = User.create([
  {name: "Rachel Okimoto", username: "rokimoto", email: "rachel.okimoto@gmail.com", password: "password1", role: "admin"},
])



locations = Location.create([

  # The Winchester House
  {name:'The Winchester Mystery House', address:'525 S Winchester Blvd San Jose, CA 95128', yelp_id:'winchester-mystery-house-san-jose'},

  # Antelope Canyon
  {name:'Antelope Canyon, Arizona', address:'55 S Lake Powell Blvd Page, AZ 86040', yelp_id:'lower-antelope-canyon-page'},

  # Watkins Glen State Park
  {name:'Watkins Glen State Park', address:'1009 N Franklin St Watkins Glen, NY 14891', yelp_id:'watkins-glen-state-park-watkins-glen'},

  # Grand Prismatic Springs
  {name:'Grand Prismatic Spring', address:'Grand Loop Rd Yellowstone National Park, WY 82190', yelp_id:'grand-prismatic-spring-yellowstone-national-park'},

  # Calbad Caverns National Park
  {name:'Calsbad Caverns National Park', address:'190 Reef Top Cir Carlsbad, NM 88220', yelp_id:'carlsbad-caverns-national-park-carlsbad'},

  # Hamilton Pools Nature Preserve
  {name:'Hamilton Pool Nature Preserve', address:'24300 Hamilton Pool Rd Dripping Springs, TX 78620', yelp_id:'hamilton-pool-nature-preserve-dripping-springs'},

  # Bryce Canyon National Park
  {name:'Bryce Canyon National Park', address:'Hwy 63/1 Park Rd Bryce Canyon, UT 84764', yelp_id:'bryce-canyon-national-park-bryce-canyon'},

  # The Wave at Coyote Buttes
  {name:'The Wave at Coyote Buttes', address:'381 N 100 E Kanab, UT 84741', yelp_id:'the-wave-at-coyote-buttes-kanab'},

  # Sequoia National Park
  {name:'Sequoia National Park', address:'Highway 198 Sequoia National Park, CA 93262', yelp_id:'general-sherman-tree-sequoia-national-park'},

  # Thor's Well
  {name:"Thor's Well", address:'2311-2399 Oregon Coast Hwy Siuslaw National Forest Florence, OR 97439', yelp_id:'thors-well-florence'},

  # Badland's National Park
  {name:'Badlands National Park', address:'Rockyford Kyle, SD 57752', yelp_id:'badlands-national-park-kyle'},

  # Cadillac Ranch
  {name:'Cadillac Ranch', address:'I-40 Amarillo, TX 79124 b/t I-40 & Hope Rd', yelp_id:'cadillac-ranch-amarillo'},

  # Wacko's Soap Plant
  {name:'Wacko Soap Plant', address:'4633 Hollywood Blvd Los Angeles, CA 90027', yelp_id:'wacko-soap-plant-los-angeles'},

  # Venice Beach
  {name:'Venice Beach', address:'1500 Ocean Front Walk Venice, CA 90291', yelp_id:'venice-beach-venice'},

  # Los Angeles County Museum of Art
  {name:'Los Angeles County Museum of Art', address:'5905 Wilshire Blvd Los Angeles, CA 90036', yelp_id:'los-angeles-county-museum-of-art-los-angeles-7'},

  # Griffith Observatory
  {name:'Griffith Observatory', address:'2800 E Observatory Rd Los Angeles, CA 90027', yelp_id:'griffith-observatory-los-angeles-2'},

  # Watt's Tower
  {name:'Watts Tower', address:'1727 E 107th St Los Angeles, CA 90002', yelp_id:'watts-towers-arts-center-los-angeles'},

  # Huntington Botanical Gardens
  {name:'Huntington Botanical Gardens', address:'1151 Oxford Rd San Marino, CA 91108', yelp_id:'huntington-library-art-collections-and-botanical-gardens-san-marino'},

  # La Brea Tar Pits
  {name:'La Brea Tar Pits', address:'Wilshire Blvd Los Angeles, CA', yelp_id:'la-brea-tar-pits-los-angeles-2'},

  # Sunken City
  {name:'Sunken City', address:'500 W Paseo Del Mar San Pedro, CA 90731', yelp_id:'sunken-city-san-pedro'},

  # The Abnormalarts
  {name:'The Abnormalarts', address:'11334 Burbank Blvd North Hollywood, CA 91601', yelp_id:'cia-the-california-institute-of-abnormalarts-north-hollywood'},

  # The Museum of Death
  {name:'The Museum of Death', address:'6031 Hollywood Blvd Los Angeles, CA 90028', yelp_id:'museum-of-death-los-angeles-2'},

  # The Museum of Jurassic Technology
  {name:'The Museum of Jurassic Technology', address:'9341 Venice Blvd Culver City, CA 90232', yelp_id:'the-museum-of-jurassic-technology-culver-city'},

  # Runyon Canyon Park
  {name:'Runyon Canyon Park', address:'2001 N Fuller Ave Los Angeles, CA 90046', yelp_id:'runyon-canyon-park-los-angeles-2'},

  # Potato Chip Rock
  {name:'Potato Chip Rock', address:'14644 Lake Poway Rd Poway, CA 92064', yelp_id:'potato-chip-rock-poway'},

  # Salvation Mountain
  {name:'Salvation Mountain', address:'Beal Rd Niland, CA 92257', yelp_id:'salvation-mountain-niland'},

  # Center of The World
  {name:'Center of The World', address:'1 Center of the World Dr Felicity, CA 92283', yelp_id:'center-of-the-world-felicity-2'},

  # Cabazon Dinosaurs
  {name:'Cabazon Dinosaurs', address:'50800 Seminole Dr Cabazon, CA 92230', yelp_id:'cabazon-dinosaurs-cabazon'},

  # Time Travel Mart
  {name:'Time Travel Mart', address:'1714 W Sunset Blvd Los Angeles, CA 90026', yelp_id:'time-travel-mart-los-angeles'},

  # Lava Tubes
  {name:'Lava Tubes', address:'2701 Barstow Rd Barstow, CA 92311', yelp_id:'mojave-national-preserve-barstow-2'},

  # Bubblegum Alley
  {name:'Bubblegum Alley', address:'733.5 Higuera Street San Luis Obispo, CA 93401', yelp_id:'bubblegum-alley-san-luis-obispo-2'},

  # Paramount Ranch
  {name:'Paramount Ranch', address:'2903 Cornell Rd Agoura Hills, CA 91301', yelp_id:'paramount-ranch-agoura-hills'},

  # Marfa Mystery Lights Viewing Area
  {name:'Marfa Mystery Lights Viewing Area', address:'Hwy 90 Marfa, TX 79843', yelp_id:'marfa-mystery-lights-viewing-area-marfa'},

  # Oregon Vortex Mystery House
  {name:'Oregon Vortex Mystery House', address:'4303 Sardine Crk L Frk Rd Gold Hill, OR 97525', yelp_id:'house-of-mystery-at-the-oregon-vortex-gold-hill'},

  # Petrified Wood Park
  {name:'Petrified Wood Park', address:'500 Main Ave Lemmon, SD 57638', yelp_id:'the-petrified-wood-park-and-museum-lemmon'},

  # Coral Castle
  {name:'Coral Castle', address:'28655 S Dixie Hwy Homestead, FL 33033', yelp_id:'coral-castle-homestead'},

  # International Banana Museum
  {name:'International Banana Museum', address:'98775 Hwy 111 Mecca, CA 92254', yelp_id:'international-banana-museum-mecca'},

  # The Bonnie and Clyde's Death Car
  {name:'The Bonnie and Clyde Death Car', address:'31900 S Las Vegas Blvd Primm, NV 89019', yelp_id:'primm-valley-resort-and-casino-primm'},

  # The Minister's Tree House
  {name:"Minister's Tree House", address:'Beehive Lane Crossville, TN 38571', yelp_id:'ministers-tree-house-crossville'},

  # Town Atop A Burning Coal Mine
  {name:'Town Atop A Burning Coal Mine', address:'Centralia, PA 17921', yelp_id:'centralia-centralia-4'},

  # Big Tree Drive-Thru
  {name:'Big Tree Drive-Thru', address:'67402 Drive Thru Tree Road Leggett, CA 95585', yelp_id:'drive-thru-tree-leggett'},

  # Hershey's Chocolate World
  {name:"Hershey's Chocolate World", address:'251 Park Blvd Hershey, PA 17033', yelp_id:'hersheys-chocolate-world-hershey'},

  # The Thing?
  {name:'The Thing?', address:'2631 N Johnson Rd Dragoon, AZ 85609', yelp_id:'the-thing-dragoon'},

  # Cano's Castle
  {name:"Cano's Castle", address:'Hwy 285 Antonito, CO 81120', yelp_id:'canos-castle-antonito'},

  # The Largest Ball of Twine
  {name:'Largest Ball of Twine', address:'Darwin, MN 55324', yelp_id:'worlds-largest-ball-of-twine-darwin'},

  # Nicolas Cage's Tomb
  {name:"Nicolas Cage's Tomb", address:'320 N Claiborne Ave New Orleans, LA 70112', yelp_id:'st-louis-cemetery-2-new-orleans-2'},

  # A Choclate Store with a Chocolate Moose
  {name:'A Chocolate Moose', address:'419 US Rt 1 Scarborough, ME 04074',yelp_id:'len-libby-candy-shops-scarborough'},

  # National Atomic Testing Museum
  {name:'National Atomic Testing Museum', address:'755 E Flamingo Rd Las Vegas, NV 89119', yelp_id:'national-atomic-testing-museum-las-vegas'},

  # Area 51 Alien Travel Center
  {name:'Area 51 Alien Travel Center', address:'2711 E US Hwy 95 Amargosa Valley, NV 89020', yelp_id:'area-51-alien-travel-center-amargosa-valley'},

  # Trouble Coffee Comapny
  {name:'Trouble Coffee Company', address:'4033 Judah St San Francisco, CA 94122', yelp_id:'trouble-coffee-company-san-francisco'},

  # Pacific Pinball Museum
  {name:'Pacific Pinball Museum', address:'1510 Webster St Alameda, CA 94501', yelp_id:'pacific-pinball-museum-alameda'},

  # Glaum's Egg Ranch with Robots
  {name:'Glaum Egg Ranch', address:'3100 Valencia Rd Aptos, CA 95003', yelp_id:'glaum-egg-ranch-aptos'},

  # A Ghost Town and Freak Lamb
  {name:'Ghost Town and Freak Lamb', address:'5 Kidder Ct Nevada City, CA 95959', yelp_id:'narrow-gauge-railroad-museum-nevada-city'},

  # A restaurant where the movie "The Birds" was filmed
  {name:"'The Birds' Movie Resturant", address:'835 Hwy 1 Bodega Bay, CA 94923', yelp_id:'the-tides-wharf-restaurant-bodega-bay'},

  # The school house where the movie "The Birds" was filmed
  {name:"'The Birds' Movie School House", address:'17110 Bodega Ln Bodega, CA 94922', yelp_id:'potter-school-house-bodega'},

  # Pez Museum
  {name:'Pez Museum', address:'214 California Dr Burlingame, CA 94010', yelp_id:'burlingame-museum-of-pez-memorabilia-burlingame'},

  # Petrified Forest
  {name:'Petrified Forest', address:'4100 Petrified Forest Rd Calistoga, CA 94515', yelp_id:'petrified-forest-calistoga'},

  # Old Faithful
  {name:'Old Faithful Geyser of California', address:'1299 Tubbs Ln Calistoga, CA 94515', yelp_id:'old-faithful-geyser-of-california-calistoga'},

  # Spook Hill
  {name:'Spook Hill', address:'600 N Wales Dr Lake Wales, FL 33853', yelp_id:'spook-hills-lake-wales'},

  # South of the Border
  {name:'South of the Border', address:'3346 Hwy 301 N Dillon, SC 29536', yelp_id:'south-of-the-border-dillon'}

])



