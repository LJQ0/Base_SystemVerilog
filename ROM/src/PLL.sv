module PLL#(
    parameter int HDPLL_CLK_KHZ_IN      = 50_000,
    parameter int HDPLL_PIXEL_KHZ_OUT   = 27_000,
    parameter bit HDPLL_USE_2_PLLS      = 1'b1,
    parameter int HDPLL_TRICK_MBPS      = 0,
    

