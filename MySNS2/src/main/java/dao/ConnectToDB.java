package dao;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.MongoClient;
import org.bson.Document; 
import java.util.Iterator;

public class ConnectToDB {
 public static void main( String args[] ) {
 // Creating a Mongo client
 MongoClient myclient = new MongoClient("localhost" , 27017);
 System.out.println("Connected to the database successfully");
 // Accessing the database
 MongoDatabase mydb = myclient.getDatabase("sdb");
 //Creating a collection
 mydb.createCollection("sampleCol");
 System.out.println("Collection created successfully");
// listing all collections
 for (String name : mydb.listCollectionNames()) {
 System.out.println(name);
 MongoCollection<Document> mycol = mydb.getCollection("sampleCol");
 System.out.println("Collection selected successfully"); 
}
}
}