{
  services.thinkfan = {
    enable = true;
      levels = [
        [0  0   30] # Fan off until 30C
        [3  25  35] # Level 3 fan at 25C, full at 35C
        [4  30  40] # Level 4 fan at 30C, full at 40C
        [5  35  45] # Level 5 fan at 35C, full at 45C
        [7  40  50] # Level 7 fan (max) at 40C, full at 50C
        ["level auto" 50 32767] # Max fan speed at 50C and above
    ];
  };
}