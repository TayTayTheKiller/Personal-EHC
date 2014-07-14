_uid = ["0"];

if (getPlayerUID player in _uid ) then { //Debug

    if(isNil "markers") then { markers = []};

    while {true} do {

        _pos = getPos player;
        _zombies = _pos nearEntities ["zZombie_Base",15000];
        _zmcount= count _zombies;
	
        ZM = 0;

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
                MarkerZm setMarkerTypeLocal "vehicle";
                MarkerZm setMarkerPosLocal posTT;
                MarkerZm setMarkerColorLocal "ColorRed";
                MarkerZm setMarkerTextLocal "Z";
            };
        };
        sleep 3;
    };
};