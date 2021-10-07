.class public abstract Lgithub/jhunrel25/tetris/pieces/Piece4x4;
.super Lgithub/jhunrel25/tetris/pieces/Piece;
.source "Piece4x4.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lgithub/jhunrel25/tetris/pieces/Piece;-><init>(Landroid/content/Context;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public turnLeft(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 13
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 61
    const/4 v6, -0x4

    .line 62
    .local v6, "maxLeftOffset":I
    const/4 v7, -0x4

    .line 63
    .local v7, "maxRightOffset":I
    const/4 v5, -0x4

    .line 64
    .local v5, "maxBottomOffset":I
    const/4 v4, 0x0

    .line 65
    .local v4, "leftOffset":I
    const/4 v8, 0x0

    .line 66
    .local v8, "rightOffset":I
    const/4 v1, 0x0

    .line 67
    .local v1, "bottomOffset":I
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 71
    .local v0, "backup":[[Lgithub/jhunrel25/tetris/Square;
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 72
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 73
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 74
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 76
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 77
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 78
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 79
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 81
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 82
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 83
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 84
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 86
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 87
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 88
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 89
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v9, 0x4

    if-lt v2, v9, :cond_0

    .line 113
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 114
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 115
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 118
    const/4 v9, 0x1

    if-ge v5, v9, :cond_a

    .line 119
    const/4 v9, 0x1

    if-ge v6, v9, :cond_8

    .line 120
    const/4 v9, 0x1

    if-ge v7, v9, :cond_6

    .line 121
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reDraw()V

    .line 122
    const/4 v9, 0x1

    .line 150
    :goto_1
    return v9

    .line 92
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    const/4 v9, 0x4

    if-lt v3, v9, :cond_1

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    if-eqz v9, :cond_5

    .line 94
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v3

    neg-int v4, v9

    .line 95
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v3

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int v8, v9, v10

    .line 96
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    add-int/2addr v9, v2

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int v1, v9, v10

    .line 97
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 98
    if-ge v6, v4, :cond_2

    .line 99
    move v6, v4

    .line 100
    :cond_2
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 101
    if-ge v7, v8, :cond_3

    .line 102
    move v7, v8

    .line 103
    :cond_3
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 104
    if-ge v5, v1, :cond_4

    .line 105
    move v5, v1

    .line 106
    :cond_4
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v3

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    add-int/2addr v10, v2

    invoke-virtual {p1, v9, v10}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 107
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v3

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    add-int/2addr v10, v2

    invoke-virtual {p1, v9, v10}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v9

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 108
    const/4 v9, 0x0

    goto :goto_1

    .line 92
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 124
    .end local v3    # "j":I
    :cond_6
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    sub-int/2addr v9, v7

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 125
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reDraw()V

    .line 126
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 128
    :cond_7
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 129
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 130
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 134
    :cond_8
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v6

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 135
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reDraw()V

    .line 136
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 138
    :cond_9
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 139
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 140
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 144
    :cond_a
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    sub-int/2addr v10, v5

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 145
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reDraw()V

    .line 146
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 148
    :cond_b
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 149
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 150
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public turnRight(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 13
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 160
    const/4 v6, -0x4

    .line 161
    .local v6, "maxLeftOffset":I
    const/4 v7, -0x4

    .line 162
    .local v7, "maxRightOffset":I
    const/4 v5, -0x4

    .line 163
    .local v5, "maxBottomOffset":I
    const/4 v4, 0x0

    .line 164
    .local v4, "leftOffset":I
    const/4 v8, 0x0

    .line 165
    .local v8, "rightOffset":I
    const/4 v1, 0x0

    .line 166
    .local v1, "bottomOffset":I
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 170
    .local v0, "backup":[[Lgithub/jhunrel25/tetris/Square;
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 171
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 172
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 173
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 175
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 176
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 177
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 178
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 180
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 181
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 182
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 183
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 185
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 186
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 187
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 188
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 191
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v9, 0x4

    if-lt v2, v9, :cond_0

    .line 213
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 214
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 215
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 218
    const/4 v9, 0x1

    if-ge v5, v9, :cond_a

    .line 219
    const/4 v9, 0x1

    if-ge v6, v9, :cond_8

    .line 220
    const/4 v9, 0x1

    if-ge v7, v9, :cond_6

    .line 221
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reDraw()V

    .line 222
    const/4 v9, 0x1

    .line 250
    :goto_1
    return v9

    .line 192
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    const/4 v9, 0x4

    if-lt v3, v9, :cond_1

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    if-eqz v9, :cond_5

    .line 194
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v3

    neg-int v4, v9

    .line 195
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v3

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int v8, v9, v10

    .line 196
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    add-int/2addr v9, v2

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int v1, v9, v10

    .line 197
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 198
    if-ge v6, v4, :cond_2

    .line 199
    move v6, v4

    .line 200
    :cond_2
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 201
    if-ge v7, v8, :cond_3

    .line 202
    move v7, v8

    .line 203
    :cond_3
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 204
    if-ge v5, v1, :cond_4

    .line 205
    move v5, v1

    .line 206
    :cond_4
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v3

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    add-int/2addr v10, v2

    invoke-virtual {p1, v9, v10}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 207
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v9, v9, v2

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v3

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    add-int/2addr v10, v2

    invoke-virtual {p1, v9, v10}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v9

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 208
    const/4 v9, 0x0

    goto :goto_1

    .line 192
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 224
    .end local v3    # "j":I
    :cond_6
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    sub-int/2addr v9, v7

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 225
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reDraw()V

    .line 226
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 228
    :cond_7
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 229
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 230
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 234
    :cond_8
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    add-int/2addr v9, v6

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 235
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reDraw()V

    .line 236
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 238
    :cond_9
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 239
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 240
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 244
    :cond_a
    iget v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->x:I

    iget v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->y:I

    sub-int/2addr v10, v5

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 245
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reDraw()V

    .line 246
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 248
    :cond_b
    iget-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v9, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 249
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 250
    const/4 v9, 0x0

    goto/16 :goto_1
.end method
