package beans;


import lombok.Data;
@Data
public class City {
    private String codeCommune;
    private String nomCommune;
    private String codePostal;
    private String libelleAcheminement;
    private String ligne5;
    private String latitude;
    private String longitude;


    public City() {

    }
    public City(String codeCommune, String nomCommune, String codePostal) {
        this.codeCommune = codeCommune;
        this.nomCommune = nomCommune;
        this.codePostal = codePostal;
    }

    public City(String codeCommune, String nomCommune, String codePostal, String libelleAcheminement, String ligne5, String latitude, String longitude) {
        this.codeCommune = codeCommune;
        this.nomCommune = nomCommune;
        this.codePostal = codePostal;
        this.libelleAcheminement = libelleAcheminement;
        this.ligne5 = ligne5;
        this.latitude = latitude;
        this.longitude = longitude;
    }
}