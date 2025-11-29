package com.devops;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class AppTest {
    
    @Test
    public void testBasicCalculation() {
        assertEquals(4, 2 + 2, "2+2 devrait égaler 4");
    }
    
    @Test
    public void testStringNotEmpty() {
        String message = "Hello DevOps";
        assertFalse(message.isEmpty(), "Le message ne devrait pas être vide");
    }
}
