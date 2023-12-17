package sms;

  public class Departement {
        private String intitule;
        private Enseignant responsable;

        public Departement(String intitule, Enseignant responsable) {
            this.intitule = intitule;
            this.responsable = responsable;
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
    }

  
