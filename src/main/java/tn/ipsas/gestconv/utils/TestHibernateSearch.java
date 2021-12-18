package tn.ipsas.gestconv.utils;

import org.hibernate.Session;
import org.hibernate.search.engine.search.query.SearchResult;
import org.hibernate.search.mapper.orm.Search;
import org.hibernate.search.mapper.orm.massindexing.MassIndexer;
import org.hibernate.search.mapper.orm.session.SearchSession;
import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.utils.HibernateUtil;

import java.util.List;

public class TestHibernateSearch {
    public static void main(String[] args) {
        // Indexage initiale par hibernate search

        // Obtenir la session de recherche d'hibernate
        Session session = HibernateUtil.getSessionFactory().openSession();
        SearchSession searchSession = Search.session(session);
        MassIndexer indexer = searchSession.massIndexer( Convention.class )
                .threadsToLoadObjects( 7 );
        try {
            indexer.startAndWait();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        SearchResult<Convention> result = searchSession.search( Convention.class )
                        .where(f-> f.match()
                                .fields("objetConvention")
                                .matching("A"))
                        .fetch( 20 );
        long totalHitCount = result.total().hitCount();
        List<Convention> hits = result.hits();
        session.close();
        System.out.print("END   --->" +
                totalHitCount + " --- " + hits.get(0).getObjetConvention());
    }
}
