package tn.ipsas.gestconv.bean;

import tn.ipsas.gestconv.dao.ConventionDAO;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "convention")
public class Convention {
    @Id // id pour l'indexation
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_convention", nullable = false)
    private Integer id;

    @Column(name = "date_edition", nullable = false)
    private LocalDate dateEdition;

    @Column(name = "objet_convention", nullable = false)
    private String objetConvention;

    @Column(name = "date_entree_vigueur", nullable = false)
    private LocalDate dateEntreeVigueur;

    @Column(name = "date_expiration", nullable = false)
    private LocalDate dateExpiration;

    @Column(name = "titre_convention", nullable = false)
    private String titreConvention;

    @Lob
    @Column(name = "type_convention")
    private String typeConvention;

    public String getTypeConvention() {
        return typeConvention;
    }
    public String getTitreConvention() {
        return titreConvention;
    }

    public void setTypeConvention(String typeConvention) {
        this.typeConvention = typeConvention;
    }
    public void setTitreConvention(String titreConvention) {
        this.titreConvention = titreConvention;
    }

    public LocalDate getDateExpiration() {
        return dateExpiration;
    }

    public void setDateExpiration(LocalDate dateExpiration) {
        this.dateExpiration = dateExpiration;
    }

    public LocalDate getDateEntreeVigueur() {
        return dateEntreeVigueur;
    }

    public void setDateEntreeVigueur(LocalDate dateEntreeVigueur) {
        this.dateEntreeVigueur = dateEntreeVigueur;
    }

    public String getObjetConvention() {
        return objetConvention;
    }

    public void setObjetConvention(String objetConvention) {
        this.objetConvention = objetConvention;
    }

    public LocalDate getDateEdition() {
        return dateEdition;
    }

    public void setDateEdition(LocalDate dateEdition) {
        this.dateEdition = dateEdition;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public boolean isValidConvention() {
        return objetConvention != null && !"".contentEquals(objetConvention);
    }

    public void saveConvention(Convention convention) {
        ConventionDAO.saveConvention(convention);
    }

    public void updateConvention(Convention convention) {
        ConventionDAO.updateConvention(convention);
    }

    public void deleteConvention(int id) {
        ConventionDAO.deleteConvention(id);
    }

    public Convention getConvention(int id) {
        return ConventionDAO.getConvention(id);
    }

    public List<Convention> getAllConvention() {
        return ConventionDAO.getAllConvention();
    }
}