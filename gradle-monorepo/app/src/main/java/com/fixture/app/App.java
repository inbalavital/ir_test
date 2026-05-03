package com.fixture.app;

import com.fixture.liba.LibA;
import com.fixture.libb.LibB;

public class App {
    public static void main(String[] args) {
        new LibA().hello();
        new LibB().world();
    }
}
