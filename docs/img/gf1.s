        ;;  gf1.s
        ;;  
        ;;  gf1_font
        ;; 
        ;;  notes: see font.h for format details
        ;;  
        ;;  MIT License (see: LICENSE)
        ;;  copyright(c) 2021 tomaz stih
        ;;  
        ;;  14.02.2023   tstih
        .module gf1_font

        .globl _gf1_font

        .area _CODE
_gf1_font::
        ;; font header
        .db 0                   ; font flags
        .db 15                  ; width (max width for proportional)
        .db 11                  ; height
        .db 32                  ; first ascii
        .db 95                  ; last ascii

        ;; glpyh offsets
        .dw 0x0085, 0x008F, 0x00AC, 0x00D5, 0x00F0, 0x0101, 0x0122, 0x0131
        .dw 0x0147, 0x0163, 0x0183, 0x01A4, 0x01C1, 0x01E3, 0x01FC, 0x020B
        .dw 0x0221, 0x0241, 0x0264, 0x0284, 0x02A2, 0x02BC, 0x02D7, 0x02F5
        .dw 0x0315, 0x0334, 0x0357, 0x0371, 0x0391, 0x03AF, 0x03CF, 0x03ED
        .dw 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085
        .dw 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085
        .dw 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085
        .dw 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085, 0x0085

        ;; ascii 32: ' '
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 6                   ; # moves
        .db 11                  ; x origin
        .db 3                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 33: '!'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 25                  ; # moves
        .db 2                   ; x origin
        .db 3                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 34: '"'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 37                  ; # moves
        .db 4                   ; x origin
        .db 3                   ; y origin
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 35: '#'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 23                  ; # moves
        .db 8                   ; x origin
        .db 3                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 36: '$'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 13                  ; # moves
        .db 4                   ; x origin
        .db 11                  ; y origin
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        ;; ascii 37: '%'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 29                  ; # moves
        .db 5                   ; x origin
        .db 9                   ; y origin
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 38: '&'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 11                  ; # moves
        .db 14                  ; x origin
        .db 7                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 39: '''
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 18                  ; # moves
        .db 13                  ; x origin
        .db 3                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 40: '('
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 24                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 41: ')'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 28                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 42: '*'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 29                  ; # moves
        .db 14                  ; x origin
        .db 3                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 126                 ; move dx=-3, dy=-3, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 43: '+'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 25                  ; # moves
        .db 1                   ; x origin
        .db 7                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 44: ','
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 30                  ; # moves
        .db 1                   ; x origin
        .db 8                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 45: '-'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 21                  ; # moves
        .db 3                   ; x origin
        .db 10                  ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 46: '.'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 11                  ; # moves
        .db 9                   ; x origin
        .db 8                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        ;; ascii 47: '/'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 18                  ; # moves
        .db 2                   ; x origin
        .db 10                  ; y origin
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 254                 ; move dx=-3, dy=-3, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 48: '0'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 28                  ; # moves
        .db 6                   ; x origin
        .db 5                   ; y origin
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 49: '1'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 31                  ; # moves
        .db 14                  ; x origin
        .db 10                  ; y origin
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 50: '2'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 28                  ; # moves
        .db 14                  ; x origin
        .db 3                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 51: '3'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 26                  ; # moves
        .db 1                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 122                 ; move dx=-3, dy=3, color=none (move only!)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 52: '4'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 22                  ; # moves
        .db 6                   ; x origin
        .db 8                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 53: '5'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 23                  ; # moves
        .db 6                   ; x origin
        .db 10                  ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 54: '6'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 26                  ; # moves
        .db 10                  ; x origin
        .db 4                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 55: '7'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 28                  ; # moves
        .db 14                  ; x origin
        .db 10                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 56: '8'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 27                  ; # moves
        .db 1                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        ;; ascii 57: '9'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 31                  ; # moves
        .db 1                   ; x origin
        .db 8                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 254                 ; move dx=-3, dy=-3, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 58: ':'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 22                  ; # moves
        .db 3                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 59: ';'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 28                  ; # moves
        .db 1                   ; x origin
        .db 3                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        ;; ascii 60: '<'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 26                  ; # moves
        .db 14                  ; x origin
        .db 3                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 61: '='
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 28                  ; # moves
        .db 1                   ; x origin
        .db 3                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 62: '>'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 26                  ; # moves
        .db 6                   ; x origin
        .db 10                  ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 63: '?'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 11                  ; height
        .db 21                  ; # moves
        .db 1                   ; x origin
        .db 10                  ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
