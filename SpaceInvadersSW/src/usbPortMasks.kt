// INPUT PORT
const val I0_3_MASK        = 0x0F // I0-I3
const val DVAL_MASK        = 0x10 // I4
const val BUSY_MASK        = 0x40 // I6
const val M_MASK           = 0x80 // I7

// OUTPUT PORT
const val LCD_DATA_MASK    = 0x0F // O0-O3
const val LCD_RS_MASK      = 0x40 // O6
const val LCD_E_MASK       = 0x20 // O5
const val nLCDsel_MASK     = 0x01 // O0
const val nSDCsel_MASK     = 0x02 // O1
const val SDX_MASK         = 0x08 // O3
const val SCLK_MASK        = 0x10 // O4
const val ACK_MASK         = 0x80 // O7