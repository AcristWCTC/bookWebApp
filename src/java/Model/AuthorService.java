/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;



import java.text.SimpleDateFormat;
import static java.util.Arrays.asList;
import java.util.Date;
import java.util.List;
import javax.swing.text.DateFormatter;

/**
 *
 * @author Adam
 */
public class AuthorService {
    Date date = new Date();
    
    Author author1 = new Author(27, "Bob Ross", date);
    Author author2 = new Author(31, "Bill Gates", date);
    Author author3 = new Author(93, "Darth Vader", date);
    List<Author> authorList = asList(author1, author2, author3);
    


            
    public List retriveAuthors(){
        return authorList;
    };
    
}
