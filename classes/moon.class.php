<?php
class Moon
{
    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //Gets moon phase, returns current phase based on number from API
    public function getMoonPhase($moonphase)
    {
        if ($moonphase == 0 || $moonphase == 1) {
            return 'New Moon';
        } elseif ($moonphase < 0.25) {
            return 'Waxing Crescent';
        } elseif ($moonphase == 0.25) {
            return 'First Quarter';
        } elseif ($moonphase < 0.5) {
            return 'Waxing Gibbous';
        } elseif ($moonphase == 0.5) {
            return 'Full Moon';
        } elseif ($moonphase < 0.75) {
            return 'Waning Gibbous';
        } elseif ($moonphase == 0.75) {
            return 'Last Quarter';
        } else {
            return 'Waning Crescent';
        }

    }
}