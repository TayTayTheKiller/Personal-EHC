_uid = ["0"];
if (getPlayerUID player in _uid) then { //Debug
    while {true} do
    {
        hintSilent parseText format ["
            <t size='1' font='Bitstream' align='left'>ZombiesOnMap total/alive: </t><t size='1' font='Bitstream' align='right'>%1/%2</t><br/>
            <t size='1' font='Bitstream' align='left'>FPS: </t><t size='1' font='Bitstream' align='right'>%3</t><br/>
        ",count entities "zZombie_Base",{alive _x} count entities "zZombie_Base",(round diag_fps)];
        sleep 1;
    };
};
