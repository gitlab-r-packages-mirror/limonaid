data <- read.csv("survey_100001_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8-BOM")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "seed"
names(data)[5] <- "seed"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "startdate"
names(data)[6] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "datestamp"
names(data)[7] <- "datestamp"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Where do you live?"
data[, 8] <- factor(data[, 8], levels=c("ac00","af00","ax00","al00","dz00","ad00","aq00","ao00","ag00","ar00","am00","aw00","au00","auns","auvi","auqu","auwa","ausa","auta","auac","aunt","auni","auci","auaa","auco","aujb","aucs","auai","auhm","at00","az00","bs00","bh00","bd00","bb00","by00","be00","bebr","bevl","bewa","bz00","bj00","bt00","bo00","ba00","bw00","br00","io00","vg00","bn00","bg00","bf00","bi00","kh00","cm00","ca00","cv00","ky00","cf00","td00","cl00","cn00","cx00","cc00","co00","km00","cg00","cd00","ck00","cr00","ci00","hr00","cu00","cy00","cz00","dk00","dj00","dm00","do00","tp00","ec00","ey00","sv00","eg00","er00","ee00","eene","eece","eens","eese","eewe","eeta","eetl","et00","fk00","fo00","fj00","fi00","fr00","frbf","frbr","frce","frco","frge","frhf","frif","frno","frna","froc","frpl","frpa","frdo","ga00","gm00","ge00","de00","gh00","gi00","gr00","gl00","gd00","gp00","gu00","gt00","gn00","gw00","gy00","ht00","hm00","hn00","hk00","hu00","is00","in00","inan","inap","inar","inas","inbi","inch","incg","indn","inde","ingo","ingu","inha","indp","injk","injh","inka","inke","inla","inlk","inmp","inma","inmn","inme","inmi","inna","inod","inpu","inpj","inra","insi","intn","inte","intr","inup","inut","inwb","id00","idsu","idja","idka","idsl","idba","idnb","idnt","idpa","idkm","ir00","iq00","ie00","im00","il00","it00","jm00","jp00","jo00","kz00","ke00","ki00","kn00","ks00","ko00","kw00","kg00","la00","lv00","lb00","ls00","lr00","ly00","li00","lt00","lu00","mo00","mk00","mg00","mw00","my00","mv00","ml00","mt00","mh00","mq00","mr00","mu00","mx00","fm00","md00","mc00","mn00","me00","ms00","ma00","mz00","nm00","na00","nr00","np00","nl00","nc00","nz00","ni00","ne00","ng00","nu00","nf00","mp00","no00","om00","pk00","pw00","ps00","pa00","pg00","py00","pe00","ph00","pn00","pl00","pt00","pr00","qa00","re00","ro00","ru00","rw00","ws00","sm00","st00","sa00","sn00","rs00","sc00","sl00","sg00","sk00","si00","sb00","so00","za00","ss00","es00","lk00","sh00","kt00","lc00","pm00","vc00","sd00","sr00","sj00","sz00","se00","ch00","chfr","chge","chit","sy00","tw00","tj00","tz00","th00","tg00","tk00","to00","tt00","tn00","tr00","tm00","tv00","ug00","ua00","ae00","uk00","uken","ukni","uksc","ukwa","us00","uy00","uz00","vu00","va00","ve00","vn00","eh00","ye00","zm00","zw00"),labels=c("Ascension Island", "Afghanistan", "Aland", "Albania", "Algeria", "Andorra", "Antarctica", "Angola", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia - no state specified", "Australia - New South Wales", "Australia - Victoria", "Austrialia - Queensland", "Australia - Western Australia", "Australia - South Australia", "Australia - Tasmania", "Australia - Australian Capital Territory", "Australia - Northern Territory", "Australia - Norfolk Island", "Australia - Christmas Island", "Australia - Australian Antarctic Territory", "Australia - Cocos (Keeling) Islands", "Australia - Jervis Bay Territory", "Australia - Coral Sea Islands", "Australia - Ashmore and Cartier Islands", "Australia - Heard Island and McDonald Islands", "Austria", "Azerbaijan", "The Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium - no region specfied", "Belgium - Brussels", "Belgium - Vlaanderen", "Belgium - Wallonie", "Belize", "Benin", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brasil", "British Indian Ocean Territory", "British Virgin Islands", "Brunei", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Island", "Central African Republic", "Chad", "Chile", "China", "Christmas Islands", "Cocos Islands", "Colombia", "Comoras", "Congo", "Congo Democratic Republic", "Cook Islands", "Costa Rica", "Cote d\'Ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia - no region specified", "Estonia - Northern Estonia (excl Tallinn)", "Estonia - Central Estonia", "Estonia - Northeastern Estonia", "Estonia - Southern Estonia (excl Tartu City)", "Estonia - Western Estonia", "Estonia - Tallinn", "Estonia - Tartu City", "Ethiopia", "Falkland Islands", "Faroe Islands", "Fiji", "Finland", "France - no province specified", "France - Bourgogne-Franche-Comté", "France - Bretagne", "France - Centre-Val de Loire", "France - Corse", "France - Grand Est", "France - Hauts-de-France", "France - Île-de-France", "France - Normandie", "France - Nouvelle-Aquitaine", "France - Occitanie", "France - Pays de la Loire", "France - Provence-Alpes-Côte d\'Azur", "France - Départements d\'Outre-Mer", "Gabon", "The Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard & McDonald island", "Honduras", "Hong Kong", "Hungary", "Iceland", "India - no region specified", "India - Andaman and Nicobar Islands", "India - Andhra Pradesh", "India - Arunachal Pradesh", "India - Assam", "India - Bihar", "India - Chandigarh", "India - Chhattisgarh", "India - Dadra and Nagar Haveli and Daman & Diu", "India - Delhi", "India - Goa", "India - Gujarat", "India - Haryana", "India - Himachal Pradesh", "India - Jammu & Kashmir", "India - Jharkhand", "India - Karnataka", "India - Kerala", "India - Ladakh", "India - Lakshadweep", "India - Madhya Pradesh", "India - Maharashtra", "India - Manipur", "India - Meghalaya", "India - Mizoram", "India - Nagaland", "India - Odisha", "India - Puducherry", "India - Punjab", "India - Rajasthan", "India - Sikkim", "India - Tamil Nadu", "India - Telangana", "India - Tripura", "India - Uttar Pradesh", "India - Uttarakhand", "India - West Bengal", "Indonesia - no region specified", "Indonesia - Sumatera", "Indonesia - Jawa", "Indonesia - Kalimantan", "Indonesia - Sulawesi", "Indonesia - Bali", "Indonesia - Nusa Tenggara Barat", "Indonesia - Nusa Tenggara Timur", "Indonesia - Papua", "Indonesia - Kepulauan Maluku", "Iran", "Iraq", "Ireland (Republic)", "Isle of Man", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, North", "Korea, South", "Kosovo", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macao", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mexico", "Micronesia, Federated States of", "Moldova", "Monaco", "Mongolia", "Montenegro", "Montserrat", "Morocco", "Mozambique", "Myanmar (Burma)", "Namibia", "Nauru", "Nepal", "Netherlands", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Palestine", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russia", "Rwanda", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Sudan", "Spain", "Sri Lanka", "St Helena", "St Kitts & Nevis", "St Lucia", "St Pierre & Miquelon", "St Vincent & the Grenadines", "Sudan", "Suriname", "Svalbard & Jan Mayen", "Swaziland", "Sweden", "Switzerland - no region specified", "Switzerland - French speaking region", "Switzerland - German speaking region", "Switzerland - Italian speaking region", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom - no country specified", "United Kingdom - England", "United Kingdom - Northern Ireland", "United Kingdom - Scotland", "United Kingdom - Wales", "United States", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City", "Venezuela", "Vietnam", "Western Sahara", "Yemen", "Zambia", "Zimbabwe"))
names(data)[8] <- "country"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "How old are you?"
data[, 9] <- factor(data[, 9], levels=c("1","2","3","4","5","6","decl"),labels=c("Younger than 18", "18-21", "21-30", "31-40", "41-50", "Older than 50", "I prefer not to say"))
names(data)[9] <- "age"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- ""
data[, 10] <- factor(data[, 10], levels=c("fem","male","enby","unknw"),labels=c("I am female", "I am male", "I am nonbinary / third gender", "I prefer not to say"))
names(data)[10] <- "gender"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "[Other]"
names(data)[11] <- "gender_other"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "When do you plan to visit Amsterdam next?"
data[, 12] <- factor(data[, 12], levels=c("0","7","30","183","365","999","decl"),labels=c("Already there", "In the next week", "In the next thirty days", "In the next six months", "Later", "Never", "I prefer not to say"))
names(data)[12] <- "visitTime"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[Bar] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 13] <- factor(data[, 13], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[13] <- "visitPlans_bar"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[Nature (e.g. beach)] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 14] <- factor(data[, 14], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[14] <- "visitPlans_natur"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[Coffeeshop] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 15] <- factor(data[, 15], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[15] <- "visitPlans_cfshp"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[Smartshop/Headshop] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 16] <- factor(data[, 16], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[16] <- "visitPlans_smrts"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[Club] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 17] <- factor(data[, 17], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[17] <- "visitPlans_club"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[Indoor dance event] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 18] <- factor(data[, 18], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[18] <- "visitPlans_dncin"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[Illegal party] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 19] <- factor(data[, 19], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[19] <- "visitPlans_illeg"
# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[Concert] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 20] <- factor(data[, 20], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[20] <- "visitPlans_cncrt"
# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[Music festival] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 21] <- factor(data[, 21], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[21] <- "visitPlans_fstvl"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[Home party] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 22] <- factor(data[, 22], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[22] <- "visitPlans_hmprt"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Sex club] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 23] <- factor(data[, 23], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[23] <- "visitPlans_sexcl"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Red light district] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 24] <- factor(data[, 24], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[24] <- "visitPlans_rdlgt"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Amsterdam Dance Event 2022] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 25] <- factor(data[, 25], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[25] <- "visitPlans_ade"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Not sure or I prefer not to say] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
data[, 26] <- factor(data[, 26], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[26] <- "visitPlans_decl"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "[Other] In your next visit to Amsterdam, are you planning to visit any of the following locations/events in/around Amsterdam?"
names(data)[27] <- "visitPlans_other"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Hotel] Where are you planning to stay?"
data[, 28] <- factor(data[, 28], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[28] <- "lodging_hotel"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Hostel] Where are you planning to stay?"
data[, 29] <- factor(data[, 29], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[29] <- "lodging_hostl"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Airbnb apartment] Where are you planning to stay?"
data[, 30] <- factor(data[, 30], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[30] <- "lodging_arbnb"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Camping] Where are you planning to stay?"
data[, 31] <- factor(data[, 31], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[31] <- "lodging_cmpng"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Friends or family] Where are you planning to stay?"
data[, 32] <- factor(data[, 32], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[32] <- "lodging_friend"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[My own home] Where are you planning to stay?"
data[, 33] <- factor(data[, 33], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[33] <- "lodging_home"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Couchsurfing] Where are you planning to stay?"
data[, 34] <- factor(data[, 34], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[34] <- "lodging_couch"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[House swap] Where are you planning to stay?"
data[, 35] <- factor(data[, 35], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[35] <- "lodging_swap"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[I will not book accommodation] Where are you planning to stay?"
data[, 36] <- factor(data[, 36], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[36] <- "lodging_none"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[I don’t know] Where are you planning to stay?"
data[, 37] <- factor(data[, 37], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[37] <- "lodging_dunno"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "[Other] Where are you planning to stay?"
names(data)[38] <- "lodging_other"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "When you visit Amsterdam, are you planning to use alcohol or other drugs?"
data[, 39] <- factor(data[, 39], levels=c("no","maybe","yes","decl"),labels=c("No", "Maybe", "Yes", "I prefer not to say"))
names(data)[39] <- "intentionDrugs"
# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[Alcohol:|absolutely not|absolutely] Please indicate whether you intend to use any of the following."
names(data)[40] <- "intentionAD_alc"
# LimeSurvey Field type: F
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[Cannabis (weed or hashish):|absolutely not|absolutely] Please indicate whether you intend to use any of the following."
names(data)[41] <- "intentionAD_can"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[Psychedelics (for example magic mushrooms, truffles, LSD, ketamine, 2c-b):|absolutely not|absolutely] Please indicate whether you intend to use any of the following."
names(data)[42] <- "intentionAD_psy"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[Other drugs (for example ecstasy, cocaine, amfetamine):|absolutely not|absolutely] Please indicate whether you intend to use any of the following."
names(data)[43] <- "intentionAD_oth"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[Alcohol:|absolutely not|absolutely] Please indicate whether you intend to drink alcohol."
names(data)[44] <- "intentionAlc_alc"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[] We’re working on the second version of this tool. Would you be willing to answer a few more questions to help us make this tool even better? Please indicate the number of questions you are happy to answer below."
names(data)[45] <- "DMQslider_nr"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "{(country.NAOK==\'nl00\')}"
names(data)[46] <- "countryNL"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "{((visitTime.NAOK==0) || (visitTime.NAOK==7) || (visitTime.NAOK==30) || (visitTime.NAOK==183) || (visitTime.NAOK==365) || (visitTime.NAOK==\'decl\'))}"
names(data)[47] <- "plannedVisitTime"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "{((visitPlans_bar.NAOK==\'Y\') || (visitPlans_club.NAOK==\'Y\') || (visitPlans_dncin.NAOK==\'Y\') || (visitPlans_illeg.NAOK==\'Y\') || (visitPlans_cncrt.NAOK==\'Y\') || (visitPlans_fstvl.NAOK==\'Y\') || (visitPlans_sexcl.NAOK==\'Y\') || (visitPlans_rdlgt.NAOK==\'Y\') || (visitPlans_other.NAOK==\'Y\') || (visitPlans_decl.NAOK==\'Y\'))}"
names(data)[48] <- "locationType"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "{((intentionAD_alc.NAOK > 1) || (intentionAlc_alc.NAOK > 1))}"
names(data)[49] <- "plannedAlcUse"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "{(intentionAD_can.NAOK > 1)}"
names(data)[50] <- "plannedCanUse"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "{(intentionAD_psy.NAOK > 1)}"
names(data)[51] <- "plannedPsyUse"
# LimeSurvey Field type: A
data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "{(intentionAD_oth.NAOK > 1)}"
names(data)[52] <- "plannedOthUse"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "{(plannedCanUse.NAOK || plannedPsyUse.NAOK || plannedOthUse.NAOK)}"
names(data)[53] <- "plannedDrugUse"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "{((!countryNL.NAOK) && plannedVisitTime.NAOK && locationType.NAOK) && (plannedAlcUse.NAOK || plannedDrugUse.NAOK)}"
names(data)[54] <- "targetPop"
# LimeSurvey Field type: A
data[, 55] <- as.character(data[, 55])
attributes(data)$variable.labels[55] <- "{if(targetPop, \"1\", \"0\")}"
names(data)[55] <- "tm1partying"
# LimeSurvey Field type: A
data[, 56] <- as.character(data[, 56])
attributes(data)$variable.labels[56] <- "{if(countryNL.NAOK, \'n\', \'t\')}"
names(data)[56] <- "tm2country"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "{if(plannedVisitTime.NAOK, \'i\', \'n\')}"
names(data)[57] <- "tm3visitPlans"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "{if(locationType.NAOK, \'p\', \'n\')}"
names(data)[58] <- "tm4visitType"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "{if((!plannedAlcUse.NAOK) && (!plannedDrugUse.NAOK), \'n\', \'s\')}"
names(data)[59] <- "tm5nonUser"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "{if(age.NAOK == 1, \'m\', \'s\')}"
names(data)[60] <- "tm6minor"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "{if(plannedAlcUse.NAOK, \'x\', \'y\')}"
names(data)[61] <- "tm7alcohol"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "{if(plannedCanUse.NAOK || (visitPlans_cfshp.NAOK==\'Y\'), \'c\', \'p\')}"
names(data)[62] <- "tm8coffeeshop"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "{if(visitPlans_illeg.NAOK==\'Y\', \'i\', \'z\')}"
names(data)[63] <- "tm11illegal"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "{if(plannedOthUse.NAOK, \'o\', \'u\')}"
names(data)[64] <- "tm9otherdrug"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "{if(plannedPsyUse.NAOK, \'p\', \'j\')}"
names(data)[65] <- "tm10psy"
# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "{if(visitPlans_sexcl.NAOK==\'Y\', \'s\', \'e\')}"
names(data)[66] <- "tm12sexclub"
# LimeSurvey Field type: A
data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- "{if(visitPlans_rdlgt.NAOK==\'Y\', \'r\', \'w\')}"
names(data)[67] <- "tm13redlight"
# LimeSurvey Field type: A
data[, 68] <- as.character(data[, 68])
attributes(data)$variable.labels[68] <- "{join(tm1partying, tm2country, tm3visitPlans, tm4visitType, tm5nonUser, tm6minor, tm7alcohol, tm8coffeeshop, tm9otherdrug, tm10psy, tm11illegal, tm12sexclub, tm13redlight)}"
names(data)[68] <- "tailoringString"
# LimeSurvey Field type: A
data[, 69] <- as.character(data[, 69])
attributes(data)$variable.labels[69] <- "{IntGetHelpSeq.gseq}"
names(data)[69] <- "IntGetHelpSeq"
# LimeSurvey Field type: A
data[, 70] <- as.character(data[, 70])
attributes(data)$variable.labels[70] <- "It\'s great that you want to help out. Thank you!  These questions are about when you\'re going out in Amsterdam (for example at a festival, party, club, or bar) and you\'re in a situation where you could use help from a healthcare professional at a first-aid (if present where you are) or from a hospital."
names(data)[70] <- "IntIntroHelp"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "If I\'m out and I experience a medical problem (maybe needing a bandaid or stitches), I intend to get help."
data[, 71] <- factor(data[, 71], levels=c(5,4,3,2,1,0),labels=c("absolutely (5)", "(4)", "(3)", "(2)", "absolutely not (1)", "(not applicable)"))
names(data)[71] <- "IntMedHelp"
# LimeSurvey Field type: F
data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "If I\'m out and I experience alcohol-related problems, I intend to get help."
data[, 72] <- factor(data[, 72], levels=c(5,4,3,2,1,0),labels=c("absolutely (5)", "(4)", "(3)", "(2)", "absolutely not (1)", "(not applicable)"))
names(data)[72] <- "IntAlcHelp"
# LimeSurvey Field type: F
data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "If I\'m out and I experience drugs-related problems, I intend to get help."
data[, 73] <- factor(data[, 73], levels=c(5,4,3,2,1,0),labels=c("absolutely (5)", "(4)", "(3)", "(2)", "absolutely not (1)", "(not applicable)"))
names(data)[73] <- "IntDrugHelp"
# LimeSurvey Field type: A
data[, 74] <- as.character(data[, 74])
attributes(data)$variable.labels[74] <- "{AttInPoliceSeq.gseq}"
names(data)[74] <- "AttInPoliceSeq"
# LimeSurvey Field type: A
data[, 75] <- as.character(data[, 75])
attributes(data)$variable.labels[75] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInPoliceSeq.NAOK) > 0)}"
names(data)[75] <- "AttInPoliceRel"
# LimeSurvey Field type: A
data[, 76] <- as.character(data[, 76])
attributes(data)$variable.labels[76] <- "AttInPoliceSeq.NAOK: {AttInPoliceSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInPoliceSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInPoliceSeq.NAOK) > 0)}"
names(data)[76] <- "AttInPoliceShw"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "If I get help for drug-related problems, ..."
data[, 77] <- factor(data[, 77], levels=c(5,4,3,2,1,0),labels=c("I will definitely get into trouble with the police (5)", "(4)", "(3)", "(2)", "I will definitely not get into trouble with the police (1)", "(not applicable)"))
names(data)[77] <- "AttInExPolice"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "If I have drug-related problems, I prefer to ..."
data[, 78] <- factor(data[, 78], levels=c(7,6,5,4,3,2,1,0),labels=c("get into trouble with the police (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "avoid trouble with the police (-3)", "(not applicable)"))
names(data)[78] <- "AttInEvPolice"
# LimeSurvey Field type: A
data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- "{AttInParentsSeq.gseq}"
names(data)[79] <- "AttInParentsSeq"
# LimeSurvey Field type: A
data[, 80] <- as.character(data[, 80])
attributes(data)$variable.labels[80] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInParentsSeq.NAOK) > 0)}"
names(data)[80] <- "AttInParentsRel"
# LimeSurvey Field type: A
data[, 81] <- as.character(data[, 81])
attributes(data)$variable.labels[81] <- "AttInParentsSeq.NAOK: {AttInParentsSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInParentsSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInParentsSeq.NAOK) > 0)}"
names(data)[81] <- "AttInParentsShw"
# LimeSurvey Field type: F
data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "If I get help for drug-related problems, ..."
data[, 82] <- factor(data[, 82], levels=c(5,4,3,2,1,0),labels=c("my parents will definitely get notified (5)", "(4)", "(3)", "(2)", "my parents will definitely not get notified (1)", "(not applicable)"))
names(data)[82] <- "AttInExParents"
# LimeSurvey Field type: F
data[, 83] <- as.numeric(data[, 83])
attributes(data)$variable.labels[83] <- "If I have drug-related problems, ..."
data[, 83] <- factor(data[, 83], levels=c(7,6,5,4,3,2,1,0),labels=c("absolutely want my parents to be notified (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "absolutely don\'t want my parents to be notified (-3)", "(not applicable)"))
names(data)[83] <- "AttInEvParents"
# LimeSurvey Field type: A
data[, 84] <- as.character(data[, 84])
attributes(data)$variable.labels[84] <- "{AttInReentrySeq.gseq}"
names(data)[84] <- "AttInReentrySeq"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInReentrySeq.NAOK) > 0)}"
names(data)[85] <- "AttInReentryRel"
# LimeSurvey Field type: A
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- "AttInReentrySeq.NAOK: {AttInReentrySeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInReentrySeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInReentrySeq.NAOK) > 0)}"
names(data)[86] <- "AttInReentryShw"
# LimeSurvey Field type: F
data[, 87] <- as.numeric(data[, 87])
attributes(data)$variable.labels[87] <- "If I\'m in a club and I get help for drug-related problems, ..."
data[, 87] <- factor(data[, 87], levels=c(5,4,3,2,1,0),labels=c("I will definitely be allowed to stay in the club (5)", "(4)", "(3)", "(2)", "I will definitely be thrown out of the club (1)", "(not applicable)"))
names(data)[87] <- "AttInExReentry"
# LimeSurvey Field type: F
data[, 88] <- as.numeric(data[, 88])
attributes(data)$variable.labels[88] <- "If I\'m in a club and I have drug-related problems, I prefer to be ..."
data[, 88] <- factor(data[, 88], levels=c(7,6,5,4,3,2,1,0),labels=c("allowed to re-enter the club (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "banned from re-entering the club (-3)", "(not applicable)"))
names(data)[88] <- "AttInEvReentry"
# LimeSurvey Field type: A
data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- "{AttInFomoSeq.gseq}"
names(data)[89] <- "AttInFomoSeq"
# LimeSurvey Field type: A
data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInFomoSeq.NAOK) > 0)}"
names(data)[90] <- "AttInFomoRel"
# LimeSurvey Field type: A
data[, 91] <- as.character(data[, 91])
attributes(data)$variable.labels[91] <- "AttInFomoSeq.NAOK: {AttInFomoSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInFomoSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInFomoSeq.NAOK) > 0)}"
names(data)[91] <- "AttInFomoShw"
# LimeSurvey Field type: F
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "If I\'m at a party and I get help for drug-related problems, ..."
data[, 92] <- factor(data[, 92], levels=c(5,4,3,2,1,0),labels=c("I will miss a lot of the party (5)", "(4)", "(3)", "(2)", "I will not miss much of the party (1)", "(not applicable)"))
names(data)[92] <- "AttInExFomo"
# LimeSurvey Field type: F
data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "If I\'m at a party and I have drug-related problems, I prefer to ..."
data[, 93] <- factor(data[, 93], levels=c(7,6,5,4,3,2,1,0),labels=c("miss a lot of the party (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "miss as little as possible of the party (-3)", "(not applicable)"))
names(data)[93] <- "AttInEvFomo"
# LimeSurvey Field type: A
data[, 94] <- as.character(data[, 94])
attributes(data)$variable.labels[94] <- "{AttInCredSeq.gseq}"
names(data)[94] <- "AttInCredSeq"
# LimeSurvey Field type: A
data[, 95] <- as.character(data[, 95])
attributes(data)$variable.labels[95] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInCredSeq.NAOK) > 0)}"
names(data)[95] <- "AttInCredRel"
# LimeSurvey Field type: A
data[, 96] <- as.character(data[, 96])
attributes(data)$variable.labels[96] <- "AttInCredSeq.NAOK: {AttInCredSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInCredSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInCredSeq.NAOK) > 0)}"
names(data)[96] <- "AttInCredShw"
# LimeSurvey Field type: F
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "If I get help for drug-related problems, that shows that I ..."
data[, 97] <- factor(data[, 97], levels=c(5,4,3,2,1,0),labels=c("know how to use drugs (5)", "(4)", "(3)", "(2)", "don\'t know how to use drugs (1)", "(not applicable)"))
names(data)[97] <- "AttInExCred"
# LimeSurvey Field type: F
data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "I prefer to be seen as somebody who ..."
data[, 98] <- factor(data[, 98], levels=c(7,6,5,4,3,2,1,0),labels=c("knows very well how to use drugs (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "doesn\'t know how to use drugs (-3)", "(not applicable)"))
names(data)[98] <- "AttInEvCred"
# LimeSurvey Field type: A
data[, 99] <- as.character(data[, 99])
attributes(data)$variable.labels[99] <- "{AttInRuinSeq.gseq}"
names(data)[99] <- "AttInRuinSeq"
# LimeSurvey Field type: A
data[, 100] <- as.character(data[, 100])
attributes(data)$variable.labels[100] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInRuinSeq.NAOK) > 0)}"
names(data)[100] <- "AttInRuinRel"
# LimeSurvey Field type: A
data[, 101] <- as.character(data[, 101])
attributes(data)$variable.labels[101] <- "AttInRuinSeq.NAOK: {AttInRuinSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInRuinSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInRuinSeq.NAOK) > 0)}"
names(data)[101] <- "AttInRuinShw"
# LimeSurvey Field type: F
data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- "If I\'m at a party and I get help for drug-related problems, ..."
data[, 102] <- factor(data[, 102], levels=c(5,4,3,2,1,0),labels=c("that ruins the party for my group of friends (5)", "(4)", "(3)", "(2)", "that doesn\'t much impact the party for my group of friends (1)", "(not applicable)"))
names(data)[102] <- "AttInExRuin"
# LimeSurvey Field type: F
data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "If I\'m at a party and I have drug-related problems, I prefer it if ..."
data[, 103] <- factor(data[, 103], levels=c(5,4,3,2,1,0),labels=c("my friends also stop partying (5)", "(4)", "(3)", "(2)", "my friends can party on without hassle (1)", "(not applicable)"))
names(data)[103] <- "AttInEvRuin"
# LimeSurvey Field type: A
data[, 104] <- as.character(data[, 104])
attributes(data)$variable.labels[104] <- "{AttInAnonSeq.gseq}"
names(data)[104] <- "AttInAnonSeq"
# LimeSurvey Field type: A
data[, 105] <- as.character(data[, 105])
attributes(data)$variable.labels[105] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAnonSeq.NAOK) > 0)}"
names(data)[105] <- "AttInAnonRel"
# LimeSurvey Field type: A
data[, 106] <- as.character(data[, 106])
attributes(data)$variable.labels[106] <- "AttInAnonSeq.NAOK: {AttInAnonSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAnonSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAnonSeq.NAOK) > 0)}"
names(data)[106] <- "AttInAnonShw"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "If I get help for drug-related problems, ..."
data[, 107] <- factor(data[, 107], levels=c(5,4,3,2,1,0),labels=c("My identity will be registered (5)", "(4)", "(3)", "(2)", "I stay anonymous (1)", "(not applicable)"))
names(data)[107] <- "AttInExAnon"
# LimeSurvey Field type: F
data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "When it comes to drug-related problems, I prefer it if ..."
data[, 108] <- factor(data[, 108], levels=c(7,6,5,4,3,2,1,0),labels=c("My identity is registered (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "I stay anonymous (-3)", "(not applicable)"))
names(data)[108] <- "AttInEvAnon"
# LimeSurvey Field type: A
data[, 109] <- as.character(data[, 109])
attributes(data)$variable.labels[109] <- "{AttInExpensSeq.gseq}"
names(data)[109] <- "AttInExpensSeq"
# LimeSurvey Field type: A
data[, 110] <- as.character(data[, 110])
attributes(data)$variable.labels[110] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInExpensSeq.NAOK) > 0)}"
names(data)[110] <- "AttInExpensRel"
# LimeSurvey Field type: A
data[, 111] <- as.character(data[, 111])
attributes(data)$variable.labels[111] <- "AttInExpensSeq.NAOK: {AttInExpensSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInExpensSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInExpensSeq.NAOK) > 0)}"
names(data)[111] <- "AttInExpensShw"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "If I get help for drug-related problems, ..."
data[, 112] <- factor(data[, 112], levels=c(5,4,3,2,1,0),labels=c("that will be expensive (5)", "(4)", "(3)", "(2)", "that will be free (1)", "(not applicable)"))
names(data)[112] <- "AttInExExpens"
# LimeSurvey Field type: F
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "If I get help for drug-related problems, I prefer that to be ..."
data[, 113] <- factor(data[, 113], levels=c(7,6,5,4,3,2,1,0),labels=c("expensive (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "free (-3)", "(not applicable)"))
names(data)[113] <- "AttInEvExpens"
# LimeSurvey Field type: A
data[, 114] <- as.character(data[, 114])
attributes(data)$variable.labels[114] <- "{AttInInsureSeq.gseq}"
names(data)[114] <- "AttInInsureSeq"
# LimeSurvey Field type: A
data[, 115] <- as.character(data[, 115])
attributes(data)$variable.labels[115] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInInsureSeq.NAOK) > 0)}"
names(data)[115] <- "AttInInsureRel"
# LimeSurvey Field type: A
data[, 116] <- as.character(data[, 116])
attributes(data)$variable.labels[116] <- "AttInInsureSeq.NAOK: {AttInInsureSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInInsureSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInInsureSeq.NAOK) > 0)}"
names(data)[116] <- "AttInInsureShw"
# LimeSurvey Field type: F
data[, 117] <- as.numeric(data[, 117])
attributes(data)$variable.labels[117] <- "If I get help for drug-related problems, ..."
data[, 117] <- factor(data[, 117], levels=c(5,4,3,2,1,0),labels=c("my insurance company will be informed that this incident involved drugs (5)", "(4)", "(3)", "(2)", "my insurance company will not be informed that this incident involved drugs (1)", "(not applicable)"))
names(data)[117] <- "AttInExInsure"
# LimeSurvey Field type: F
data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- "If I get help for drug-related problems, I prefer that ..."
data[, 118] <- factor(data[, 118], levels=c(7,6,5,4,3,2,1,0),labels=c("my insurance company is informed that this incident involved drugs (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "my insurance company is not informed that this incident involved drugs (-3)", "(not applicable)"))
names(data)[118] <- "AttInEvInsure"
# LimeSurvey Field type: A
data[, 119] <- as.character(data[, 119])
attributes(data)$variable.labels[119] <- "{AttInImageSeq.gseq}"
names(data)[119] <- "AttInImageSeq"
# LimeSurvey Field type: A
data[, 120] <- as.character(data[, 120])
attributes(data)$variable.labels[120] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInImageSeq.NAOK) > 0)}"
names(data)[120] <- "AttInImageRel"
# LimeSurvey Field type: A
data[, 121] <- as.character(data[, 121])
attributes(data)$variable.labels[121] <- "AttInImageSeq.NAOK: {AttInImageSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInImageSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInImageSeq.NAOK) > 0)}"
names(data)[121] <- "AttInImageShw"
# LimeSurvey Field type: F
data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- "If I get help for drug-related problems, ..."
data[, 122] <- factor(data[, 122], levels=c(5,4,3,2,1,0),labels=c("I will look like a fool in front of my friends (5)", "(4)", "(3)", "(2)", "my friends will think better of me (1)", "(not applicable)"))
names(data)[122] <- "AttInExImage"
# LimeSurvey Field type: F
data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- "If I get help for drug-related problems, I prefer it if that ..."
data[, 123] <- factor(data[, 123], levels=c(7,6,5,4,3,2,1,0),labels=c("makes my friends think worse of me (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "makes my friends think better of me (-3)", "(not applicable)"))
names(data)[123] <- "AttInEvImage"
# LimeSurvey Field type: A
data[, 124] <- as.character(data[, 124])
attributes(data)$variable.labels[124] <- "{KnowFAMinorSeq.gseq}"
names(data)[124] <- "KnowFAMinorSeq"
# LimeSurvey Field type: A
data[, 125] <- as.character(data[, 125])
attributes(data)$variable.labels[125] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - KnowFAMinorSeq.NAOK) > 0)}"
names(data)[125] <- "KnowFAMinorRel"
# LimeSurvey Field type: A
data[, 126] <- as.character(data[, 126])
attributes(data)$variable.labels[126] <- "KnowFAMinorSeq.NAOK: {KnowFAMinorSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - KnowFAMinorSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - KnowFAMinorSeq.NAOK) > 0)}"
names(data)[126] <- "KnowFAMinorShw"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "If I need help with a minor health issue, ..."
data[, 127] <- factor(data[, 127], levels=c(5,4,3,2,1,0),labels=c("the first-aid can help me (5)", "(4)", "(3)", "(2)", "the first-aid cannot help me (1)", "(not applicable)"))
names(data)[127] <- "KnowFAMinor"
# LimeSurvey Field type: A
data[, 128] <- as.character(data[, 128])
attributes(data)$variable.labels[128] <- "{KnowFASeriousOnlySeq.gseq}"
names(data)[128] <- "KnowFASeriousOnlySeq"
# LimeSurvey Field type: A
data[, 129] <- as.character(data[, 129])
attributes(data)$variable.labels[129] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - KnowFASeriousOnlySeq.NAOK) > 0)}"
names(data)[129] <- "KnowFASeriousOnlyRel"
# LimeSurvey Field type: A
data[, 130] <- as.character(data[, 130])
attributes(data)$variable.labels[130] <- "KnowFASeriousOnlySeq.NAOK: {KnowFASeriousOnlySeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - KnowFASeriousOnlySeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - KnowFASeriousOnlySeq.NAOK) > 0)}"
names(data)[130] <- "KnowFASeriousOnlyShw"
# LimeSurvey Field type: F
data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- "The first-aid in nightlife venues or at parties/festivals is meant to help with ..."
data[, 131] <- factor(data[, 131], levels=c(5,4,3,2,1,0),labels=c("serious and physical health incidents only (5)", "(4)", "(3)", "(2)", "all kinds of issues (1)", "(not applicable)"))
names(data)[131] <- "KnowFASeriousOnly"
# LimeSurvey Field type: A
data[, 132] <- as.character(data[, 132])
attributes(data)$variable.labels[132] <- "{NrmInFriendsSeq.gseq}"
names(data)[132] <- "NrmInFriendsSeq"
# LimeSurvey Field type: A
data[, 133] <- as.character(data[, 133])
attributes(data)$variable.labels[133] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInFriendsSeq.NAOK) > 0)}"
names(data)[133] <- "NrmInFriendsRel"
# LimeSurvey Field type: A
data[, 134] <- as.character(data[, 134])
attributes(data)$variable.labels[134] <- "NrmInFriendsSeq.NAOK: {NrmInFriendsSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInFriendsSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInFriendsSeq.NAOK) > 0)}"
names(data)[134] <- "NrmInFriendsShw"
# LimeSurvey Field type: F
data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "If I get help for drug-related problems, my friends will ..."
data[, 135] <- factor(data[, 135], levels=c(7,6,5,4,3,2,1,0),labels=c("approve (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "disapprove (-3)", "(not applicable)"))
names(data)[135] <- "NrmInApFriends"
# LimeSurvey Field type: F
data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "When it comes to getting help for drug-related problems, I want to do what my friends think I should do."
data[, 136] <- factor(data[, 136], levels=c(5,4,3,2,1,0),labels=c("very much (5)", "(4)", "(3)", "(2)", "not at all (1)", "(not applicable)"))
names(data)[136] <- "NrmInMcFriends"
# LimeSurvey Field type: A
data[, 137] <- as.character(data[, 137])
attributes(data)$variable.labels[137] <- "{NrmInPartnerSeq.gseq}"
names(data)[137] <- "NrmInPartnerSeq"
# LimeSurvey Field type: A
data[, 138] <- as.character(data[, 138])
attributes(data)$variable.labels[138] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInPartnerSeq.NAOK) > 0)}"
names(data)[138] <- "NrmInPartnerRel"
# LimeSurvey Field type: A
data[, 139] <- as.character(data[, 139])
attributes(data)$variable.labels[139] <- "NrmInPartnerSeq.NAOK: {NrmInPartnerSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInPartnerSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInPartnerSeq.NAOK) > 0)}"
names(data)[139] <- "NrmInPartnerShw"
# LimeSurvey Field type: F
data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- "If I get help for drug-related problems, my partner will ..."
data[, 140] <- factor(data[, 140], levels=c(7,6,5,4,3,2,1,0),labels=c("approve (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "disapprove (-3)", "(not applicable)"))
names(data)[140] <- "NrmInApPartner"
# LimeSurvey Field type: F
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "When it comes to getting help for drug-related problems, I want to do what my partner thinks I should do."
data[, 141] <- factor(data[, 141], levels=c(5,4,3,2,1,0),labels=c("very much (5)", "(4)", "(3)", "(2)", "not at all (1)", "(not applicable)"))
names(data)[141] <- "NrmInMcPartner"
# LimeSurvey Field type: A
data[, 142] <- as.character(data[, 142])
attributes(data)$variable.labels[142] <- "{NrmInBystanderSeq.gseq}"
names(data)[142] <- "NrmInBystanderSeq"
# LimeSurvey Field type: A
data[, 143] <- as.character(data[, 143])
attributes(data)$variable.labels[143] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInBystanderSeq.NAOK) > 0)}"
names(data)[143] <- "NrmInBystanderRel"
# LimeSurvey Field type: A
data[, 144] <- as.character(data[, 144])
attributes(data)$variable.labels[144] <- "NrmInBystanderSeq.NAOK: {NrmInBystanderSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInBystanderSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInBystanderSeq.NAOK) > 0)}"
names(data)[144] <- "NrmInBystanderShw"
# LimeSurvey Field type: F
data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- "If I get help for drug-related problems, bystanders will ..."
data[, 145] <- factor(data[, 145], levels=c(7,6,5,4,3,2,1,0),labels=c("approve (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "disapprove (-3)", "(not applicable)"))
names(data)[145] <- "NrmInApBystander"
# LimeSurvey Field type: F
data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "When it comes to getting help for drug-related problems, I want to do what bystanders think I should do."
data[, 146] <- factor(data[, 146], levels=c(5,4,3,2,1,0),labels=c("very much (5)", "(4)", "(3)", "(2)", "not at all (1)", "(not applicable)"))
names(data)[146] <- "NrmInMcBystander"
# LimeSurvey Field type: A
data[, 147] <- as.character(data[, 147])
attributes(data)$variable.labels[147] <- "{NrmDeFriendsSeq.gseq}"
names(data)[147] <- "NrmDeFriendsSeq"
# LimeSurvey Field type: A
data[, 148] <- as.character(data[, 148])
attributes(data)$variable.labels[148] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDeFriendsSeq.NAOK) > 0)}"
names(data)[148] <- "NrmDeFriendsRel"
# LimeSurvey Field type: A
data[, 149] <- as.character(data[, 149])
attributes(data)$variable.labels[149] <- "NrmDeFriendsSeq.NAOK: {NrmDeFriendsSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDeFriendsSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDeFriendsSeq.NAOK) > 0)}"
names(data)[149] <- "NrmDeFriendsShw"
# LimeSurvey Field type: F
data[, 150] <- as.numeric(data[, 150])
attributes(data)$variable.labels[150] <- "When they have drug-related problems, how likely do you think it is that your friends go get help?"
data[, 150] <- factor(data[, 150], levels=c(5,4,3,2,1,0),labels=c("very probable (5)", "(4)", "(3)", "(2)", "very improbable (1)", "(not applicable)"))
names(data)[150] <- "NrmDeBehFriends"
# LimeSurvey Field type: F
data[, 151] <- as.numeric(data[, 151])
attributes(data)$variable.labels[151] <- "When it comes to getting help for drug-related problems, I want to be like my friends …"
data[, 151] <- factor(data[, 151], levels=c(7,6,5,4,3,2,1,0),labels=c("as much as possible (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "as little as possible (-3)", "(not applicable)"))
names(data)[151] <- "NrmDeIdeFriends"
# LimeSurvey Field type: A
data[, 152] <- as.character(data[, 152])
attributes(data)$variable.labels[152] <- "{NrmDePartnerSeq.gseq}"
names(data)[152] <- "NrmDePartnerSeq"
# LimeSurvey Field type: A
data[, 153] <- as.character(data[, 153])
attributes(data)$variable.labels[153] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDePartnerSeq.NAOK) > 0)}"
names(data)[153] <- "NrmDePartnerRel"
# LimeSurvey Field type: A
data[, 154] <- as.character(data[, 154])
attributes(data)$variable.labels[154] <- "NrmDePartnerSeq.NAOK: {NrmDePartnerSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDePartnerSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDePartnerSeq.NAOK) > 0)}"
names(data)[154] <- "NrmDePartnerShw"
# LimeSurvey Field type: F
data[, 155] <- as.numeric(data[, 155])
attributes(data)$variable.labels[155] <- "When they have drug-related problems, how likely do you think it is that your partner goes to get help?"
data[, 155] <- factor(data[, 155], levels=c(5,4,3,2,1,0),labels=c("very probable (5)", "(4)", "(3)", "(2)", "very improbable (1)", "(not applicable)"))
names(data)[155] <- "NrmDeBehPartner"
# LimeSurvey Field type: F
data[, 156] <- as.numeric(data[, 156])
attributes(data)$variable.labels[156] <- "When it comes to getting help for drug-related problems, I want to be like my partner …"
data[, 156] <- factor(data[, 156], levels=c(7,6,5,4,3,2,1,0),labels=c("as much as possible (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "as little as possible (-3)", "(not applicable)"))
names(data)[156] <- "NrmDeIdePartner"
# LimeSurvey Field type: A
data[, 157] <- as.character(data[, 157])
attributes(data)$variable.labels[157] <- "{NrmDeTypicalSeq.gseq}"
names(data)[157] <- "NrmDeTypicalSeq"
# LimeSurvey Field type: A
data[, 158] <- as.character(data[, 158])
attributes(data)$variable.labels[158] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDeTypicalSeq.NAOK) > 0)}"
names(data)[158] <- "NrmDeTypicalRel"
# LimeSurvey Field type: A
data[, 159] <- as.character(data[, 159])
attributes(data)$variable.labels[159] <- "NrmDeTypicalSeq.NAOK: {NrmDeTypicalSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDeTypicalSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - NrmDeTypicalSeq.NAOK) > 0)}"
names(data)[159] <- "NrmDeTypicalShw"
# LimeSurvey Field type: F
data[, 160] <- as.numeric(data[, 160])
attributes(data)$variable.labels[160] <- "When they have drug-related problems, how likely do you think it is that the typical person at a party goes get help?"
data[, 160] <- factor(data[, 160], levels=c(5,4,3,2,1,0),labels=c("very probable (5)", "(4)", "(3)", "(2)", "very improbable (1)", "(not applicable)"))
names(data)[160] <- "NrmDeBehTypical"
# LimeSurvey Field type: F
data[, 161] <- as.numeric(data[, 161])
attributes(data)$variable.labels[161] <- "When it comes to getting help for drug-related problems, I want to be like the typical person at a party …"
data[, 161] <- factor(data[, 161], levels=c(7,6,5,4,3,2,1,0),labels=c("as much as possible (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "as little as possible (-3)", "(not applicable)"))
names(data)[161] <- "NrmDeIdeTypical"
# LimeSurvey Field type: A
data[, 162] <- as.character(data[, 162])
attributes(data)$variable.labels[162] <- "{PbcSkAbleToGetSeq.gseq}"
names(data)[162] <- "PbcSkAbleToGetSeq"
# LimeSurvey Field type: A
data[, 163] <- as.character(data[, 163])
attributes(data)$variable.labels[163] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkAbleToGetSeq.NAOK) > 0)}"
names(data)[163] <- "PbcSkAbleToGetRel"
# LimeSurvey Field type: A
data[, 164] <- as.character(data[, 164])
attributes(data)$variable.labels[164] <- "PbcSkAbleToGetSeq.NAOK: {PbcSkAbleToGetSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkAbleToGetSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkAbleToGetSeq.NAOK) > 0)}"
names(data)[164] <- "PbcSkAbleToGetShw"
# LimeSurvey Field type: F
data[, 165] <- as.numeric(data[, 165])
attributes(data)$variable.labels[165] <- "Typically, if I\'m at a party, I used drugs, and I don\'t feel well, ..."
data[, 165] <- factor(data[, 165], levels=c(5,4,3,2,1,0),labels=c("I would not be afraid to ask for help (5)", "(4)", "(3)", "(2)", "I would be afraid to ask for help (1)", "(not applicable)"))
names(data)[165] <- "PbcSkPrAbleToGet"
# LimeSurvey Field type: F
data[, 166] <- as.numeric(data[, 166])
attributes(data)$variable.labels[166] <- "If you\'re at a party and want to get help for drug-related problems, being able to ask where to get help is ..."
data[, 166] <- factor(data[, 166], levels=c(5,4,3,2,1,0),labels=c("extremely important (5)", "(4)", "(3)", "(2)", "not at all important (1)", "(not applicable)"))
names(data)[166] <- "PbcSkImAbleToGet"
# LimeSurvey Field type: A
data[, 167] <- as.character(data[, 167])
attributes(data)$variable.labels[167] <- "{PbcSkKnowWhereSeq.gseq}"
names(data)[167] <- "PbcSkKnowWhereSeq"
# LimeSurvey Field type: A
data[, 168] <- as.character(data[, 168])
attributes(data)$variable.labels[168] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkKnowWhereSeq.NAOK) > 0)}"
names(data)[168] <- "PbcSkKnowWhereRel"
# LimeSurvey Field type: A
data[, 169] <- as.character(data[, 169])
attributes(data)$variable.labels[169] <- "PbcSkKnowWhereSeq.NAOK: {PbcSkKnowWhereSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkKnowWhereSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkKnowWhereSeq.NAOK) > 0)}"
names(data)[169] <- "PbcSkKnowWhereShw"
# LimeSurvey Field type: F
data[, 170] <- as.numeric(data[, 170])
attributes(data)$variable.labels[170] <- "Typically, if you\'re at a party and need help with a minor health issue, do you know where to get help?"
data[, 170] <- factor(data[, 170], levels=c(5,4,3,2,1,0),labels=c("I absolutely know where to get help (5)", "(4)", "(3)", "(2)", "I don\'t know where to get help at all (1)", "(not applicable)"))
names(data)[170] <- "PbcSkPrKnowWhere"
# LimeSurvey Field type: F
data[, 171] <- as.numeric(data[, 171])
attributes(data)$variable.labels[171] <- "If you\'re at a party and want to get help with a minor health issue, knowing where to get help is ..."
data[, 171] <- factor(data[, 171], levels=c(5,4,3,2,1,0),labels=c("extremely important (5)", "(4)", "(3)", "(2)", "not at all important (1)", "(not applicable)"))
names(data)[171] <- "PbcSkImKnowWhere"
# LimeSurvey Field type: A
data[, 172] <- as.character(data[, 172])
attributes(data)$variable.labels[172] <- "{AttInAdvPlanSeq.gseq}"
names(data)[172] <- "AttInAdvPlanSeq"
# LimeSurvey Field type: A
data[, 173] <- as.character(data[, 173])
attributes(data)$variable.labels[173] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanSeq.NAOK) > 0)}"
names(data)[173] <- "AttInAdvPlanRel"
# LimeSurvey Field type: A
data[, 174] <- as.character(data[, 174])
attributes(data)$variable.labels[174] <- "AttInAdvPlanSeq.NAOK: {AttInAdvPlanSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanSeq.NAOK) > 0)}"
names(data)[174] <- "AttInAdvPlanShw"
# LimeSurvey Field type: F
data[, 175] <- as.numeric(data[, 175])
attributes(data)$variable.labels[175] <- "If, before departing for the Netherlands, I start discussing with my friends how the group wants to handle it if somebody has problems related to alcohol or other drugs, ..."
data[, 175] <- factor(data[, 175], levels=c(7,6,5,4,3,2,1,0),labels=c("my friends will respond very positively (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "my friends will respond very negatively (-3)", "(not applicable)"))
names(data)[175] <- "AttInExAdvPlan"
# LimeSurvey Field type: F
data[, 176] <- as.numeric(data[, 176])
attributes(data)$variable.labels[176] <- "When it comes to starting to discuss that with my friends, ..."
data[, 176] <- factor(data[, 176], levels=c(5,4,3,2,1,0),labels=c("I would strongly prefer my friends to repond positively (5)", "(4)", "(3)", "(2)", "I don\'t much care how my friends respond (1)", "(not applicable)"))
names(data)[176] <- "AttInEvAdvPlan"
# LimeSurvey Field type: A
data[, 177] <- as.character(data[, 177])
attributes(data)$variable.labels[177] <- "{NrmInAdvPlanFrndsSeq.gseq}"
names(data)[177] <- "NrmInAdvPlanFrndsSeq"
# LimeSurvey Field type: A
data[, 178] <- as.character(data[, 178])
attributes(data)$variable.labels[178] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInAdvPlanFrndsSeq.NAOK) > 0)}"
names(data)[178] <- "NrmInAdvPlanFrndsRel"
# LimeSurvey Field type: A
data[, 179] <- as.character(data[, 179])
attributes(data)$variable.labels[179] <- "NrmInAdvPlanFrndsSeq.NAOK: {NrmInAdvPlanFrndsSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInAdvPlanFrndsSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInAdvPlanFrndsSeq.NAOK) > 0)}"
names(data)[179] <- "NrmInAdvPlanFrndsShw"
# LimeSurvey Field type: F
data[, 180] <- as.numeric(data[, 180])
attributes(data)$variable.labels[180] <- "If, before departing for the Netherlands, I start discussing with my friends how the group wants to handle it if somebody has problems related to alcohol or other drugs, ..."
data[, 180] <- factor(data[, 180], levels=c(7,6,5,4,3,2,1,0),labels=c("my friends will approve (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "my friends will disapprove (-3)", "(not applicable)"))
names(data)[180] <- "NrmInApAdvPlanFrnds"
# LimeSurvey Field type: F
data[, 181] <- as.numeric(data[, 181])
attributes(data)$variable.labels[181] <- "When it comes to planning how to handle problems related to alcohol or other drugs in our group, I want to do what my friends think I should do."
data[, 181] <- factor(data[, 181], levels=c(5,4,3,2,1,0),labels=c("very much (5)", "(4)", "(3)", "(2)", "not at all (1)", "(not applicable)"))
names(data)[181] <- "NrmInMcAdvPlanFrnds"
# LimeSurvey Field type: A
data[, 182] <- as.character(data[, 182])
attributes(data)$variable.labels[182] <- "{AttInAdvPlanDenySeq.gseq}"
names(data)[182] <- "AttInAdvPlanDenySeq"
# LimeSurvey Field type: A
data[, 183] <- as.character(data[, 183])
attributes(data)$variable.labels[183] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanDenySeq.NAOK) > 0)}"
names(data)[183] <- "AttInAdvPlanDenyRel"
# LimeSurvey Field type: A
data[, 184] <- as.character(data[, 184])
attributes(data)$variable.labels[184] <- "AttInAdvPlanDenySeq.NAOK: {AttInAdvPlanDenySeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanDenySeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanDenySeq.NAOK) > 0)}"
names(data)[184] <- "AttInAdvPlanDenyShw"
# LimeSurvey Field type: F
data[, 185] <- as.numeric(data[, 185])
attributes(data)$variable.labels[185] <- "If, before departing for the Netherlands, I start discussing with my friends how the group wants to handle it if somebody has problems related to alcohol or other drugs, ..."
data[, 185] <- factor(data[, 185], levels=c(5,4,3,2,1,0),labels=c("they will take it seriously (5)", "(4)", "(3)", "(2)", "they will say that in our group, something like that won\'t happen (1)", "(not applicable)"))
names(data)[185] <- "AttInExAdvPlanDeny"
# LimeSurvey Field type: F
data[, 186] <- as.numeric(data[, 186])
attributes(data)$variable.labels[186] <- "When it comes to starting to discuss that with my friends, ..."
data[, 186] <- factor(data[, 186], levels=c(5,4,3,2,1,0),labels=c("I would strongly prefer my friends to take it seriously (5)", "(4)", "(3)", "(2)", "I don\'t much care how my friends respond (1)", "(not applicable)"))
names(data)[186] <- "AttInEvAdvPlanDeny"
# LimeSurvey Field type: A
data[, 187] <- as.character(data[, 187])
attributes(data)$variable.labels[187] <- "{AttInAdvPlanFunSeq.gseq}"
names(data)[187] <- "AttInAdvPlanFunSeq"
# LimeSurvey Field type: A
data[, 188] <- as.character(data[, 188])
attributes(data)$variable.labels[188] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanFunSeq.NAOK) > 0)}"
names(data)[188] <- "AttInAdvPlanFunRel"
# LimeSurvey Field type: A
data[, 189] <- as.character(data[, 189])
attributes(data)$variable.labels[189] <- "AttInAdvPlanFunSeq.NAOK: {AttInAdvPlanFunSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanFunSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInAdvPlanFunSeq.NAOK) > 0)}"
names(data)[189] <- "AttInAdvPlanFunShw"
# LimeSurvey Field type: F
data[, 190] <- as.numeric(data[, 190])
attributes(data)$variable.labels[190] <- "If, before departing for the Netherlands, I start discussing with my friends how the group wants to handle it if somebody has problems related to alcohol or other drugs, ..."
data[, 190] <- factor(data[, 190], levels=c(5,4,3,2,1,0),labels=c("they will take it seriously (5)", "(4)", "(3)", "(2)", "they say that they just want to have a good time, and not worry about things like that (1)", "(not applicable)"))
names(data)[190] <- "AttInExAdvPlanFun"
# LimeSurvey Field type: F
data[, 191] <- as.numeric(data[, 191])
attributes(data)$variable.labels[191] <- "When it comes to starting to discuss that with my friends, ..."
data[, 191] <- factor(data[, 191], levels=c(5,4,3,2,1,0),labels=c("I would strongly prefer my friends to take it seriously (5)", "(4)", "(3)", "(2)", "I don\'t much care how my friends respond (1)", "(not applicable)"))
names(data)[191] <- "AttInEvAdvPlanFun"
# LimeSurvey Field type: A
data[, 192] <- as.character(data[, 192])
attributes(data)$variable.labels[192] <- "{PbcSkDealWthNegSeq.gseq}"
names(data)[192] <- "PbcSkDealWthNegSeq"
# LimeSurvey Field type: A
data[, 193] <- as.character(data[, 193])
attributes(data)$variable.labels[193] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkDealWthNegSeq.NAOK) > 0)}"
names(data)[193] <- "PbcSkDealWthNegRel"
# LimeSurvey Field type: A
data[, 194] <- as.character(data[, 194])
attributes(data)$variable.labels[194] <- "PbcSkDealWthNegSeq.NAOK: {PbcSkDealWthNegSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkDealWthNegSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - PbcSkDealWthNegSeq.NAOK) > 0)}"
names(data)[194] <- "PbcSkDealWthNegShw"
# LimeSurvey Field type: F
data[, 195] <- as.numeric(data[, 195])
attributes(data)$variable.labels[195] <- "If, before departing for the Netherlands, I start discussing with my friends how the group wants to handle it if somebody has problems related to alcohol or other drugs, and they respond negatively, ..."
data[, 195] <- factor(data[, 195], levels=c(5,4,3,2,1,0),labels=c("I know how to deal with that (5)", "(4)", "(3)", "(2)", "I wouldn\'t know how to react (1)", "(not applicable)"))
names(data)[195] <- "PbcSkPrDealWthNeg"
# LimeSurvey Field type: F
data[, 196] <- as.numeric(data[, 196])
attributes(data)$variable.labels[196] <- "To me, discussing with my friends how the group wants to handle it if in the Netherlands, somebody has problems related to alcohol or other drugs, is ..."
data[, 196] <- factor(data[, 196], levels=c(5,4,3,2,1,0),labels=c("Very easy (5)", "(4)", "(3)", "(2)", "Very hard (1)", "(not applicable)"))
names(data)[196] <- "PbcSkImDealWthNeg"
# LimeSurvey Field type: A
data[, 197] <- as.character(data[, 197])
attributes(data)$variable.labels[197] <- "{KnowTestAnonSeq.gseq}"
names(data)[197] <- "KnowTestAnonSeq"
# LimeSurvey Field type: A
data[, 198] <- as.character(data[, 198])
attributes(data)$variable.labels[198] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestAnonSeq.NAOK) > 0)}"
names(data)[198] <- "KnowTestAnonRel"
# LimeSurvey Field type: A
data[, 199] <- as.character(data[, 199])
attributes(data)$variable.labels[199] <- "KnowTestAnonSeq.NAOK: {KnowTestAnonSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestAnonSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestAnonSeq.NAOK) > 0)}"
names(data)[199] <- "KnowTestAnonShw"
# LimeSurvey Field type: F
data[, 200] <- as.numeric(data[, 200])
attributes(data)$variable.labels[200] <- "If I get my drugs tested in the Netherlands ..."
data[, 200] <- factor(data[, 200], levels=c(5,4,3,2,1,0),labels=c("My identity will be registered (5)", "(4)", "(3)", "(2)", "I stay anonymous (1)", "(not applicable)"))
names(data)[200] <- "KnowTestAnon"
# LimeSurvey Field type: A
data[, 201] <- as.character(data[, 201])
attributes(data)$variable.labels[201] <- "{AttInTestDosingSeq.gseq}"
names(data)[201] <- "AttInTestDosingSeq"
# LimeSurvey Field type: A
data[, 202] <- as.character(data[, 202])
attributes(data)$variable.labels[202] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestDosingSeq.NAOK) > 0)}"
names(data)[202] <- "AttInTestDosingRel"
# LimeSurvey Field type: A
data[, 203] <- as.character(data[, 203])
attributes(data)$variable.labels[203] <- "AttInTestDosingSeq.NAOK: {AttInTestDosingSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestDosingSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestDosingSeq.NAOK) > 0)}"
names(data)[203] <- "AttInTestDosingShw"
# LimeSurvey Field type: F
data[, 204] <- as.numeric(data[, 204])
attributes(data)$variable.labels[204] <- "If I get my drugs tested ..."
data[, 204] <- factor(data[, 204], levels=c(5,4,3,2,1,0),labels=c("that makes it easier for me to dose adequarely (5)", "(4)", "(3)", "(2)", "it doesn\'t matter much for dosing adequately (1)", "(not applicable)"))
names(data)[204] <- "AttInExTestDosing"
# LimeSurvey Field type: A
data[, 205] <- as.character(data[, 205])
attributes(data)$variable.labels[205] <- "{AttInTestIngrSeq.gseq}"
names(data)[205] <- "AttInTestIngrSeq"
# LimeSurvey Field type: A
data[, 206] <- as.character(data[, 206])
attributes(data)$variable.labels[206] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestIngrSeq.NAOK) > 0)}"
names(data)[206] <- "AttInTestIngrRel"
# LimeSurvey Field type: A
data[, 207] <- as.character(data[, 207])
attributes(data)$variable.labels[207] <- "AttInTestIngrSeq.NAOK: {AttInTestIngrSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestIngrSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestIngrSeq.NAOK) > 0)}"
names(data)[207] <- "AttInTestIngrShw"
# LimeSurvey Field type: F
data[, 208] <- as.numeric(data[, 208])
attributes(data)$variable.labels[208] <- "If I get my drugs tested ..."
data[, 208] <- factor(data[, 208], levels=c(5,4,3,2,1,0),labels=c("That helps me to find out what my drugs contain (5)", "(4)", "(3)", "(2)", "it doesn\'t tell me much about what my drugs contain (1)", "(not applicable)"))
names(data)[208] <- "AttInExTestIngr"
# LimeSurvey Field type: A
data[, 209] <- as.character(data[, 209])
attributes(data)$variable.labels[209] <- "{KnowTestDealerSeq.gseq}"
names(data)[209] <- "KnowTestDealerSeq"
# LimeSurvey Field type: A
data[, 210] <- as.character(data[, 210])
attributes(data)$variable.labels[210] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestDealerSeq.NAOK) > 0)}"
names(data)[210] <- "KnowTestDealerRel"
# LimeSurvey Field type: A
data[, 211] <- as.character(data[, 211])
attributes(data)$variable.labels[211] <- "KnowTestDealerSeq.NAOK: {KnowTestDealerSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestDealerSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestDealerSeq.NAOK) > 0)}"
names(data)[211] <- "KnowTestDealerShw"
# LimeSurvey Field type: F
data[, 212] <- as.numeric(data[, 212])
attributes(data)$variable.labels[212] <- "When it comes to the drugs they sell me, ..."
data[, 212] <- factor(data[, 212], levels=c(5,4,3,2,1,0),labels=c("I trust that my dealer knows exactly what\'s in them (5)", "(4)", "(3)", "(2)", "I\'m not confident my dealer knows exactly what\'s in them (1)", "(not applicable)"))
names(data)[212] <- "KnowTestDealer"
# LimeSurvey Field type: A
data[, 213] <- as.character(data[, 213])
attributes(data)$variable.labels[213] <- "{NrmInTestFrndsSeq.gseq}"
names(data)[213] <- "NrmInTestFrndsSeq"
# LimeSurvey Field type: A
data[, 214] <- as.character(data[, 214])
attributes(data)$variable.labels[214] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInTestFrndsSeq.NAOK) > 0)}"
names(data)[214] <- "NrmInTestFrndsRel"
# LimeSurvey Field type: A
data[, 215] <- as.character(data[, 215])
attributes(data)$variable.labels[215] <- "NrmInTestFrndsSeq.NAOK: {NrmInTestFrndsSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInTestFrndsSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - NrmInTestFrndsSeq.NAOK) > 0)}"
names(data)[215] <- "NrmInTestFrndsShw"
# LimeSurvey Field type: F
data[, 216] <- as.numeric(data[, 216])
attributes(data)$variable.labels[216] <- "If I get my drugs tested in the Netherlands ..."
data[, 216] <- factor(data[, 216], levels=c(7,6,5,4,3,2,1,0),labels=c("my friends will approve (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "my friends will disapprove (-3)", "(not applicable)"))
names(data)[216] <- "NrmInApTestFrnds"
# LimeSurvey Field type: F
data[, 217] <- as.numeric(data[, 217])
attributes(data)$variable.labels[217] <- "When it comes to getting my drugs tested in the Netherlands, I want to do what my friends think I should do."
data[, 217] <- factor(data[, 217], levels=c(5,4,3,2,1,0),labels=c("very much (5)", "(4)", "(3)", "(2)", "not at all (1)", "(not applicable)"))
names(data)[217] <- "NrmInMcTestFrnds"
# LimeSurvey Field type: A
data[, 218] <- as.character(data[, 218])
attributes(data)$variable.labels[218] <- "{AttInTestBigDealSeq.gseq}"
names(data)[218] <- "AttInTestBigDealSeq"
# LimeSurvey Field type: A
data[, 219] <- as.character(data[, 219])
attributes(data)$variable.labels[219] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestBigDealSeq.NAOK) > 0)}"
names(data)[219] <- "AttInTestBigDealRel"
# LimeSurvey Field type: A
data[, 220] <- as.character(data[, 220])
attributes(data)$variable.labels[220] <- "AttInTestBigDealSeq.NAOK: {AttInTestBigDealSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestBigDealSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestBigDealSeq.NAOK) > 0)}"
names(data)[220] <- "AttInTestBigDealShw"
# LimeSurvey Field type: F
data[, 221] <- as.numeric(data[, 221])
attributes(data)$variable.labels[221] <- "When I get my drugs tested in the Netherlands, my friends will ..."
data[, 221] <- factor(data[, 221], levels=c(7,6,5,4,3,2,1,0),labels=c("agree that that is important to do (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "respond like I\'m making a big deal out of nothing (-3)", "(not applicable)"))
names(data)[221] <- "AttInExTestBigDeal"
# LimeSurvey Field type: A
data[, 222] <- as.character(data[, 222])
attributes(data)$variable.labels[222] <- "{AttInTestExpnsvSeq.gseq}"
names(data)[222] <- "AttInTestExpnsvSeq"
# LimeSurvey Field type: A
data[, 223] <- as.character(data[, 223])
attributes(data)$variable.labels[223] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestExpnsvSeq.NAOK) > 0)}"
names(data)[223] <- "AttInTestExpnsvRel"
# LimeSurvey Field type: A
data[, 224] <- as.character(data[, 224])
attributes(data)$variable.labels[224] <- "AttInTestExpnsvSeq.NAOK: {AttInTestExpnsvSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestExpnsvSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestExpnsvSeq.NAOK) > 0)}"
names(data)[224] <- "AttInTestExpnsvShw"
# LimeSurvey Field type: F
data[, 225] <- as.numeric(data[, 225])
attributes(data)$variable.labels[225] <- "Getting drugs tested in the Netherlands is ..."
data[, 225] <- factor(data[, 225], levels=c(5,4,3,2,1,0),labels=c("very expensive (5)", "(4)", "(3)", "(2)", "free (5)", "(not applicable)"))
names(data)[225] <- "AttInExTestExpnsv"
# LimeSurvey Field type: A
data[, 226] <- as.character(data[, 226])
attributes(data)$variable.labels[226] <- "{AttInTestSlowSeq.gseq}"
names(data)[226] <- "AttInTestSlowSeq"
# LimeSurvey Field type: A
data[, 227] <- as.character(data[, 227])
attributes(data)$variable.labels[227] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestSlowSeq.NAOK) > 0)}"
names(data)[227] <- "AttInTestSlowRel"
# LimeSurvey Field type: A
data[, 228] <- as.character(data[, 228])
attributes(data)$variable.labels[228] <- "AttInTestSlowSeq.NAOK: {AttInTestSlowSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestSlowSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInTestSlowSeq.NAOK) > 0)}"
names(data)[228] <- "AttInTestSlowShw"
# LimeSurvey Field type: F
data[, 229] <- as.numeric(data[, 229])
attributes(data)$variable.labels[229] <- "When I get drugs tested in the Netherlands, ..."
data[, 229] <- factor(data[, 229], levels=c(5,4,3,2,1,0),labels=c("getting the result takes very long (5)", "(4)", "(3)", "(2)", "getting the result is very quick (1)", "(not applicable)"))
names(data)[229] <- "AttInExTestSlow"
# LimeSurvey Field type: A
data[, 230] <- as.character(data[, 230])
attributes(data)$variable.labels[230] <- "{AttInLoseDrSeq.gseq}"
names(data)[230] <- "AttInLoseDrSeq"
# LimeSurvey Field type: A
data[, 231] <- as.character(data[, 231])
attributes(data)$variable.labels[231] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInLoseDrSeq.NAOK) > 0)}"
names(data)[231] <- "AttInLoseDrRel"
# LimeSurvey Field type: A
data[, 232] <- as.character(data[, 232])
attributes(data)$variable.labels[232] <- "AttInLoseDrSeq.NAOK: {AttInLoseDrSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInLoseDrSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInLoseDrSeq.NAOK) > 0)}"
names(data)[232] <- "AttInLoseDrShw"
# LimeSurvey Field type: F
data[, 233] <- as.numeric(data[, 233])
attributes(data)$variable.labels[233] <- "When I get drugs tested in the Netherlands, ..."
data[, 233] <- factor(data[, 233], levels=c(5,4,3,2,1,0),labels=c("that will use up a lot of drugs (5)", "(4)", "(3)", "(2)", "that will not cost much drugs (1)", "(not applicable)"))
names(data)[233] <- "AttInExTestLoseDr"
# LimeSurvey Field type: A
data[, 234] <- as.character(data[, 234])
attributes(data)$variable.labels[234] <- "{KnowTestLocSeq.gseq}"
names(data)[234] <- "KnowTestLocSeq"
# LimeSurvey Field type: A
data[, 235] <- as.character(data[, 235])
attributes(data)$variable.labels[235] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestLocSeq.NAOK) > 0)}"
names(data)[235] <- "KnowTestLocRel"
# LimeSurvey Field type: A
data[, 236] <- as.character(data[, 236])
attributes(data)$variable.labels[236] <- "KnowTestLocSeq.NAOK: {KnowTestLocSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestLocSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - KnowTestLocSeq.NAOK) > 0)}"
names(data)[236] <- "KnowTestLocShw"
# LimeSurvey Field type: F
data[, 237] <- as.numeric(data[, 237])
attributes(data)$variable.labels[237] <- "If I want to get drugs tested in the Netherlands ..."
data[, 237] <- factor(data[, 237], levels=c(5,4,3,2,1,0),labels=c("I know exactly where to do that (5)", "(4)", "(3)", "(2)", "I have no idea where to do that (1)", "(not applicable)"))
names(data)[237] <- "KnowTestLoc"
# LimeSurvey Field type: A
data[, 238] <- as.character(data[, 238])
attributes(data)$variable.labels[238] <- "{AttInFAHonestSeq.gseq}"
names(data)[238] <- "AttInFAHonestSeq"
# LimeSurvey Field type: A
data[, 239] <- as.character(data[, 239])
attributes(data)$variable.labels[239] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInFAHonestSeq.NAOK) > 0)}"
names(data)[239] <- "AttInFAHonestRel"
# LimeSurvey Field type: A
data[, 240] <- as.character(data[, 240])
attributes(data)$variable.labels[240] <- "AttInFAHonestSeq.NAOK: {AttInFAHonestSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInFAHonestSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInFAHonestSeq.NAOK) > 0)}"
names(data)[240] <- "AttInFAHonestShw"
# LimeSurvey Field type: F
data[, 241] <- as.numeric(data[, 241])
attributes(data)$variable.labels[241] <- "If in the Netherlands I suffer from problems related to alcohol or other drugs and am getting medical attention, ..."
data[, 241] <- factor(data[, 241], levels=c(5,4,3,2,1,0),labels=c("I can received better help if I\'m honest about what I used (5)", "(4)", "(3)", "(2)", "it doesn\'t really matter whether I\'m honest or not (1)", "(not applicable)"))
names(data)[241] <- "AttInExFAHonest"
# LimeSurvey Field type: A
data[, 242] <- as.character(data[, 242])
attributes(data)$variable.labels[242] <- "{AttInDoseMDMASeq.gseq}"
names(data)[242] <- "AttInDoseMDMASeq"
# LimeSurvey Field type: A
data[, 243] <- as.character(data[, 243])
attributes(data)$variable.labels[243] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseMDMASeq.NAOK) > 0)}"
names(data)[243] <- "AttInDoseMDMARel"
# LimeSurvey Field type: A
data[, 244] <- as.character(data[, 244])
attributes(data)$variable.labels[244] <- "AttInDoseMDMASeq.NAOK: {AttInDoseMDMASeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseMDMASeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseMDMASeq.NAOK) > 0)}"
names(data)[244] <- "AttInDoseMDMAShw"
# LimeSurvey Field type: F
data[, 245] <- as.numeric(data[, 245])
attributes(data)$variable.labels[245] <- "The more MDMA I use, ..."
data[, 245] <- factor(data[, 245], levels=c(7,6,5,4,3,2,1,0),labels=c("The better the experience I will have (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "The worse the experience I will have (-3)", "(not applicable)"))
names(data)[245] <- "AttInExDoseMDMA"
# LimeSurvey Field type: A
data[, 246] <- as.character(data[, 246])
attributes(data)$variable.labels[246] <- "{AttInDoseAlcSeq.gseq}"
names(data)[246] <- "AttInDoseAlcSeq"
# LimeSurvey Field type: A
data[, 247] <- as.character(data[, 247])
attributes(data)$variable.labels[247] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseAlcSeq.NAOK) > 0)}"
names(data)[247] <- "AttInDoseAlcRel"
# LimeSurvey Field type: A
data[, 248] <- as.character(data[, 248])
attributes(data)$variable.labels[248] <- "AttInDoseAlcSeq.NAOK: {AttInDoseAlcSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseAlcSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseAlcSeq.NAOK) > 0)}"
names(data)[248] <- "AttInDoseAlcShw"
# LimeSurvey Field type: F
data[, 249] <- as.numeric(data[, 249])
attributes(data)$variable.labels[249] <- "The more alcohol I use, ..."
data[, 249] <- factor(data[, 249], levels=c(7,6,5,4,3,2,1,0),labels=c("The better the experience I will have (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "The worse the experience I will have (-3)", "(not applicable)"))
names(data)[249] <- "AttInExDoseAlc"
# LimeSurvey Field type: A
data[, 250] <- as.character(data[, 250])
attributes(data)$variable.labels[250] <- "{AttInDoseSpeedSeq.gseq}"
names(data)[250] <- "AttInDoseSpeedSeq"
# LimeSurvey Field type: A
data[, 251] <- as.character(data[, 251])
attributes(data)$variable.labels[251] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseSpeedSeq.NAOK) > 0)}"
names(data)[251] <- "AttInDoseSpeedRel"
# LimeSurvey Field type: A
data[, 252] <- as.character(data[, 252])
attributes(data)$variable.labels[252] <- "AttInDoseSpeedSeq.NAOK: {AttInDoseSpeedSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseSpeedSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseSpeedSeq.NAOK) > 0)}"
names(data)[252] <- "AttInDoseSpeedShw"
# LimeSurvey Field type: F
data[, 253] <- as.numeric(data[, 253])
attributes(data)$variable.labels[253] <- "The more speed I use, ..."
data[, 253] <- factor(data[, 253], levels=c(7,6,5,4,3,2,1,0),labels=c("The better the experience I will have (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "The worse the experience I will have (-3)", "(not applicable)"))
names(data)[253] <- "AttInExDoseSpeed"
# LimeSurvey Field type: A
data[, 254] <- as.character(data[, 254])
attributes(data)$variable.labels[254] <- "{AttInDoseCannaSeq.gseq}"
names(data)[254] <- "AttInDoseCannaSeq"
# LimeSurvey Field type: A
data[, 255] <- as.character(data[, 255])
attributes(data)$variable.labels[255] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseCannaSeq.NAOK) > 0)}"
names(data)[255] <- "AttInDoseCannaRel"
# LimeSurvey Field type: A
data[, 256] <- as.character(data[, 256])
attributes(data)$variable.labels[256] <- "AttInDoseCannaSeq.NAOK: {AttInDoseCannaSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseCannaSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseCannaSeq.NAOK) > 0)}"
names(data)[256] <- "AttInDoseCannaShw"
# LimeSurvey Field type: F
data[, 257] <- as.numeric(data[, 257])
attributes(data)$variable.labels[257] <- "The more cannabis I use, ..."
data[, 257] <- factor(data[, 257], levels=c(7,6,5,4,3,2,1,0),labels=c("The better the experience I will have (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "The worse the experience I will have (-3)", "(not applicable)"))
names(data)[257] <- "AttInExDoseCanna"
# LimeSurvey Field type: A
data[, 258] <- as.character(data[, 258])
attributes(data)$variable.labels[258] <- "{AttInDoseGHBSeq.gseq}"
names(data)[258] <- "AttInDoseGHBSeq"
# LimeSurvey Field type: A
data[, 259] <- as.character(data[, 259])
attributes(data)$variable.labels[259] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseGHBSeq.NAOK) > 0)}"
names(data)[259] <- "AttInDoseGHBRel"
# LimeSurvey Field type: A
data[, 260] <- as.character(data[, 260])
attributes(data)$variable.labels[260] <- "AttInDoseGHBSeq.NAOK: {AttInDoseGHBSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseGHBSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseGHBSeq.NAOK) > 0)}"
names(data)[260] <- "AttInDoseGHBShw"
# LimeSurvey Field type: F
data[, 261] <- as.numeric(data[, 261])
attributes(data)$variable.labels[261] <- "The more GHB I use, ..."
data[, 261] <- factor(data[, 261], levels=c(7,6,5,4,3,2,1,0),labels=c("The better the experience I will have (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "The worse the experience I will have (-3)", "(not applicable)"))
names(data)[261] <- "AttInExDoseGHB"
# LimeSurvey Field type: A
data[, 262] <- as.character(data[, 262])
attributes(data)$variable.labels[262] <- "{AttInDoseKetaSeq.gseq}"
names(data)[262] <- "AttInDoseKetaSeq"
# LimeSurvey Field type: A
data[, 263] <- as.character(data[, 263])
attributes(data)$variable.labels[263] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseKetaSeq.NAOK) > 0)}"
names(data)[263] <- "AttInDoseKetaRel"
# LimeSurvey Field type: A
data[, 264] <- as.character(data[, 264])
attributes(data)$variable.labels[264] <- "AttInDoseKetaSeq.NAOK: {AttInDoseKetaSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseKetaSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - AttInDoseKetaSeq.NAOK) > 0)}"
names(data)[264] <- "AttInDoseKetaShw"
# LimeSurvey Field type: F
data[, 265] <- as.numeric(data[, 265])
attributes(data)$variable.labels[265] <- "The more ketamine I use, ..."
data[, 265] <- factor(data[, 265], levels=c(7,6,5,4,3,2,1,0),labels=c("The better the experience I will have (3)", "(2)", "(1)", "(0)", "(-1)", "(-2)", "The worse the experience I will have (-3)", "(not applicable)"))
names(data)[265] <- "AttInExDoseKeta"
# LimeSurvey Field type: A
data[, 266] <- as.character(data[, 266])
attributes(data)$variable.labels[266] <- "{CbrltAttLightSeq.gseq}"
names(data)[266] <- "CbrltAttLightSeq"
# LimeSurvey Field type: A
data[, 267] <- as.character(data[, 267])
attributes(data)$variable.labels[267] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttLightSeq.NAOK) > 0)}"
names(data)[267] <- "CbrltAttLightRel"
# LimeSurvey Field type: A
data[, 268] <- as.character(data[, 268])
attributes(data)$variable.labels[268] <- "CbrltAttLightSeq.NAOK: {CbrltAttLightSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttLightSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttLightSeq.NAOK) > 0)}"
names(data)[268] <- "CbrltAttLightShw"
# LimeSurvey Field type: F
data[, 269] <- as.numeric(data[, 269])
attributes(data)$variable.labels[269] <- "For me, if I\'m out and I experience a medical problem (maybe needing a bandaid or stitches), getting help is ..."
data[, 269] <- factor(data[, 269], levels=c(7,6,5,4,3,2,1,0),labels=c("Good", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Bad", "(not applicable)"))
names(data)[269] <- "CbrltAttInLight"
# LimeSurvey Field type: F
data[, 270] <- as.numeric(data[, 270])
attributes(data)$variable.labels[270] <- "For me, if I\'m out and I experience a medical problem (maybe needing a bandaid or stitches), getting help is ..."
data[, 270] <- factor(data[, 270], levels=c(7,6,5,4,3,2,1,0),labels=c("Pleasant", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Unpleasant", "(not applicable)"))
names(data)[270] <- "CbrltAttExLight"
# LimeSurvey Field type: A
data[, 271] <- as.character(data[, 271])
attributes(data)$variable.labels[271] <- "{CbrltNrmLightSeq.gseq}"
names(data)[271] <- "CbrltNrmLightSeq"
# LimeSurvey Field type: A
data[, 272] <- as.character(data[, 272])
attributes(data)$variable.labels[272] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmLightSeq.NAOK) > 0)}"
names(data)[272] <- "CbrltNrmLightRel"
# LimeSurvey Field type: A
data[, 273] <- as.character(data[, 273])
attributes(data)$variable.labels[273] <- "CbrltNrmLightSeq.NAOK: {CbrltNrmLightSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmLightSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmLightSeq.NAOK) > 0)}"
names(data)[273] <- "CbrltNrmLightShw"
# LimeSurvey Field type: F
data[, 274] <- as.numeric(data[, 274])
attributes(data)$variable.labels[274] <- "If I\'m out and I experience a medical problem (maybe needing a bandaid or stitches), most people whose opinions I value would ... of my getting help."
data[, 274] <- factor(data[, 274], levels=c(7,6,5,4,3,2,1,0),labels=c("Approve", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Disapprove", "(not applicable)"))
names(data)[274] <- "CbrltNrmInLight"
# LimeSurvey Field type: F
data[, 275] <- as.numeric(data[, 275])
attributes(data)$variable.labels[275] <- "If they\'re out and they experience a medical problem (maybe needing a bandaid or stitches), how many people like you would go get help?"
data[, 275] <- factor(data[, 275], levels=c(5,4,3,2,1,0),labels=c("Everybody", "(4)", "(3)", "(2)", "Nobody", "(not applicable)"))
names(data)[275] <- "CbrltNrmDeLight"
# LimeSurvey Field type: A
data[, 276] <- as.character(data[, 276])
attributes(data)$variable.labels[276] <- "{CbrltPbcLightSeq.gseq}"
names(data)[276] <- "CbrltPbcLightSeq"
# LimeSurvey Field type: A
data[, 277] <- as.character(data[, 277])
attributes(data)$variable.labels[277] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcLightSeq.NAOK) > 0)}"
names(data)[277] <- "CbrltPbcLightRel"
# LimeSurvey Field type: A
data[, 278] <- as.character(data[, 278])
attributes(data)$variable.labels[278] <- "CbrltPbcLightSeq.NAOK: {CbrltPbcLightSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcLightSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcLightSeq.NAOK) > 0)}"
names(data)[278] <- "CbrltPbcLightShw"
# LimeSurvey Field type: F
data[, 279] <- as.numeric(data[, 279])
attributes(data)$variable.labels[279] <- "If I\'m out and I experience a medical problem (maybe needing a bandaid or stitches), I am confident that if I want to, I can go get help."
data[, 279] <- factor(data[, 279], levels=c(5,4,3,2,1,0),labels=c("A lot of confidence", "(4)", "(3)", "(2)", "No confidence at all", "(not applicable)"))
names(data)[279] <- "CbrltPbcCaLight"
# LimeSurvey Field type: F
data[, 280] <- as.numeric(data[, 280])
attributes(data)$variable.labels[280] <- "If I\'m out and I experience a medical problem (maybe needing a bandaid or stitches), whether I get help is ..."
data[, 280] <- factor(data[, 280], levels=c(5,4,3,2,1,0),labels=c("Completely up to me", "(4)", "(3)", "(2)", "Not up to me", "(not applicable)"))
names(data)[280] <- "CbrltPbcAuLight"
# LimeSurvey Field type: A
data[, 281] <- as.character(data[, 281])
attributes(data)$variable.labels[281] <- "{CbrltAttAlcSeq.gseq}"
names(data)[281] <- "CbrltAttAlcSeq"
# LimeSurvey Field type: A
data[, 282] <- as.character(data[, 282])
attributes(data)$variable.labels[282] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttAlcSeq.NAOK) > 0)}"
names(data)[282] <- "CbrltAttAlcRel"
# LimeSurvey Field type: A
data[, 283] <- as.character(data[, 283])
attributes(data)$variable.labels[283] <- "CbrltAttAlcSeq.NAOK: {CbrltAttAlcSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttAlcSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttAlcSeq.NAOK) > 0)}"
names(data)[283] <- "CbrltAttAlcShw"
# LimeSurvey Field type: F
data[, 284] <- as.numeric(data[, 284])
attributes(data)$variable.labels[284] <- "For me, if I\'m out and I experience alcohol-related problems, getting help is ..."
data[, 284] <- factor(data[, 284], levels=c(7,6,5,4,3,2,1,0),labels=c("Good", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Bad", "(not applicable)"))
names(data)[284] <- "CbrltAttInAlc"
# LimeSurvey Field type: F
data[, 285] <- as.numeric(data[, 285])
attributes(data)$variable.labels[285] <- "For me, if I\'m out and I experience alcohol-related problems, getting help is ..."
data[, 285] <- factor(data[, 285], levels=c(7,6,5,4,3,2,1,0),labels=c("Pleasant", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Unpleasant", "(not applicable)"))
names(data)[285] <- "CbrltAttExAlc"
# LimeSurvey Field type: A
data[, 286] <- as.character(data[, 286])
attributes(data)$variable.labels[286] <- "{CbrltNrmAlcSeq.gseq}"
names(data)[286] <- "CbrltNrmAlcSeq"
# LimeSurvey Field type: A
data[, 287] <- as.character(data[, 287])
attributes(data)$variable.labels[287] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmAlcSeq.NAOK) > 0)}"
names(data)[287] <- "CbrltNrmAlcRel"
# LimeSurvey Field type: A
data[, 288] <- as.character(data[, 288])
attributes(data)$variable.labels[288] <- "CbrltNrmAlcSeq.NAOK: {CbrltNrmAlcSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmAlcSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmAlcSeq.NAOK) > 0)}"
names(data)[288] <- "CbrltNrmAlcShw"
# LimeSurvey Field type: F
data[, 289] <- as.numeric(data[, 289])
attributes(data)$variable.labels[289] <- "If I\'m out and I experience alcohol-related problems, most people whose opinions I value would ... of my getting help."
data[, 289] <- factor(data[, 289], levels=c(7,6,5,4,3,2,1,0),labels=c("Approve", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Disapprove", "(not applicable)"))
names(data)[289] <- "CbrltNrmInAlc"
# LimeSurvey Field type: F
data[, 290] <- as.numeric(data[, 290])
attributes(data)$variable.labels[290] <- "If they\'re out and they experience alcohol-related problems, how many people like you would go get help?"
data[, 290] <- factor(data[, 290], levels=c(5,4,3,2,1,0),labels=c("Everybody", "(4)", "(3)", "(2)", "Nobody", "(not applicable)"))
names(data)[290] <- "CbrltNrmDeAlc"
# LimeSurvey Field type: A
data[, 291] <- as.character(data[, 291])
attributes(data)$variable.labels[291] <- "{CbrltPbcAlcSeq.gseq}"
names(data)[291] <- "CbrltPbcAlcSeq"
# LimeSurvey Field type: A
data[, 292] <- as.character(data[, 292])
attributes(data)$variable.labels[292] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcAlcSeq.NAOK) > 0)}"
names(data)[292] <- "CbrltPbcAlcRel"
# LimeSurvey Field type: A
data[, 293] <- as.character(data[, 293])
attributes(data)$variable.labels[293] <- "CbrltPbcAlcSeq.NAOK: {CbrltPbcAlcSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcAlcSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcAlcSeq.NAOK) > 0)}"
names(data)[293] <- "CbrltPbcAlcShw"
# LimeSurvey Field type: F
data[, 294] <- as.numeric(data[, 294])
attributes(data)$variable.labels[294] <- "If I\'m out and I experience alcohol-related problems, I am confident that if I want to, I can go get help."
data[, 294] <- factor(data[, 294], levels=c(5,4,3,2,1,0),labels=c("A lot of confidence", "(4)", "(3)", "(2)", "No confidence at all", "(not applicable)"))
names(data)[294] <- "CbrltPbcCaAlc"
# LimeSurvey Field type: F
data[, 295] <- as.numeric(data[, 295])
attributes(data)$variable.labels[295] <- "If I\'m out and I experience alcohol-related problems, whether I get help is ..."
data[, 295] <- factor(data[, 295], levels=c(5,4,3,2,1,0),labels=c("Completely up to me", "(4)", "(3)", "(2)", "Not up to me", "(not applicable)"))
names(data)[295] <- "CbrltPbcAuAlc"
# LimeSurvey Field type: A
data[, 296] <- as.character(data[, 296])
attributes(data)$variable.labels[296] <- "{CbrltAttInDrugSeq.gseq}"
names(data)[296] <- "CbrltAttInDrugSeq"
# LimeSurvey Field type: A
data[, 297] <- as.character(data[, 297])
attributes(data)$variable.labels[297] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttInDrugSeq.NAOK) > 0)}"
names(data)[297] <- "CbrltAttInDrugRel"
# LimeSurvey Field type: A
data[, 298] <- as.character(data[, 298])
attributes(data)$variable.labels[298] <- "CbrltAttInDrugSeq.NAOK: {CbrltAttInDrugSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttInDrugSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltAttInDrugSeq.NAOK) > 0)}"
names(data)[298] <- "CbrltAttInDrugShw"
# LimeSurvey Field type: F
data[, 299] <- as.numeric(data[, 299])
attributes(data)$variable.labels[299] <- "For me, if I\'m out and I experience drugs-related problems, getting help is ..."
data[, 299] <- factor(data[, 299], levels=c(7,6,5,4,3,2,1,0),labels=c("Good", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Bad", "(not applicable)"))
names(data)[299] <- "CbrltAttInDrug"
# LimeSurvey Field type: F
data[, 300] <- as.numeric(data[, 300])
attributes(data)$variable.labels[300] <- "For me, if I\'m out and I experience drugs-related problems, getting help is ..."
data[, 300] <- factor(data[, 300], levels=c(7,6,5,4,3,2,1,0),labels=c("Pleasant", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Unpleasant", "(not applicable)"))
names(data)[300] <- "CbrltAttExDrug"
# LimeSurvey Field type: A
data[, 301] <- as.character(data[, 301])
attributes(data)$variable.labels[301] <- "{CbrltNrmDrugSeq.gseq}"
names(data)[301] <- "CbrltNrmDrugSeq"
# LimeSurvey Field type: A
data[, 302] <- as.character(data[, 302])
attributes(data)$variable.labels[302] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmDrugSeq.NAOK) > 0)}"
names(data)[302] <- "CbrltNrmDrugRel"
# LimeSurvey Field type: A
data[, 303] <- as.character(data[, 303])
attributes(data)$variable.labels[303] <- "CbrltNrmDrugSeq.NAOK: {CbrltNrmDrugSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmDrugSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltNrmDrugSeq.NAOK) > 0)}"
names(data)[303] <- "CbrltNrmDrugShw"
# LimeSurvey Field type: F
data[, 304] <- as.numeric(data[, 304])
attributes(data)$variable.labels[304] <- "If I\'m out and I experience drugs-related problems, most people whose opinions I value would ... of my getting help."
data[, 304] <- factor(data[, 304], levels=c(7,6,5,4,3,2,1,0),labels=c("Approve", "(2)", "(1)", "(0)", "(-1)", "(-2)", "Disapprove", "(not applicable)"))
names(data)[304] <- "CbrltNrmInDrug"
# LimeSurvey Field type: F
data[, 305] <- as.numeric(data[, 305])
attributes(data)$variable.labels[305] <- "If they\'re out and they experience drugs-related problems, how many people like you would go get help?"
data[, 305] <- factor(data[, 305], levels=c(5,4,3,2,1,0),labels=c("Everybody", "(4)", "(3)", "(2)", "Nobody", "(not applicable)"))
names(data)[305] <- "CbrltNrmDeDrug"
# LimeSurvey Field type: A
data[, 306] <- as.character(data[, 306])
attributes(data)$variable.labels[306] <- "{CbrltPbcDrugSeq.gseq}"
names(data)[306] <- "CbrltPbcDrugSeq"
# LimeSurvey Field type: A
data[, 307] <- as.character(data[, 307])
attributes(data)$variable.labels[307] <- "{(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcDrugSeq.NAOK) > 0)}"
names(data)[307] <- "CbrltPbcDrugRel"
# LimeSurvey Field type: A
data[, 308] <- as.character(data[, 308])
attributes(data)$variable.labels[308] <- "CbrltPbcDrugSeq.NAOK: {CbrltPbcDrugSeq.NAOK}DMQslider_nr.NAOK: {DMQslider_nr.NAOK}DMQslider_nr.NAOK/2: {DMQslider_nr.NAOK/2}(sum((DMQslider_nr.NAOK/2), 9)): {(sum((DMQslider_nr.NAOK/2), 9))}(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcDrugSeq.NAOK) > 0): {(((sum((DMQslider_nr.NAOK/2), 9)) - CbrltPbcDrugSeq.NAOK) > 0)}"
names(data)[308] <- "CbrltPbcDrugShw"
# LimeSurvey Field type: F
data[, 309] <- as.numeric(data[, 309])
attributes(data)$variable.labels[309] <- "If I\'m out and I experience drugs-related problems, I am confident that if I want to, I can go get help."
data[, 309] <- factor(data[, 309], levels=c(5,4,3,2,1,0),labels=c("A lot of confidence", "(4)", "(3)", "(2)", "No confidence at all", "(not applicable)"))
names(data)[309] <- "CbrltPbcCaDrug"
# LimeSurvey Field type: F
data[, 310] <- as.numeric(data[, 310])
attributes(data)$variable.labels[310] <- "If I\'m out and I experience drugs-related problems, whether I get help is ..."
data[, 310] <- factor(data[, 310], levels=c(5,4,3,2,1,0),labels=c("Completely up to me", "(4)", "(3)", "(2)", "Not up to me", "(not applicable)"))
names(data)[310] <- "CbrltPbcAuDrug"
