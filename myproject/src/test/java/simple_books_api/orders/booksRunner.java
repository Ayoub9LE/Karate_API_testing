package simple_books_api.orders;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class booksRunner {


        @Karate.Test
        Karate testSample() {
            return Karate.run().tags("@books").relativeTo(getClass());
        }

}
