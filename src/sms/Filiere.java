package sms;

public class Filiere {
        private String intitule;
        private Enseignant responsable;
        private Departement departement;

        public Filiere(String intitule, Enseignant responsable, Departement departement) {
            this.intitule = intitule;
            this.responsable = responsable;
            this.departement = departement;
        }

        // getters and setters
        public String getIntitule() {
            return intitule;
        }

        public void setIntitule(String intitule) {
            this.intitule = intitule;
        }

        public Enseignant getResponsable() {
            return responsable;
        }

        public void setResponsable(Enseignant responsable) {
            this.responsable = responsable;
        }

        public Departement getDepartement() {
            return departement;
        }

        public void setDepartement(Departement departement) {
            this.departement = departement;
        }

    }

    