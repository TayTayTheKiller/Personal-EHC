_uid = ["0"];

if (getPlayerUID player in _uid ) then { //Debug

    if(isNil "markers") then { markers = []};

    ZombieVisibleDistance=15000;
    ZombieMarkerType="vehicle";
    ZombieMarkerColor="ColorRed";
    ZombieName="Z";


      while {true} do {
        _pos = getPos player;
        _zombies = _pos nearEntities ["zZombie_Base",ZombieVisibleDistance];
        _zmcount= count _zombies;
        ZM=0;

        _markcount = count markers;
        for "ZM" from 0 to (_markcount -1) do
        {
            deleteMarkerLocal ("zmMarker"+ (str ZM));
        };

        for "ZM" from 0 to _zmcount do {

            _text = format ["zmMarker%1", ZM];
            markers set [ZM, _text];
            zmB = _zombies select ZM;
            if(alive zmB) then {
                posTT = position zmB;
                deleteMarkerLocal ("zmMarker"+ (str ZM));
                MarkerZm = "zmMarker" + (str ZM);
                ParamsZm=[MarkerZm,posTT];
                MarkerZm = createMarkerLocal ParamsZm;
                MarkerZm setMarkerTypeLocal ZombieMarkerType;
                MarkerZm setMarkerPosLocal (posTT);
                MarkerZm setMarkerColorLocal(ZombieMarkerColor);
                MarkerZm setMarkerTextLocal ZombieName;
            };
        };
        sleep 3;
    };
};