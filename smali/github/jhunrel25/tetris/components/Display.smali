.class public Lgithub/jhunrel25/tetris/components/Display;
.super Lgithub/jhunrel25/tetris/components/Component;
.source "Display.java"


# instance fields
.field private columnOffset:I

.field private columns:I

.field private dropPhantom:Z

.field private gridColumnBorder:I

.field private gridRowBorder:I

.field private landscapeInitialized:Z

.field private paint:Landroid/graphics/Paint;

.field private popUptextPaint:Landroid/graphics/Paint;

.field private prevPhantomY:I

.field private prev_bottom:I

.field private prev_left:I

.field private prev_right:I

.field private prev_top:I

.field private rowOffset:I

.field private rows:I

.field private squaresize:I

.field private textBottom:I

.field private textEmptySpacing:I

.field private textHeight:I

.field private textLeft:I

.field private textLines:I

.field private textPaint:Landroid/graphics/Paint;

.field private textRect:Landroid/graphics/Rect;

.field private textRight:I

.field private textSizeH:I

.field private textTop:I


# direct methods
.method public constructor <init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 6
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    const v5, 0x106000b

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    invoke-direct {p0, p1}, Lgithub/jhunrel25/tetris/components/Component;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 83
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 84
    invoke-virtual {p0, v4}, Lgithub/jhunrel25/tetris/components/Display;->setPhantomY(I)V

    .line 85
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Display;->landscapeInitialized:Z

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->rows:I

    .line 88
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->columns:I

    .line 90
    iput v3, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    .line 91
    iput v3, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_top:I

    .line 92
    iput v3, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_bottom:I

    .line 93
    iput v3, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_left:I

    .line 95
    iput v3, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_right:I

    .line 97
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    .line 98
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textRect:Landroid/graphics/Rect;

    .line 102
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_antialiasing"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_antialiasing"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    iput v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textSizeH:I

    .line 110
    const/4 v0, 0x2

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    .line 111
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_fps"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/16 v0, 0xa

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textLines:I

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textLines:I

    goto :goto_0
.end method

.method private drawActive(IIILandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "spaltenOffset"    # I
    .param p2, "zeilenOffset"    # I
    .param p3, "spaltenAbstand"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 259
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getActivePiece()Lgithub/jhunrel25/tetris/pieces/Piece;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lgithub/jhunrel25/tetris/pieces/Piece;->drawOnBoard(IIILandroid/graphics/Canvas;)V

    .line 260
    return-void
.end method

.method private drawGrid(IIIILandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xBorder"    # I
    .param p4, "yBorder"    # I
    .param p5, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 191
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    const/4 v7, 0x0

    .local v7, "zeilePixel":I
    :goto_0
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->rows:I

    if-le v7, v0, :cond_0

    .line 195
    const/4 v6, 0x0

    .local v6, "spaltePixel":I
    :goto_1
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->columns:I

    if-le v6, v0, :cond_1

    .line 200
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p1

    int-to-float v4, p4

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p2

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 203
    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p3

    int-to-float v4, p2

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 204
    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p1

    int-to-float v4, p4

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 205
    return-void

    .line 193
    .end local v6    # "spaltePixel":I
    :cond_0
    int-to-float v1, p1

    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v0, v7

    add-int/2addr v0, p2

    int-to-float v2, v0

    int-to-float v3, p3

    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v0, v7

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 196
    .restart local v6    # "spaltePixel":I
    :cond_1
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v0, v6

    add-int/2addr v0, p1

    int-to-float v1, v0

    int-to-float v2, p2

    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v0, v6

    add-int/2addr v0, p1

    int-to-float v3, v0

    int-to-float v4, p4

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 195
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private drawPhantom(IIILandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "spaltenOffset"    # I
    .param p2, "zeilenOffset"    # I
    .param p3, "spaltenAbstand"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 264
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getActivePiece()Lgithub/jhunrel25/tetris/pieces/Piece;

    move-result-object v0

    .line 265
    .local v0, "active":Lgithub/jhunrel25/tetris/pieces/Piece;
    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/pieces/Piece;->getY()I

    move-result v5

    .line 266
    .local v5, "y":I
    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/pieces/Piece;->getX()I

    move-result v4

    .line 267
    .local v4, "x":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPhantom(Z)V

    .line 269
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Display;->dropPhantom:Z

    if-eqz v6, :cond_1

    .line 270
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v6

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/Board;->getCurrentRowIndex()I

    move-result v2

    .line 271
    .local v2, "backup__currentRowIndex":I
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v6

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/Board;->getCurrentRow()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    .line 272
    .local v1, "backup__currentRow":Lgithub/jhunrel25/tetris/Row;
    add-int/lit8 v3, v5, 0x1

    .line 274
    .local v3, "cnt":I
    :goto_0
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v6

    invoke-virtual {v0, v4, v3, v6}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPositionSimpleCollision(IILgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 278
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v6

    invoke-virtual {v6, v2}, Lgithub/jhunrel25/tetris/components/Board;->setCurrentRowIndex(I)V

    .line 279
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v6

    invoke-virtual {v6, v1}, Lgithub/jhunrel25/tetris/components/Board;->setCurrentRow(Lgithub/jhunrel25/tetris/Row;)V

    .line 283
    .end local v1    # "backup__currentRow":Lgithub/jhunrel25/tetris/Row;
    .end local v2    # "backup__currentRowIndex":I
    .end local v3    # "cnt":I
    :goto_1
    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/pieces/Piece;->getY()I

    move-result v6

    iput v6, p0, Lgithub/jhunrel25/tetris/components/Display;->prevPhantomY:I

    .line 284
    invoke-virtual {v0, p1, p2, p3, p4}, Lgithub/jhunrel25/tetris/pieces/Piece;->drawOnBoard(IIILandroid/graphics/Canvas;)V

    .line 285
    invoke-virtual {v0, v4, v5}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPositionSimple(II)V

    .line 286
    invoke-virtual {v0, v7}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPhantom(Z)V

    .line 287
    iput-boolean v7, p0, Lgithub/jhunrel25/tetris/components/Display;->dropPhantom:Z

    .line 288
    return-void

    .line 275
    .restart local v1    # "backup__currentRow":Lgithub/jhunrel25/tetris/Row;
    .restart local v2    # "backup__currentRowIndex":I
    .restart local v3    # "cnt":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "backup__currentRow":Lgithub/jhunrel25/tetris/Row;
    .end local v2    # "backup__currentRowIndex":I
    .end local v3    # "cnt":I
    :cond_1
    iget v6, p0, Lgithub/jhunrel25/tetris/components/Display;->prevPhantomY:I

    invoke-virtual {v0, v4, v6}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPositionSimple(II)V

    goto :goto_1
.end method

.method private drawPopupText(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 297
    const/4 v2, 0x6

    .line 298
    .local v2, "offset":I
    const/4 v0, 0x6

    .line 300
    .local v0, "diagonaloffset":I
    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v5, v5, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v5}, Lgithub/jhunrel25/tetris/components/GameState;->getPopupString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "text":Ljava/lang/String;
    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getPopupSize()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 302
    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getPopupAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 305
    iget v5, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    iget v6, p0, Lgithub/jhunrel25/tetris/components/Display;->columns:I

    iget v7, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    .line 306
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 308
    .local v4, "top":I
    add-int/lit8 v5, v1, 0x6

    int-to-float v5, v5

    int-to-float v6, v4

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 309
    add-int/lit8 v5, v1, 0x6

    int-to-float v5, v5

    add-int/lit8 v6, v4, 0x6

    int-to-float v6, v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 310
    int-to-float v5, v1

    add-int/lit8 v6, v4, 0x6

    int-to-float v6, v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 311
    add-int/lit8 v5, v1, -0x6

    int-to-float v5, v5

    add-int/lit8 v6, v4, 0x6

    int-to-float v6, v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    add-int/lit8 v5, v1, -0x6

    int-to-float v5, v5

    int-to-float v6, v4

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 313
    add-int/lit8 v5, v1, -0x6

    int-to-float v5, v5

    add-int/lit8 v6, v4, -0x6

    int-to-float v6, v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 314
    int-to-float v5, v1

    add-int/lit8 v6, v4, -0x6

    int-to-float v6, v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 315
    add-int/lit8 v5, v1, 0x6

    int-to-float v5, v5

    add-int/lit8 v6, v4, -0x6

    int-to-float v6, v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 317
    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getPopupColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getPopupAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 319
    int-to-float v5, v1

    int-to-float v6, v4

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Display;->popUptextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    return-void
.end method

.method private drawPreview(IIIILandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x4

    .line 213
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    invoke-direct {p0, p1, p2, v0, p5}, Lgithub/jhunrel25/tetris/components/Display;->drawPreview(IIILandroid/graphics/Canvas;)V

    .line 216
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    const/4 v7, 0x0

    .local v7, "zeilePixel":I
    :goto_0
    if-le v7, v8, :cond_0

    .line 220
    const/4 v6, 0x0

    .local v6, "spaltePixel":I
    :goto_1
    if-le v6, v8, :cond_1

    .line 225
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p2

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 227
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p1

    int-to-float v4, p4

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p3

    int-to-float v4, p2

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 229
    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p1

    int-to-float v4, p4

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    return-void

    .line 218
    .end local v6    # "spaltePixel":I
    :cond_0
    int-to-float v1, p1

    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v0, v7

    add-int/2addr v0, p2

    int-to-float v2, v0

    int-to-float v3, p3

    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v0, v7

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 217
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 221
    .restart local v6    # "spaltePixel":I
    :cond_1
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v0, v6

    add-int/2addr v0, p1

    int-to-float v1, v0

    int-to-float v2, p2

    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v0, v6

    add-int/2addr v0, p1

    int-to-float v3, v0

    int-to-float v4, p4

    iget-object v5, p0, Lgithub/jhunrel25/tetris/components/Display;->paint:Landroid/graphics/Paint;

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private drawPreview(IIILandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "spaltenOffset"    # I
    .param p2, "zeilenOffset"    # I
    .param p3, "spaltenAbstand"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 292
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getPreviewPiece()Lgithub/jhunrel25/tetris/pieces/Piece;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lgithub/jhunrel25/tetris/pieces/Piece;->drawOnPreview(IIILandroid/graphics/Canvas;)V

    .line 293
    return-void
.end method

.method private drawTextFillBox(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "fps"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 236
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getLevelString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 239
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getScoreString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 243
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getTimeString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 247
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getAPMString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 251
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_fps"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0x9

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;I)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "fps"    # I

    .prologue
    const/4 v9, 0x6

    const v5, 0x7f070004

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 118
    if-nez p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Display;->landscapeInitialized:Z

    if-nez v0, :cond_4

    .line 122
    const/4 v6, 0x0

    .line 123
    .local v6, "fpsenabled":I
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_fps"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const/4 v6, 0x1

    .line 126
    :cond_2
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v0

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Board;->invalidate()V

    .line 128
    iput-boolean v8, p0, Lgithub/jhunrel25/tetris/components/Display;->landscapeInitialized:Z

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->rows:I

    div-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->columns:I

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v1, v2

    div-int v7, v0, v1

    .line 131
    .local v7, "size2":I
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    if-ge v7, v0, :cond_6

    .line 132
    iput v7, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->rows:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    .line 136
    :goto_1
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->rows:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->gridRowBorder:I

    .line 137
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->columns:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->gridColumnBorder:I

    .line 138
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_top:I

    .line 139
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_bottom:I

    .line 140
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->gridColumnBorder:I

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_left:I

    .line 141
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_left:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_right:I

    .line 142
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_left:I

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    .line 143
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_bottom:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textRight:I

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textBottom:I

    .line 146
    iput v8, p0, Lgithub/jhunrel25/tetris/components/Display;->textSizeH:I

    .line 149
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textSizeH:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    :goto_2
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textRight:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_7

    .line 161
    :cond_3
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textSizeH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 162
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    const-string v1, "Level:32"

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v9, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    .line 164
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textBottom:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLines:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v1, v6, 0x3

    div-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    .line 170
    .end local v6    # "fpsenabled":I
    .end local v7    # "size2":I
    :cond_4
    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 172
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v0

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lgithub/jhunrel25/tetris/components/Board;->draw(IIILandroid/graphics/Canvas;)V

    .line 174
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    invoke-direct {p0, v0, v1, v2, p1}, Lgithub/jhunrel25/tetris/components/Display;->drawActive(IIILandroid/graphics/Canvas;)V

    .line 176
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_phantom"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    invoke-direct {p0, v0, v1, v2, p1}, Lgithub/jhunrel25/tetris/components/Display;->drawPhantom(IIILandroid/graphics/Canvas;)V

    .line 179
    :cond_5
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->rowOffset:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->gridColumnBorder:I

    iget v4, p0, Lgithub/jhunrel25/tetris/components/Display;->gridRowBorder:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lgithub/jhunrel25/tetris/components/Display;->drawGrid(IIIILandroid/graphics/Canvas;)V

    .line 181
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_left:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_top:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_right:I

    iget v4, p0, Lgithub/jhunrel25/tetris/components/Display;->prev_bottom:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lgithub/jhunrel25/tetris/components/Display;->drawPreview(IIIILandroid/graphics/Canvas;)V

    .line 183
    invoke-direct {p0, p1, p2}, Lgithub/jhunrel25/tetris/components/Display;->drawTextFillBox(Landroid/graphics/Canvas;I)V

    .line 185
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_popup"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lgithub/jhunrel25/tetris/components/Display;->drawPopupText(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 135
    .restart local v6    # "fpsenabled":I
    .restart local v7    # "size2":I
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->squaresize:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Display;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Display;->columns:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->columnOffset:I

    goto/16 :goto_1

    .line 152
    :cond_7
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    const-string v1, "Level:32"

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v9, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 153
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    .line 154
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textBottom:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textLines:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Display;->textHeight:I

    add-int/lit8 v2, v2, 0x3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v1, v6, 0x3

    div-int/2addr v0, v1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    .line 155
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textEmptySpacing:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    .line 158
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textSizeH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textSizeH:I

    .line 159
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Display;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Display;->textSizeH:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_2
.end method

.method public invalidatePhantom()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Display;->dropPhantom:Z

    .line 325
    return-void
.end method

.method public setPhantomY(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 328
    iput p1, p0, Lgithub/jhunrel25/tetris/components/Display;->prevPhantomY:I

    .line 329
    return-void
.end method
