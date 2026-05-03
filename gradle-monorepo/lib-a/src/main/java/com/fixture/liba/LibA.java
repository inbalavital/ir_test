package com.fixture.liba;

import org.apache.logging.log4j.LogManager;

public class LibA {
    public void hello() {
        LogManager.getLogger(LibA.class).info("hello");
    }
}
