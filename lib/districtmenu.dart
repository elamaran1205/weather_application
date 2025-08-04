Map<String, List<String>> districtMap = {
  'Ariyalur': [
    'Alagiyamanavalam', 'Alanduraiyarkattalai', 'Andipattakkadu', 'Annimangalam',
    'Arungal', 'Avansuthamalli', 'Ayanathur', 'Chinnapattakadu', 'Edayathankudi', 'Elakurichi',
  ],
  'Chengalpattu': [
    'Chengalpattu', 'Tambaram', 'Pallavaram', 'Madambakkam', 'Maraimalai Nagar',
    'Guduvancheri', 'Perungalathur', 'Vandalur', 'Kelambakkam', 'Thiruporur',
  ],
  'Chennai': [
    'Tondiarpet', 'Royapuram', 'George Town', 'Egmore', 'Mylapore', 'Saidapet',
    'T. Nagar', 'Kodambakkam', 'Anna Nagar', 'Adyar',
  ],
  'Coimbatore': [
    'Coimbatore', 'Pollachi', 'Mettupalayam', 'Valparai', 'Kinathukadavu', 'Sulur',
    'Annur', 'Perur', 'Karamadai', 'Madukkarai',
  ],
  'Cuddalore': [
    'Cuddalore', 'Chidambaram', 'Panruti', 'Vadalur', 'Neyveli', 'Kurinjipadi',
    'Tittakudi', 'Virudhachalam', 'Sankarapuram', 'Parangipettai',
  ],
  'Dharmapuri': [
    'Dharmapuri', 'Harur', 'Palacode', 'Pappireddipatti', 'Pennagaram', 'Karimangalam',
    'Kadathur', 'Morappur', 'Nallampalli', 'Hale Dharmapuri','Pudupatti'
  ],
  'Dindigul': [
    'Dindigul', 'Palani', 'Oddanchatram', 'Vedasandur', 'Kodaikanal', 'Batlagundu',
    'Nilakottai', 'Natham', 'Sanarpatti', 'Athoor',
  ],
  'Erode': [
    'Erode', 'Gobichettipalayam', 'Bhavani', 'Sathyamangalam', 'Perundurai', 'Modakurichi',
    'Kodumudi', 'Chennimalai', 'Ammapet', 'Vellakoil',
  ],
 // 'Kallakurichi': [
   // 'Kallakurichi', 'Chinnasalem', 'Sankarapuram', 'Ulundurpet', 'Thiyagadurgam',
    //'Kalvarayan Hills', 'Pethanaickenpalayam', 'Thirukovilur', 'Veeracholapuram', 'Manalurpet',
  //],
  'Kancheepuram': [
    'Kancheepuram', 'Sriperumbudur', 'Uthiramerur', 'Walajabad', 'Maduranthakam',
    'Chengalpattu', 'Tiruporur', 'Kaveripakkam', 'Thirukalukundram', 'Vandalur',
  ],
  'Kanniyakumari': [
    'Nagercoil', 'Kanyakumari', 'Marthandam', 'Colachel', 'Kuzhithurai', 'Padmanabhapuram',
    'Vilavancode', 'Thuckalay', 'Suchindram', 'Rajakkamangalam',
  ],
  'Karur': [
    'Karur', 'Kulithalai', 'Krishnarayapuram', 'Aravakurichi', 'Pugalur', 'Kadavur',
    'Thanthonimalai', 'Velliyanai', 'Kadachanendal', 'Krishnarayapuram',
  ],
  'Krishnagiri': [
    'Krishnagiri', 'Hosur', 'Uthangarai', 'Denkanikottai', 'Bargur', 'Shoolagiri',
    'Pochampalli', 'Kaveripattinam', 'Palacode', 'Mathur',
  ],
  'Madurai': [
    'Madurai', 'Melur', 'Thirumangalam', 'Usilampatti', 'Vadipatti', 'Sedapatti',
    'Kottampatti', 'Alanganallur', 'Sholavandan', 'Natham',
  ],
  'Nagapattinam': [
    'Nagapattinam', 'Vedaranyam', 'Thirukkuvalai', 'Kilvelur', 'Sirkazhi', 'Tiruvarur',
    'Mayiladuthurai', 'Tharangambadi', 'Mannargudi', 'Kollidam',
  ],
  'Namakkal': [
    'Namakkal', 'Rasipuram', 'Tiruchengode', 'Kolli Hills', 'Komarapalayam', 'Mohanur',
    'Velur', 'Senthamangalam', 'Kabilarmalai', 'Paramathi Velur',
  ],
  'Perambalur': [
    'Perambalur', 'Kunnam', 'Veppanthattai', 'Arumbavur', 'Labbaikudikadu', 'Alathur',
    'Andipatti', 'Kadathur', 'Peramachipalayam', 'Thirumangalam',
  ],
  'Pudukkottai': [
    'Pudukkottai', 'Aranthangi', 'Alangudi', 'Illuppur', 'Ponnamaravathi', 'Karambakkudi',
    'Manapparai', 'Gandarvakottai', 'Thirumayam', 'Avudaiyarkoil',
  ],
  'Ramanathapuram': [
    'Ramanathapuram', 'Rameswaram', 'Paramakudi', 'Thiruvadanai', 'Mandapam', 'Kamuthi',
    'Mudukulathur', 'Kadaladi', 'Tiruvadanai', 'Thiruppullani',
  ],
  'Salem': [
    'Salem', 'Mettur', 'Attur', 'Edappadi', 'Sankagiri', 'Omalur',
    'Vazhapadi', 'Gangavalli', 'Nangavalli', 'Yercaud',
  ],
  'Sivaganga': [
    'Sivaganga', 'Karaikudi', 'Manamadurai', 'Devakottai', 'Ilayangudi', 'Singampunari',
    'Kalayarkoil', 'Tiruppattur', 'Kallal', 'Thiruppuvanam',
  ],
  'Thanjavur': [
    'Thanjavur', 'Kumbakonam', 'Pattukkottai', 'Orathanadu', 'Peravurani', 'Papanasam',
    'Needamangalam', 'Tiruvaiyaru', 'Budalur', 'Thiruvaiyaru',
  ],
  'The Nilgiris': [
    'Ooty (Udhagamandalam)', 'Coonoor', 'Gudalur', 'Kotagiri', 'Wellington', 'Lovedale',
    'Fernhill', 'Pykara', 'Avalanche', 'Aravenu',
  ],
  'Theni': [
    'Theni', 'Periyakulam', 'Bodinayakanur', 'Cumbum', 'Uthamapalayam', 'Andipatti',
    'Kottampatti', 'Chinnamanur', 'Kamatchi Nagar', 'Vattakottai',
  ],
  'Thiruvallur': [
    'Thiruvallur', 'Avadi', 'Ambattur', 'Poonamallee', 'Tiruttani', 'Thiruninravur',
    'Gummidipoondi', 'Minjur', 'Ponneri', 'Pallipattu',
  ],
  'Thiruvarur': [
    'Thiruvarur', 'Mannargudi', 'Nannilam', 'Kodavasal', 'Valangaiman', 'Needamangalam',
    'Koothanallur', 'Adirampattinam', 'Thiruthuraipoondi', 'Kuthalam',
  ],
  'Thoothukkudi': [
    'Thoothukkudi (Tuticorin)', 'Tiruchendur', 'Kovilpatti', 'Ettayapuram', 'Kayathar',
    'Srivaikundam', 'Vilathikulam', 'Puthukottai', 'Sattankulam', 'Sathankulam',
  ],
  'Tiruchirappalli': [
    'Tiruchirappalli (Trichy)', 'Srirangam', 'Lalgudi', 'Manapparai', 'Musiri', 'Thuraiyur',
    'Karur', 'Andanallur', 'Marungapuri', 'Mannachanallur',
  ],
  'Tirunelveli': [
    'Tirunelveli', 'Tenkasi', 'Ambasamudram', 'Nanguneri', 'Alangulam', 'Palayamkottai',
    'Kalakadu', 'Cheranmahadevi', 'Radhapuram', 'Valliyur',
  ],
  'Tiruvannamalai': [
    'Tiruvannamalai', 'Arani', 'Cheyyar', 'Polur', 'Vandavasi', 'Chengam',
    'Kilpennathur', 'Kalasapakkam', 'Jamunamarathur', 'Thandarampattu',
  ],
  'Vellore': [
    'Vellore', 'Gudiyatham', 'Arakkonam', 'Ranipet', 'Walajapet', 'Pernambut',
    'Anaicut', 'Katpadi', 'Arcot', 'Kaveripakkam',
  ],
  'Viluppuram': [
    'Viluppuram', 'Tindivanam', 'Kallakurichi', 'Gingee', 'Marakkanam', 'Vanur',
    'Vikravandi', 'Ulundurpettai', 'Thiruvennainallur', 'Sankarapuram',
  ],
  'Virudhunagar': [
    'Virudhunagar', 'Sivakasi', 'Rajapalayam', 'Aruppukkottai', 'Sattur', 'Srivilliputhur',
    'Watrap', 'Narikudi', 'Kariapatti', 'Thiruchuli',
  ],
};
