//Jeu de l'oie TP par ANDRIAMAINDRARIVO Brayan

//Partie Algo

{ALGORITHME jeu_de_l_oie;
BUT: Recrerer le je de l'oie
ENTREES: Le resultat du lancer de dé
SORTIE: Position du joueur

CONST
	death = 58;
	oie = 9;

VAR
	des, place: ;


DEBUT

	randomize //a supprimer si des manuel

	//initialisation
	des <- 0
	place <- 0

	TANTQUE (place <> 66) FAIRE
			{//des manuel
			TANTQUE (des<2) OU (des>12) FAIRE
				ECRIRE "entrez le resultat des des (entre 2 et 12)""
				LIRE des
			FINTANTQUE}
			
			//des automatique
			ECRIRE "Tapez sur ENTRER"
			LIRE
			des < random(12)+2;
			writeln "Votre des a fait",des

			//Debut du jeu
			place <- place+des

			//Case multiple de 9: oie
			SI(place MOD oie=0) ET (place<>63) ET (place<>0) ALORS
				ECRIRE "vous etes tombe sur la case oie, vos deplacement sont multiplie par 2"
				place <- place+des
			FINSI

			//case 58: retour a la case depart
			SI place=death ALORS
				ECRIRE "Pas de chance, vous devez retourner a la case depart"
				place <- 0
			FINSI

			//case final qui fait reculer si jamais on y est pas exactement
			SI place>66 ALORS
					Place <- place-(place-66)
			FINSI
			ECRIRE "Vous etes a la case " ,place
			des <- 0
	FINTANTQUE
	//Fin du jeu, victoire
	ECRIRE "Vous avez gagnez Felicitation"
FIN}


//Partie Pascal
PROGRAM jeu_de_l_oie;
//BUT: Recrerer le je de l'oie
//ENTREES: Le resultat du lancer de dé
//SORTIE: Position du joueur

USES crt;

CONST
	death = 58;
	oie = 9;

VAR
	des: integer;
	place: integer;


BEGIN
	clrscr;

	randomize; //a supprimer si des manuel

	//initialisation
	des := 0;
	place:= 0;

	WHILE(place <> 66) DO
		BEGIN
			{//des manuel
			WHILE(des<2) OR (des>12) DO
			BEGIN
				writeln('entrez le resultat des des (entre 2 et 12)');
				readln(des);
			END;}
			
			//des automatique
			writeln('Tapez sur ENTRER');
			readln;
			des:= random(12)+2;
			writeln('Votre des a fait',des);

			//Debut du jeu
			place:= place+des;

			//Case multiple de 9: oie
			IF(place MOD oie=0) AND (place<>63) AND (place<>0) THEN
				BEGIN
					writeln('vous etes tombe sur la case oie, vos deplacement sont multiplie par 2');
					place := place+des;
				END;
			//case 58: retour a la case depart
			IF place=death THEN
				BEGIN
					writeln('Pas de chance, vous devez retourner a la case depart');
					place := 0;
				END;

			//case final qui fait reculer si jamais on y est pas exactement
			IF place>66 THEN
				BEGIN
					Place := place-(place-66);
				END;
			writeln('Vous etes a la case ',place);
			des :=0
		END;
	//Fin du jeu, victoire
	writeln('Vous avez gagnez Felicitation');
	readln;
END.


