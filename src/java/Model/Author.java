/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Adam
 */
public class Author {
    private int authorId;
    private String authorName;
    private Date dateAdded;

    public Author() {
    }

    public Author(int authorId) {
        this.authorId = authorId;
    }
    
    // Get rid of?
    public Author(int authorId, String authorName, Date dateAdded) {
        this.authorId = authorId;
        this.authorName = authorName;
        this.dateAdded = dateAdded;
    }
    
    

    public final void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public final void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public final void setDateAdded(Date dateAdded) {
        this.dateAdded = dateAdded;
    }

    public final int getAuthorId() {
        return authorId;
    }

    public final String getAuthorName() {
        return authorName;
    }

    public final Date getDateAdded() {
        return dateAdded;
    }

    @Override
    public final int hashCode() {
        int hash = 5;
        hash = 71 * hash + this.authorId;
        return hash;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Author other = (Author) obj;
        if (this.authorId != other.authorId) {
            return false;
        }
        return true;
    }

    @Override
    public final String toString() {
        return "Author{" + "authorId=" + authorId + ", authorName=" + authorName + ", dateAdded=" + dateAdded + '}';
    }
    
    
    
    
    
    
}
