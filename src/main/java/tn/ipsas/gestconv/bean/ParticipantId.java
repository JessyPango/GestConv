package tn.ipsas.gestconv.bean;

import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class ParticipantId implements Serializable {
    private static final long serialVersionUID = 2295443209933780220L;
    @Column(name = "id_participant", nullable = false)
    private Integer idParticipant;
    @Column(name = "id_user", nullable = false)
    private Integer idUser;

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public Integer getIdParticipant() {
        return idParticipant;
    }

    public void setIdParticipant(Integer idParticipant) {
        this.idParticipant = idParticipant;
    }

    @Override
    public int hashCode() {
        return Objects.hash(idUser, idParticipant);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        ParticipantId entity = (ParticipantId) o;
        return Objects.equals(this.idUser, entity.idUser) &&
                Objects.equals(this.idParticipant, entity.idParticipant);
    }
}