<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- *************************************************************************** -->
    	<!--  un titre formatté dans la page : balises <h1> é <h6>  					-->
    	<!-- *************************************************************************** -->
    	<h1>Je suis un Titre Important</h1> 
       	<h2>Je suis un Titre moins important</h2>
       	<h3>Je suis un Titre moins moins important</h3>
       	<h4>Je suis un Titre moins moins moins important</h4>
       	<h5>Je suis un Titre moins moins moins moins important</h5>
       	<h6>Je suis un Titre moins moins moins moins moins important</h6>
       	<!-- 	*************************************************************************** -->
    	<!--  	un texte dans la page : é formatter par les balises de formattage :  		-->
    	<!-- 	*************************************************************************** -->
       	<FONT COLOR="#0000FF">Je suis un texte en Bleu</FONT><BR>
       	<FONT COLOR="#0000FF"><B>Je suis un texte en Bleu et en gras</B></FONT><BR>
       	<FONT COLOR="#FF0000"><B>Je suis un texte en Rouge et en gras</B></FONT><BR>
       	<!-- 	*************************************************************************** -->
    	<!--  	les balises de formattage en HTML : faites des exemples avec       		-->
    	<!-- 	les balises <B>   <STRONG>  <I>  <EM> <FONT SIZE>  <FONT COLOR> <BR>      -->
    	<!-- 	<CENTER> ....etc               											-->
    	<!-- 	*************************************************************************** -->
    	<!-- 																				--> 
    	<!-- 	*************************************************************************** -->
    	<!-- 	un champ de saisie :														-->
    	<!-- 	*************************************************************************** -->
    	<p>Votre nom : <input type="text" name="nom" /></p>
    	<p><B>Votre prénom : </B><input type="text" name="prenom"/></p>
    	<!-- 																				-->
    	<!-- 	*************************************************************************** -->
    	<!-- 	un champ de saisie de type mot de passe										-->
    	<!-- 	*************************************************************************** -->
    	<p>		Mot de passe : <input name="pwd" type="Password"/></p>
    	<!-- 	*************************************************************************** -->
    	<!-- 	une liste sans sélection possible :										-->
    	<!-- 	*************************************************************************** -->
    	<H3>Les mois d'automne</H3>
		<OL><LI>octobre
		<LI>novembre
		<LI>d&eacute;cembre</OL>
    	<!-- 	*************************************************************************** -->
    	<!-- 	un champ liste déroulante  :												-->
    	<!-- 	*************************************************************************** -->
    	<select name="situationFamiliale" size="1"> 
                <option value="cel">Célibataire</option> 
                <option value="mar">Marié(e)</option> 
                <option value="div">Divorcé(e)</option>
                <option value="pac">Pacsé(e)</option>
                <option value="veu">Veuf(ve)</option>
        </select>  	
        <!-- 	*************************************************************************** -->
    	<!-- 	un champ liste déroulée  : utiliser l'attribut size 						-->
    	<!--			pour une multisélection : utiliser l'attribut Multiple 				-->
    	<!-- 	*************************************************************************** -->
        <select name="jour" size="7"> 
                <option value="lu">Lundi</option> 
                <option value="ma">Mardi</option> 
                <option value="me">Mercredi</option>
                <option value="je">Jeudi</option>
                <option value="ve">Vendredi</option>
                <option value="sa">Samedi</option>
                <option value="di">Dimanche</option>
        </select>
		<!--  	********************************************************************* 	--> 
    	<!-- 	un champ boutons radio (boutons é options) :							-->
    	<!-- 	********************************************************************** -->
    			<p><input type="radio" name="choix" value="ad">admis
				<p><input type="radio" name="choix" value="re">redoublement accepte
				<p><input type="radio" name="choix" value="ex">redoublement exclu 
    	<!--  	********************************************************************* 	--> 
    	<!-- 	un champ chekbox (cases é cocher) :										-->
    	<!-- 	********************************************************************** -->
    			<p>Vous prendrez bien :</p>
    			<br>Une entrée ?
    			<input name="choixMenu[]" type="checkbox" Value="Ent">
				<br>
				Un Plat Principale ?
				<input name="choixMenu[]" type="checkbox" Value="Pri">
				<br>
				Un Dessert ?
				<input name="choixMenu[]" type="checkbox" Value="des"  CHECKED>
		<!-- 	*************************************************************************** -->
		<!-- 	Bouton é cliquer de type submit	: donnera lieu é une action											 -->
		<!-- 	*************************************************************************** -->
    			<br>
    			<input value="valider" type="submit" name="btn_valider">
    	<!-- 	*************************************************************************** -->
		<!-- 	Bouton é cliquer de type reset : initialise les données saisies												 -->
		<!-- 	*************************************************************************** -->
    			<br>
    			<input value="Annuler" type="reset" name="btn_annuler">
</body>
</html>