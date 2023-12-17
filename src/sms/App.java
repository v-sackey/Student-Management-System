package sms;

public class App {
    // Declare your objects at the class level
    static Departement departement1;
    static Enseignant enseignant;
    static Filiere filiere;
    static Module module;
    static Etudiant etudiant;

    public static void main(String[] args) throws Exception {
        // Initialize your objects in a method, like main
        departement1 = new Departement("Engineering", null);
        enseignant = new Enseignant("Doe", "John", "jphn@gmail.com", "assex bien", departement1);
        departement1.setResponsable(enseignant);
        filiere = new Filiere("Informatique", enseignant, departement1);
        module = new Module("Recherche Operatinnelle", filiere, enseignant);
        etudiant = new Etudiant("Doe", "John", "doe@gmail.com", 67890, filiere);

        System.out.println(etudiant.getNom()+"  "+  etudiant.getPrenom());
    }
}