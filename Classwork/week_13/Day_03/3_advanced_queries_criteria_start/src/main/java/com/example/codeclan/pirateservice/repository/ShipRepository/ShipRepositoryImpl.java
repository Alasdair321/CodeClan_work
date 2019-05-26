package com.example.codeclan.pirateservice.repository.ShipRepository;

import com.example.codeclan.pirateservice.models.Ship;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import java.util.List;

public class ShipRepositoryImpl implements ShipRepositoryCustom {

    @Autowired
    EntityManager entityManager;

    @Transactional
    public List<Ship> findShipsThatHavePiratesNamed(String firstName){
        List<Ship> result = null;

        Session session = entityManager.unwrap(Session.class);

        try{
            // this code may not work
            Criteria cr = session.createCriteria(Ship.class);
            cr.createAlias("pirates", "pirateAlias");
            cr.add(Restrictions.eq("pirateAlias.firstName", firstName));
            result = cr.list();
        }
        catch (HibernateException ex){
            // stuff went wrong, but we can use ex to find out why
            ex.printStackTrace();
        }
        finally {
            // no matter what, do this last

        }
        return result;
    }

}
