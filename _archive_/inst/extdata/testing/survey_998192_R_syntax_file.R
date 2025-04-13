data <- read.csv("survey_998192_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8-BOM")


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
attributes(data)$variable.labels[8] <- "Dear colleague,  In the context of my graduation assignment, I am conducting research within the Open University on the theme \'resilience of employees’. Resilience is important both for the organization and for the employee. Resilience ensures that both the organization and her employees can thrive in an environment that is subject to change.  The study consists of 2 measurements. This is the second (and last) measurement!  The questionnaire relates to your current situation. Answering the questions does not take more than twenty minutes. There are no \'good\' or \'wrong\' answers: it is your opinion that counts. If in doubt, you may choose the answer that best fits your experience.  Your cooperation is important for the success of this research. You can cancel your participation at any time. I want to emphasize that the answers are treated confidentially, and only analyzed at an aggregate level for scientific purposes.  For further questions about this research, please contact L...... This can be done before, during, or after the research.  Prior to completing the questionnaire, I ask you to confirm that you have received this information and you agree to participate.  Thank you for your participation in the research!"
names(data)[8] <- "generalIntro"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Please read the points below carefully and agree to participate in the study.   	I have read the information letter / received the information that came with this research and I had the opportunity to ask the researcher questions if certain things were not clear. 	I understand that I can stop the research at any time, I do not have to give a reason. 	I understand that this is anonymous for the benefit of this research and does not lead back to me. 	I give permission to use the data collected during this research for scientific research."
data[, 9] <- factor(data[, 9], levels=c("no","yes"),labels=c("Over my dead body", "Yes please"))
names(data)[9] <- "informedConsent"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "How do you identify?"
data[, 10] <- factor(data[, 10], levels=c("man","woman"),labels=c("Man", "Woman"))
names(data)[10] <- "gender"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "[Other] How do you identify?"
names(data)[11] <- "gender_other"
# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "How old are you?"
names(data)[12] <- "age"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[Primary School] Which educations have you ever done or seem kind of interesting maybe later, when you have time?"
data[, 13] <- factor(data[, 13], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[13] <- "education_primary"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[Secondary School] Which educations have you ever done or seem kind of interesting maybe later, when you have time?"
data[, 14] <- factor(data[, 14], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[14] <- "education_secondary"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[Tertairy School] Which educations have you ever done or seem kind of interesting maybe later, when you have time?"
data[, 15] <- factor(data[, 15], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[15] <- "education_tertairy"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[Quartiary School] Which educations have you ever done or seem kind of interesting maybe later, when you have time?"
data[, 16] <- factor(data[, 16], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[16] <- "education_quartiary"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "[Street] Please enter your address"
names(data)[17] <- "address_street"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[Number] Please enter your address"
names(data)[18] <- "address_number"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[Postal code] Please enter your address"
names(data)[19] <- "address_pc"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[City] Please enter your address"
names(data)[20] <- "address_city"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Please  describe your current mood."
names(data)[21] <- "mood"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "{if((age.NAOK > 65) && (gender.NAOK == \"man\"), 1,0)}"
names(data)[22] <- "maleBoomer"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Activiteiten waarin je al veel ervaring hebt opgedaan] [Scale 1] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 23] <- factor(data[, 23], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer bepekrte mate", "2", "3", "4", "5", "6", "7 in zeer ruime mate"))
names(data)[23] <- "activities_exp#0"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Activiteiten waarin je al veel ervaring hebt opgedaan] [Scale 2] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 24] <- factor(data[, 24], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer beperkte mate", "2", "3", "4", "5", "6", "7 in zeer beperkte mate"))
names(data)[24] <- "activities_exp#1"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Activiteiten gericht op het bedienen van bestaande (interne) klanten met bestaande producten/diensten op het gebied van onderwijs en onderzoek. ] [Scale 1] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 25] <- factor(data[, 25], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer bepekrte mate", "2", "3", "4", "5", "6", "7 in zeer ruime mate"))
names(data)[25] <- "activities_client#0"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Activiteiten gericht op het bedienen van bestaande (interne) klanten met bestaande producten/diensten op het gebied van onderwijs en onderzoek. ] [Scale 2] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 26] <- factor(data[, 26], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer beperkte mate", "2", "3", "4", "5", "6", "7 in zeer beperkte mate"))
names(data)[26] <- "activities_client#1"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Activiteiten waarvan het voor jou erg duidelijk is hoe je ze moet uitvoeren. ] [Scale 1] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 27] <- factor(data[, 27], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer bepekrte mate", "2", "3", "4", "5", "6", "7 in zeer ruime mate"))
names(data)[27] <- "activities_clear#0"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Activiteiten waarvan het voor jou erg duidelijk is hoe je ze moet uitvoeren. ] [Scale 2] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 28] <- factor(data[, 28], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer beperkte mate", "2", "3", "4", "5", "6", "7 in zeer beperkte mate"))
names(data)[28] <- "activities_clear#1"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Activiteiten die voornamelijk gericht zijn op het bereiken van kortetermijndoelstellingen. ] [Scale 1] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 29] <- factor(data[, 29], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer bepekrte mate", "2", "3", "4", "5", "6", "7 in zeer ruime mate"))
names(data)[29] <- "activities_short#0"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Activiteiten die voornamelijk gericht zijn op het bereiken van kortetermijndoelstellingen. ] [Scale 2] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 30] <- factor(data[, 30], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer beperkte mate", "2", "3", "4", "5", "6", "7 in zeer beperkte mate"))
names(data)[30] <- "activities_short#1"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Activiteiten die je goed kunt uitvoeren door gebruik te maken van jouw huidige kennis. ] [Scale 1] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 31] <- factor(data[, 31], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer bepekrte mate", "2", "3", "4", "5", "6", "7 in zeer ruime mate"))
names(data)[31] <- "activities_know#0"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Activiteiten die je goed kunt uitvoeren door gebruik te maken van jouw huidige kennis. ] [Scale 2] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 32] <- factor(data[, 32], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer beperkte mate", "2", "3", "4", "5", "6", "7 in zeer beperkte mate"))
names(data)[32] <- "activities_know#1"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Activiteiten die duidelijk passen bij bestaand beleid ] [Scale 1] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 33] <- factor(data[, 33], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer bepekrte mate", "2", "3", "4", "5", "6", "7 in zeer ruime mate"))
names(data)[33] <- "activities_pol#0"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Activiteiten die duidelijk passen bij bestaand beleid ] [Scale 2] Geef voor onderstaande bewerkingen steeds 2 antwoorden.   Geef aan in welke mate je het afgelopen jaar werkzaamheden hebt verricht die je als volgt zou kunnen kenmerken (daadwerkelijk niveau) En geef aan in welke mate je het prettig vindt om werkzaamheden te doen met deze kenmerken (gewenst niveau)."
data[, 34] <- factor(data[, 34], levels=c(1,2,3,4,5,6,7),labels=c("1 in zeer beperkte mate", "2", "3", "4", "5", "6", "7 in zeer beperkte mate"))
names(data)[34] <- "activities_pol#1"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[Openness] Describe yourselves"
data[, 35] <- factor(data[, 35], levels=c(1,2,3,4,5,6,7),labels=c("1 disagree strongly", "2", "3", "4", "5", "6", "7 agree strongly"))
names(data)[35] <- "personality_open"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[Conscientiousness] Describe yourselves"
data[, 36] <- factor(data[, 36], levels=c(1,2,3,4,5,6,7),labels=c("1 disagree strongly", "2", "3", "4", "5", "6", "7 agree strongly"))
names(data)[36] <- "personality_cons"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[Extraversion] Describe yourselves"
data[, 37] <- factor(data[, 37], levels=c(1,2,3,4,5,6,7),labels=c("1 disagree strongly", "2", "3", "4", "5", "6", "7 agree strongly"))
names(data)[37] <- "personality_extra"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[Agreeableness] Describe yourselves"
data[, 38] <- factor(data[, 38], levels=c(1,2,3,4,5,6,7),labels=c("1 disagree strongly", "2", "3", "4", "5", "6", "7 agree strongly"))
names(data)[38] <- "personality_agree"
# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[Emotional Stability] Describe yourselves"
data[, 39] <- factor(data[, 39], levels=c(1,2,3,4,5,6,7),labels=c("1 disagree strongly", "2", "3", "4", "5", "6", "7 agree strongly"))
names(data)[39] <- "personality_neur"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "Upload an image of your plant  for example"
names(data)[40] <- "image"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "filecount - Upload an image of your plant  for example"
names(data)[41] <- "image__filecount"
# LimeSurvey Field type: DATETIME23.2
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "Date you are born"
names(data)[42] <- "born"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "do you agree"
data[, 43] <- factor(data[, 43], levels=c(1,2),labels=c("Yes", "No"))
names(data)[43] <- "yesno"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[cats]   How many pets do you have"
names(data)[44] <- "pets_cats"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[dogs]   How many pets do you have"
names(data)[45] <- "pets_dogs"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[fish]   How many pets do you have"
names(data)[46] <- "pets_fish"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[Rank 1] What are the best movies you have ever seen?  Please order de movies from awesome to crappy."
data[, 47] <- factor(data[, 47], levels=c("tita","west","star","lion","it"),labels=c("Titanic", "How the west was won", "Startrek 2016", "The lion king", "It"))
names(data)[47] <- "order_1"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[Rank 2] What are the best movies you have ever seen?  Please order de movies from awesome to crappy."
data[, 48] <- factor(data[, 48], levels=c("tita","west","star","lion","it"),labels=c("Titanic", "How the west was won", "Startrek 2016", "The lion king", "It"))
names(data)[48] <- "order_2"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[Rank 3] What are the best movies you have ever seen?  Please order de movies from awesome to crappy."
data[, 49] <- factor(data[, 49], levels=c("tita","west","star","lion","it"),labels=c("Titanic", "How the west was won", "Startrek 2016", "The lion king", "It"))
names(data)[49] <- "order_3"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "[Rank 4] What are the best movies you have ever seen?  Please order de movies from awesome to crappy."
data[, 50] <- factor(data[, 50], levels=c("tita","west","star","lion","it"),labels=c("Titanic", "How the west was won", "Startrek 2016", "The lion king", "It"))
names(data)[50] <- "order_4"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "[Rank 5] What are the best movies you have ever seen?  Please order de movies from awesome to crappy."
data[, 51] <- factor(data[, 51], levels=c("tita","west","star","lion","it"),labels=c("Titanic", "How the west was won", "Startrek 2016", "The lion king", "It"))
names(data)[51] <- "order_5"
