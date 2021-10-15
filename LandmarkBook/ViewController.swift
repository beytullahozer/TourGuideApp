//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Beytullah Özer on 13.10.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarksName = [String]()
    var landmarkImage = [UIImage]()
    var landmarkMetin = [String]()
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    var chosenLandmarkMetin = ""
    
    override func viewDidLoad() { // app basladıgında kullanıcı ilk bunu görmektedir.
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //LANDMARK BOOK DATAS
        
        landmarksName.append("Colesium, ROMA")
        landmarksName.append("Tac Mahal, INDIA")
        landmarksName.append("New York, USA")
        landmarksName.append("Paris, LONDRA")
        landmarksName.append("Love, YOUR HEART")
        landmarksName.append("Ayasofya, Istanbul")
        landmarksName.append("Yerebatan Sarnıcı, Istanbul")
        landmarksName.append("Galata Köprüsü, Istanbul")
        landmarksName.append("Rumeli Hisarı, Istanbul")
        landmarksName.append("Eminönü, Istanbul")
        landmarksName.append("Taksim, Istanbul")
        landmarksName.append("Kız Kalesi, Istanbul")
        
        landmarkMetin.append("The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age. Construction began under the emperor Vespasian (r. 69–79 AD) in 72and was completed in 80 AD under his successor and heir, Titus (r. 79–81). Further modifications were made during the reign of Domitian (r. 81–96). The three emperors that were patrons of the work are known as the Flavian dynasty, and the amphitheatre was named the Flavian Amphitheatre (Latin: Amphitheatrum Flavium; Italian: Anfiteatro Flavio [aɱfiteˈaːtro ˈflaːvjo]) by later classicists and archaeologists for its association with their family name (Flavius).[citation needed]The Colosseum is built of travertine limestone, tuff (volcanic rock), and brick-faced concrete. The Colosseum could hold an estimated 50,000 to 80,000 spectators at various points in its history having an average audience of some 65,000; it was used for gladiatorial contests and public spectacles including animal hunts, executions, re-enactments of famous battles, and dramas based on Roman mythology, and briefly mock sea battles. The building ceased to be used for entertainment in the early medieval era. It was later reused for such purposes as housing, workshops, quarters for a religious order, a fortress, a quarry, and a Christian shrine.")
        landmarkMetin.append("The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan (reigned from 1628 to 1658) to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.Construction of the mausoleum was essentially completed in 1643, but work continued on other phases of the project for another 10 years. The Taj Mahal complex is believed to have been completed in its entirety in 1653 at a cost estimated at the time to be around 32 million rupees, which in 2020 would be approximately 70 billion rupees (about U.S. $956 million). The construction project employed some 20,000 artisans under the guidance of a board of architects led by the court architect to the emperor, Ustad Ahmad Lahauri.")
        landmarkMetin.append("It is the most populous city in the United States and the center of the New York metropolitan area, one of the world's most populated metropolitan areas. The city is called New York City (NYC for short) in English because it is confused with the State of New York of which it is a part. The city was built on top of one of the world's largest natural harbors. It is made up of 5 parts called New York borough (English pronunciation: [ˈbʌroʊ]), each part being a county. These 5 boroughs - the Bronx, Brooklyn, Manhattan, Queens, and Staten Island - were merged into one city in 1898.")
        landmarkMetin.append("Paris is the capital of France and the center of the Île-de-France region. It was established on the Seine, in the middle of the Paris Basin. Those residing in Paris are called Parisien (what). Known all over the world for its monuments, artistic and cultural life and having an important place in world history, Paris is among the main economic and political centers and constitutes one of the transit points of international transportation. Paris, the world capital of fashion and luxury, is also known as the City of Light (Ville Lumière). It is used to describe the Scilicet, the ship, in the coat of arms of the city. This ship symbolizes the union of the powerful Nautes or Water traders who ruled the city in the Middle Ages. The city's protector is Saint Geneviève, who is believed to have persuaded Attila not to destroy the city in the 5th century.")
        landmarkMetin.append("NO ONE")
        landmarkMetin.append("Hagia Sophia or officially known as Hagia Sophia-i Kebîr Mosque-i Şerîfi, formerly known as Hagia Sophia Church, is a mosque, old basilica, cathedral and museum in Istanbul. It is a basilica planned patriarchal cathedral built by the Byzantine Emperor Justinian I in the old city center of Istanbul between 532-537, and was converted into a mosque by Fatih Sultan Mehmed after the conquest of Istanbul by the Ottomans in 1453. It was converted into a museum with the Decree of the Council of Ministers published in 1934, excavation and renovation works were started and it served as a museum between 1935-2020. In 2020, after the cancellation of the museum status, it gained the status of a mosque again.")
        landmarkMetin.append("Located on the European side of Istanbul, it is the city's largest closed cistern. It is entered from a small building to the southwest of the Hagia Sophia building. The ceiling of the place, which has the appearance of a column forest, is brick-built and cross-vaulted. The cistern was built by the Byzantine emperor Justinian I (527-565). Due to the many marble columns rising from the water, it is called the Basilica Palace among the people. Since there was a basilica where the cistern is located, the building is also called Basilica Cistern. The cistern was also the subject of Dan Brown's novel Hell.")
        landmarkMetin.append("The Basilica Cistern, or Cisterna Basilica (Turkish: Yerebatan Sarnıcı or Yerebatan Saray, Subterranean Cistern or Subterranean Palace), is the largest of several hundred ancient cisterns that lie beneath the city of Istanbul, Turkey. The cistern, located 150 metres (490 ft) southwest of the Hagia Sophia on the historical peninsula of Sarayburnu, was built in the 6th century during the reign of Byzantine Emperor Justinian I. Today it is kept with little water, for public access inside the space. This subterranean cistern, in Greek kinsterne (κινστέρνη), was called Basilica because it was located under a large public square on the First Hill of Constantinople, the Stoa Basilica. At this location, and prior to constructing the cistern, a great Basilica stood in its place, built between the 3rd and 4th centuries during the Early Roman Age as a commercial, legal and artistic centre. The basilica was reconstructed by Illus after a fire in 476.Ancient texts indicated that the basilica contained gardens, surrounded by a colonnade and facing the Hagia Sophia. According to ancient historians, Emperor Constantine built a structure that was later rebuilt and enlarged by Emperor Justinian after the Nika riots of 532, which devastated the city.")
        landmarkMetin.append("The first recorded bridge over the Golden Horn in Istanbul was built during the reign of Justinian the Great in the 6th century, close to the area near the Theodosian Land Walls at the western end of the city.In 1453, during the Fall of Constantinople, the Turks assembled a mobile bridge by placing their ships side by side across the water, so that their troops could move from one side of the Golden Horn to the other.Golden Horn Bridge designed by Leonardo da Vinci in 1502.In the years 1502–1503, there were plans to construct the first bridge at the current location. Sultan Bayezid II solicited a design and Leonardo da Vinci, utilizing three well-known geometrical principles, the pressed-bow, parabolic curve and keystone arch, created an unprecedented single span 240 m (790 ft) long and 24 m (79 ft) wide bridge for the Golden Horn, which would have become the longest bridge in the world of that time, had it been constructed.[citation needed] However, the ambitious design was not approved by the Sultan.Another Italian artist, Michelangelo, was also invited to design a bridge for Istanbul. Michelangelo rejected the proposal, and the idea of building a bridge across the Golden Horn was shelved until the 19th century.")
        landmarkMetin.append("Rumelihisarı (also known as Rumelian Castle and Roumeli Hissar Castle) or Boğazkesen Castle is a medieval fortress located in Istanbul, Turkey, on a series of hills on the European banks of the Bosphorus. The fortress also lends its name to the immediate neighborhood around it in the city's Sarıyer district.Conceived and built between 1451 and 1452 on the orders of Ottoman Sultan Mehmed II, the complex was commissioned in preparation for a planned Ottoman siege on the then-Byzantine city of Constantinople, with the goal of cutting off maritime military and logistical relief that could potentially come to the Byzantines' aid by way of the Bosphorus Strait, hence the fortress's alternative name, Boğazkesen, i.e. Strait-cutter Castle. Its older sister structure, Anadoluhisari Anatolian Fortress, sits on the opposite banks of the Bosporus, and the two fortresses worked in tandem during the final siege to throttle all naval traffic along the Bosphorus, thus helping the Ottomans achieve their goal of making the city of Constantinople (later renamed Istanbul) their new imperial capital in 1453.After the Ottoman conquest of the city, Rumelihisarı served as a customs checkpoint and occasional prison, notably for the embassies of states that were at war with the Empire. After suffering extensive damage in the Great Earthquake of 1509, the structure was repaired, and was used continuously until the late 19th century.")
        landmarkMetin.append("The Golden Horn was a natural port, particularly the Eminönü/Sirkeci shore, which being on a peninsula was also eminently defensible. It was this location that led to the foundation of Byzantium, and from here that the city grew, with the oldest neighborhoods being the port districts along the Golden Horn. In the 12th century, the Byzantine port was also occupied by merchants from Venice, Amalfi, Genoa and Pisa, who eventually acquired their own wharfs and waterfront districts.In the Byzantine period, the modern area of Eminönü included the districts of Neórion (after the harbor located there), Akrópolis, Kynégion, Arcadianae/Arkadianaí, ta Hormísdou, Amantíou, Caenopolis/Kainópolis (New City), ta Kanikleíou, ta Narsoú, ta Kaisaríou, Artopoleía (the bakeries), Argyroprateía (the silver vendors), Chalkoprateía (the bronze vendors), ta Olybríou, Constantinianae/Konstantinianaí, ta Amastrianón, Eugeníou, Pérama (Crossing, the place where the ferry to Galata sailed), Zeúgma, Stauríon, Vlánga, Heptáskalon.The Golden Horn was still a thriving port in Ottoman times, occupied by importers, warehousemen, sailors and traders of every description, the centre of trade in the city, a labyrinth of narrow streets, workshops and markets leading uphill to Topkapı Palace, the Ottoman capital.")
        landmarkMetin.append("The word Taksim means division or distribution in Arabic. Taksim Square was originally the point where the main water lines from the north of Istanbul were collected and branched off to other parts of the city (hence the name.) This use for the area was established by Sultan Mahmud I. The square takes its name from the Ottoman era stone reservoir which is located in this area.Another significant building that once stood on the square was the 19th century Taksim Artillery Barracks (Taksim Kışlası, which later became the Taksim Stadium), but it was demolished in 1940 during the construction works in accordance with the plans of French architect and city planner Henri Prost for Taksim Square and Taksim Gezi Park. Taksim Gezi Park is a small green park in the midst of the concrete expanse of central Istanbul. In 2013, the city municipality, wanting to demolish the park to add further shopping venues, began forcefully removing protesters who had set up camp in the park. After news spread of the police brutality, thousands of people rallied in the Occupy Taksim movement, to stop the demolition of the park. As the current status of the demolition project is in limbo, the Justice and Development Party (AKP) government has the Police stationed in and around Taksim Square ready with riot control equipment to deter any large demonstrations.")
        landmarkMetin.append("After the naval victory at Cyzicus, the ancient Athenian general Alcibiades possibly built a custom station for ships coming from the Black Sea on a small rock in front of Chrysopolis (today's Üsküdar). In 1110 Byzantine Emperor Alexius Comnenus built a wooden tower protected by a stone wall. From the tower an iron chain stretched across to another tower erected on the European shore, at the quarter of Mangana in Constantinople. The islet was then connected to the Asiatic shore through a defense wall, whose underwater remains are still visible. During the Ottoman conquest of Constantinople (Istanbul) in 1453, the tower held a Byzantine garrison commanded by the Venetian Gabriele Trevisano. Subsequently, the structure was used as a watchtower by the Ottoman Turks during the reign of Sultan Mehmed the Conqueror.The tower, often named Leander's Tower in reference to the legend of Hero and Leander (which took place in the Dardanelles strait, also known as the Hellespont in antiquity), was destroyed during the earthquake of 1509, and burned in 1721. Since then it was used as a lighthouse, and the surrounding walls were repaired in 1731 and 1734, until in 1763 it was erected using stone. From 1829 the tower was used as a quarantine station, and in 1832 was restored by Sultan Mahmud II. Restored again by the harbour authority in 1945, the most recent restoration began in 1998 for the James Bond movie The World Is Not Enough, and steel supports were added around the ancient tower as a precaution after the 17 August 1999 earthquake.")
        
        landmarkImage.append(UIImage(named: "colesium")!)
        landmarkImage.append(UIImage(named: "tacmahal")!)
        landmarkImage.append(UIImage(named: "newyork")!)
        landmarkImage.append(UIImage(named: "paris")!)
        landmarkImage.append(UIImage(named: "love")!)
        landmarkImage.append(UIImage(named: "ayasofya")!)
        landmarkImage.append(UIImage(named: "yerebatanSarnici")!)
        landmarkImage.append(UIImage(named: "galataKoprusu")!)
        landmarkImage.append(UIImage(named: "rumeliHisari")!)
        landmarkImage.append(UIImage(named: "eminonu")!)
        landmarkImage.append(UIImage(named: "taksim")!)
        landmarkImage.append(UIImage(named: "kizKulesi")!)
        
        navigationItem.title = "Landmark Book"
        
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // ROW DELETE ON TABLE
        
        if editingStyle == .delete {
            landmarksName.remove(at: indexPath.row)
            landmarkImage.remove(at: indexPath.row)
            landmarkMetin.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //SIRADA YAZACAGIM SEYLER NE OLACAK
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarksName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // TABLE DA KAC SIRA OLACAK
        
        return landmarksName.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenLandmarkName = landmarksName[indexPath.row]
        chosenLandmarkImage = landmarkImage[indexPath.row]
        chosenLandmarkMetin = landmarkMetin[indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // SEGUE OLMADAN ONCE YAPILACAK ISLEM
        if segue.identifier == "toImageViewController" {
            // IMAGEVIEWCONTROLLER değişkene tanımlanmalı
            let destinationViewController = segue.destination as! imageViewController
            destinationViewController.selectedLandmarkName = chosenLandmarkName
            destinationViewController.selectedLandmarkImage = chosenLandmarkImage
            destinationViewController.selectedLandmarkMetin = chosenLandmarkMetin
        }
    }
    
    
}

