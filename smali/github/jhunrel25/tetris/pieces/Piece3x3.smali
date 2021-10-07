.class public abstract Lgithub/jhunrel25/tetris/pieces/Piece3x3;
.super Lgithub/jhunrel25/tetris/pieces/Piece;
.source "Piece3x3.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lgithub/jhunrel25/tetris/pieces/Piece;-><init>(Landroid/content/Context;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public turnLeft(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 14
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

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
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 71
    .local v0, "backup":[[Lgithub/jhunrel25/tetris/Square;
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v9

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v9

    aget-object v12, v12, v13

    aput-object v12, v11, v9

    .line 72
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v9

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v10

    aget-object v12, v12, v13

    aput-object v12, v11, v10

    .line 73
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v9

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v13

    aget-object v12, v12, v13

    aput-object v12, v11, v13

    .line 75
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v10

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v9

    aget-object v12, v12, v10

    aput-object v12, v11, v9

    .line 76
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v10

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v10

    aget-object v12, v12, v10

    aput-object v12, v11, v10

    .line 77
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v10

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v13

    aget-object v12, v12, v10

    aput-object v12, v11, v13

    .line 79
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v13

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v9

    aget-object v12, v12, v9

    aput-object v12, v11, v9

    .line 80
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v13

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v10

    aget-object v12, v12, v9

    aput-object v12, v11, v10

    .line 81
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v13

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v13

    aget-object v12, v12, v9

    aput-object v12, v11, v13

    .line 83
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->dim:I

    if-lt v2, v11, :cond_1

    .line 105
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 106
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 107
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 110
    if-ge v5, v10, :cond_b

    .line 111
    if-ge v6, v10, :cond_9

    .line 112
    if-ge v7, v10, :cond_7

    .line 113
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->reDraw()V

    move v9, v10

    .line 142
    :cond_0
    :goto_1
    return v9

    .line 84
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->dim:I

    if-lt v3, v11, :cond_2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_2
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    if-eqz v11, :cond_6

    .line 86
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v3

    neg-int v4, v11

    .line 87
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v3

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getWidth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    sub-int v8, v11, v12

    .line 88
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    add-int/2addr v11, v2

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    sub-int v1, v11, v12

    .line 89
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 90
    if-ge v6, v4, :cond_3

    .line 91
    move v6, v4

    .line 92
    :cond_3
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 93
    if-ge v7, v8, :cond_4

    .line 94
    move v7, v8

    .line 95
    :cond_4
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 96
    if-ge v5, v1, :cond_5

    .line 97
    move v5, v1

    .line 98
    :cond_5
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v3

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    add-int/2addr v12, v2

    invoke-virtual {p1, v11, v12}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 99
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v3

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    add-int/2addr v12, v2

    invoke-virtual {p1, v11, v12}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v11

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 84
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 116
    .end local v3    # "j":I
    :cond_7
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    sub-int/2addr v11, v7

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    invoke-virtual {p0, v11, v12, v9, p1}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 117
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->reDraw()V

    move v9, v10

    .line 118
    goto/16 :goto_1

    .line 120
    :cond_8
    iget-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 121
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    goto/16 :goto_1

    .line 126
    :cond_9
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v6

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    invoke-virtual {p0, v11, v12, v9, p1}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 127
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->reDraw()V

    move v9, v10

    .line 128
    goto/16 :goto_1

    .line 130
    :cond_a
    iget-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 131
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    goto/16 :goto_1

    .line 136
    :cond_b
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    sub-int/2addr v12, v5

    invoke-virtual {p0, v11, v12, v9, p1}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 137
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->reDraw()V

    move v9, v10

    .line 138
    goto/16 :goto_1

    .line 140
    :cond_c
    iget-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 141
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    goto/16 :goto_1
.end method

.method public turnRight(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 14
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    const/4 v6, -0x4

    .line 153
    .local v6, "maxLeftOffset":I
    const/4 v7, -0x4

    .line 154
    .local v7, "maxRightOffset":I
    const/4 v5, -0x4

    .line 155
    .local v5, "maxBottomOffset":I
    const/4 v4, 0x0

    .line 156
    .local v4, "leftOffset":I
    const/4 v8, 0x0

    .line 157
    .local v8, "rightOffset":I
    const/4 v1, 0x0

    .line 158
    .local v1, "bottomOffset":I
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 162
    .local v0, "backup":[[Lgithub/jhunrel25/tetris/Square;
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v9

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v13

    aget-object v12, v12, v9

    aput-object v12, v11, v9

    .line 163
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v9

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v10

    aget-object v12, v12, v9

    aput-object v12, v11, v10

    .line 164
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v9

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v9

    aget-object v12, v12, v9

    aput-object v12, v11, v13

    .line 166
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v10

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v13

    aget-object v12, v12, v10

    aput-object v12, v11, v9

    .line 167
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v10

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v10

    aget-object v12, v12, v10

    aput-object v12, v11, v10

    .line 168
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v10

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v9

    aget-object v12, v12, v10

    aput-object v12, v11, v13

    .line 170
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v13

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v13

    aget-object v12, v12, v13

    aput-object v12, v11, v9

    .line 171
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v13

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v10

    aget-object v12, v12, v13

    aput-object v12, v11, v10

    .line 172
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v13

    iget-object v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v12, v12, v9

    aget-object v12, v12, v13

    aput-object v12, v11, v13

    .line 175
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->dim:I

    if-lt v2, v11, :cond_1

    .line 197
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 198
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 199
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 202
    if-ge v5, v10, :cond_b

    .line 203
    if-ge v6, v10, :cond_9

    .line 204
    if-ge v7, v10, :cond_7

    .line 205
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->reDraw()V

    move v9, v10

    .line 234
    :cond_0
    :goto_1
    return v9

    .line 176
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->dim:I

    if-lt v3, v11, :cond_2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_2
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    if-eqz v11, :cond_6

    .line 178
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v3

    neg-int v4, v11

    .line 179
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v3

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getWidth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    sub-int v8, v11, v12

    .line 180
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    add-int/2addr v11, v2

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    sub-int v1, v11, v12

    .line 181
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 182
    if-ge v6, v4, :cond_3

    .line 183
    move v6, v4

    .line 184
    :cond_3
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 185
    if-ge v7, v8, :cond_4

    .line 186
    move v7, v8

    .line 187
    :cond_4
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 188
    if-ge v5, v1, :cond_5

    .line 189
    move v5, v1

    .line 190
    :cond_5
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v3

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    add-int/2addr v12, v2

    invoke-virtual {p1, v11, v12}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 191
    iget-object v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v3

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    add-int/2addr v12, v2

    invoke-virtual {p1, v11, v12}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v11

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 176
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 208
    .end local v3    # "j":I
    :cond_7
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    sub-int/2addr v11, v7

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    invoke-virtual {p0, v11, v12, v9, p1}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 209
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->reDraw()V

    move v9, v10

    .line 210
    goto/16 :goto_1

    .line 212
    :cond_8
    iget-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 213
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    goto/16 :goto_1

    .line 218
    :cond_9
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    add-int/2addr v11, v6

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    invoke-virtual {p0, v11, v12, v9, p1}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 219
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->reDraw()V

    move v9, v10

    .line 220
    goto/16 :goto_1

    .line 222
    :cond_a
    iget-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 223
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    goto/16 :goto_1

    .line 228
    :cond_b
    iget v11, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->x:I

    iget v12, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->y:I

    sub-int/2addr v12, v5

    invoke-virtual {p0, v11, v12, v9, p1}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 229
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->reDraw()V

    move v9, v10

    .line 230
    goto/16 :goto_1

    .line 232
    :cond_c
    iget-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    iput-object v10, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 233
    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece3x3;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    goto/16 :goto_1
.end method
