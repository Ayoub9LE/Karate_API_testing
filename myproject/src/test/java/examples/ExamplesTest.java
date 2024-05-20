package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;

class ExamplesTest {
    
    // this will run all *.feature files that exist in sub-directories
    // see https://github.com/intuit/karate#naming-conventions
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}


