package tn.ipsas.gestconv.utils;

import org.hibernate.Session;
import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.utils.HibernateUtil;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class TestHibernateSearch {
    public static void main(String[] args) {
        // Indexage initiale par hibernate search

        // Obtenir la session de recherche d'hibernate
        Session session = HibernateUtil.getSessionFactory().openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Convention> query = builder.createQuery( Convention.class );
        Root<Convention> root = query.from( Convention.class );
        query.select(root).where(
                builder.like(root.get("objetConvention"), "D%")
        );
        List<Convention> convention = session.createQuery(query).getResultList();
        System.out.println(convention.get(1).getObjetConvention());
    }
}
