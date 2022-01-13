#ifndef _test_h_
    #define _test_h_

    #include <iostream>
    #include <string>
    class entity
    {
    private:
        int x;
        int y;
        int z;
        void (*func)(string test);
    public:
        entity(int pos_x, int pos_y, int pos_z);
        ~entity();
    };
    
    entity::entity(int pos_x, int pos_y, int pos_z)
    {
        x = pos_x;
        y = pos_y;
        z = pos_z;
    };
    
    entity::~entity()
    {
    };


    class player
    {
    private:
        entity test;
    public:
        player();
        ~player();
    };
    
    player::player()
    {
        
    }
    
    player::~player()
    {
    }
    
#endif
    