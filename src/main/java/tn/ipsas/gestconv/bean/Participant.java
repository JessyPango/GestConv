package tn.ipsas.gestconv.bean;

import tn.ipsas.gestconv.dao.ParticipantDAO;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "participant")
public class Participant {
    @EmbeddedId
    private ParticipantId id;

    @Column(name = "nom_participant", nullable = false, length = 45)
    private String nomParticipant;

    @Lob
    @Column(name = "type_participant", nullable = false)
    private String typeParticipant;

    public String getTypeParticipant() {
        return typeParticipant;
    }

    public void setTypeParticipant(String typeParticipant) {
        this.typeParticipant = typeParticipant;
    }

    public String getNomParticipant() {
        return nomParticipant;
    }

    public void setNomParticipant(String nomParticipant) {
        this.nomParticipant = nomParticipant;
    }

    public ParticipantId getId() {
        return id;
    }

    public void setId(ParticipantId id) {
        this.id = id;
    }

    public Boolean isValidParticipant(){
        return nomParticipant != null && typeParticipant != null;
    }

    public void saveParticipant(Participant participant) {
        ParticipantDAO.saveParticipant(participant);
    }
    public void updateParticipant(Participant participant) {
        ParticipantDAO.updateParticipant(participant);
    }
    public void deleteParticipant(int id) {
        ParticipantDAO.deleteParticipant(id);
    }
    public Participant getParticipant(int id){
        return ParticipantDAO.getParticipant(id);
    }
    public List<Participant> getAllParticipant() {
        return ParticipantDAO.getAllParticipant();
    }

    public void joinConvention(int idConvention){
        ParticipantDAO.joinConvention(id.getIdParticipant(), idConvention);
    }





}