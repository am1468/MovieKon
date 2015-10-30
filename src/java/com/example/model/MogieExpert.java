package com.example.model;

import java.util.*;

public class MogieExpert {
   public List getTypes(String type) {

     List types = new ArrayList();

     if (type.equals("Action")) {
       types.add("action");
       types.add("The Avengers");
       types.add("Mission  Impossible - Rogue Nation");
       types.add("Edge Of Tomorrow");
       types.add("Sherlock Holmes");
     }
     else if (type.equals("Comedy")) {
       types.add("comedy");
       types.add("Role Models");
       types.add("Due Date");
       types.add("Kingsman Secret Service");
       types.add("The Hangover");
       types.add("Superbad");

     }
     else if (type.equals("Drama")) {
       types.add("drama");
       types.add("Citizen Kane");
       types.add("The Godfather");
       types.add("Argo");


     }
     else if (type.equals("Science Fiction")) {
       types.add("scifi");
       types.add("Inception");
       types.add("The Matrix");
       types.add("Star Wars");
     }
     else {
       types.add("No Result :(");
     }
     return(types);
   }
}