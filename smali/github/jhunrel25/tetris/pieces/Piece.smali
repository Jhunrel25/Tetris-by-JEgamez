.class public abstract Lgithub/jhunrel25/tetris/pieces/Piece;
.super Ljava/lang/Object;
.source "Piece.java"


# static fields
.field public static final type_I:I = 0x7

.field public static final type_J:I = 0x1

.field public static final type_L:I = 0x2

.field public static final type_O:I = 0x3

.field public static final type_S:I = 0x5

.field public static final type_T:I = 0x6

.field public static final type_Z:I = 0x4


# instance fields
.field protected active:Z

.field private bm:Landroid/graphics/Bitmap;

.field private bmPhantom:Landroid/graphics/Bitmap;

.field private cv:Landroid/graphics/Canvas;

.field private cvPhantom:Landroid/graphics/Canvas;

.field protected dim:I

.field private emptySquare:Lgithub/jhunrel25/tetris/Square;

.field private isPhantom:Z

.field protected pattern:[[Lgithub/jhunrel25/tetris/Square;

.field protected rotated:[[Lgithub/jhunrel25/tetris/Square;

.field protected squareSize:I

.field protected x:I

.field protected y:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "dimension"    # I

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    .line 79
    const/4 v2, 0x1

    iput v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    .line 81
    iput v4, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    .line 82
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    .line 83
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->isPhantom:Z

    .line 85
    new-instance v2, Lgithub/jhunrel25/tetris/Square;

    invoke-direct {v2, v4, p1}, Lgithub/jhunrel25/tetris/Square;-><init>(ILandroid/content/Context;)V

    iput-object v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->emptySquare:Lgithub/jhunrel25/tetris/Square;

    .line 87
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Lgithub/jhunrel25/tetris/Square;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lgithub/jhunrel25/tetris/Square;

    iput-object v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    .line 88
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Lgithub/jhunrel25/tetris/Square;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lgithub/jhunrel25/tetris/Square;

    iput-object v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v0, v2, :cond_0

    .line 95
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v1, v2, :cond_1

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v2, v2, v0

    iget-object v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->emptySquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v3, v2, v1

    .line 92
    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->rotated:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v2, v2, v0

    iget-object v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->emptySquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v3, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public drawOnBoard(IIILandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "ss"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    if-eq p3, v0, :cond_1

    .line 253
    iput p3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    .line 254
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece;->reDraw()V

    .line 256
    :cond_1
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->isPhantom:Z

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->bmPhantom:Landroid/graphics/Bitmap;

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p2

    int-to-float v2, v2

    invoke-virtual {p4, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->bm:Landroid/graphics/Bitmap;

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p2

    int-to-float v2, v2

    invoke-virtual {p4, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawOnPreview(IIILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "ss"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 264
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    if-eq p3, v0, :cond_0

    .line 265
    iput p3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    .line 266
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece;->reDraw()V

    .line 268
    :cond_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->bm:Landroid/graphics/Bitmap;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    return-void
.end method

.method public drop(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 3
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 203
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDim()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    return v0
.end method

.method public hardDrop(ZLgithub/jhunrel25/tetris/components/Board;)I
    .locals 3
    .param p1, "noInterrupt"    # Z
    .param p2, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    return v0

    .line 211
    :cond_0
    invoke-virtual {p2}, Lgithub/jhunrel25/tetris/components/Board;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hard Drop Error: dropped too far."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    return v0
.end method

.method public moveLeft(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 3
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 183
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v0

    goto :goto_0
.end method

.method public moveRight(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 3
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 193
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v0

    goto :goto_0
.end method

.method public place(Lgithub/jhunrel25/tetris/components/Board;)V
    .locals 5
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 118
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v0, v2, :cond_0

    .line 125
    return-void

    .line 120
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v1, v2, :cond_1

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 122
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    add-int/2addr v2, v1

    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Lgithub/jhunrel25/tetris/components/Board;->set(IILgithub/jhunrel25/tetris/Square;)V

    .line 120
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected reDraw()V
    .locals 8

    .prologue
    .line 220
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    mul-int/2addr v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    mul-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->bm:Landroid/graphics/Bitmap;

    .line 221
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->cv:Landroid/graphics/Canvas;

    .line 222
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v6, v0, :cond_0

    .line 230
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    mul-int/2addr v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    mul-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->bmPhantom:Landroid/graphics/Bitmap;

    .line 231
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->bmPhantom:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->cvPhantom:Landroid/graphics/Canvas;

    .line 232
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v6, v0, :cond_3

    .line 239
    return-void

    .line 223
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v7, v0, :cond_1

    .line 222
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    mul-int/2addr v1, v7

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    mul-int/2addr v2, v6

    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    iget-object v4, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->cv:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lgithub/jhunrel25/tetris/Square;->draw(IIILandroid/graphics/Canvas;Z)V

    .line 223
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 233
    .end local v7    # "j":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    iget v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v7, v0, :cond_4

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 234
    :cond_4
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 236
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    iget v1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    mul-int/2addr v1, v7

    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    mul-int/2addr v2, v6

    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->squareSize:I

    iget-object v4, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->cvPhantom:Landroid/graphics/Canvas;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgithub/jhunrel25/tetris/Square;->draw(IIILandroid/graphics/Canvas;Z)V

    .line 233
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public reset(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    .line 99
    iput v4, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    .line 100
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v0, v2, :cond_0

    .line 106
    return-void

    .line 102
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v1, v2, :cond_1

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v2, v2, v0

    iget-object v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->emptySquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v3, v2, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->active:Z

    .line 110
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/Piece;->reDraw()V

    .line 111
    return-void
.end method

.method public setPhantom(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->isPhantom:Z

    .line 277
    return-void
.end method

.method public setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z
    .locals 10
    .param p1, "x_new"    # I
    .param p2, "y_new"    # I
    .param p3, "noInterrupt"    # Z
    .param p4, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "collision":Z
    const/4 v4, 0x0

    .line 134
    .local v4, "leftOffset":I
    const/4 v5, 0x0

    .line 135
    .local v5, "rightOffset":I
    const/4 v0, 0x0

    .line 136
    .local v0, "bottomOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v8, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v2, v8, :cond_1

    .line 163
    iput p1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    .line 164
    iput p2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    move v6, v7

    .line 165
    :cond_0
    return v6

    .line 137
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v8, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v3, v8, :cond_2

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_2
    iget-object v8, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    if-eqz v8, :cond_6

    .line 139
    add-int v8, p1, v3

    neg-int v4, v8

    .line 140
    add-int v8, p1, v3

    invoke-virtual {p4}, Lgithub/jhunrel25/tetris/components/Board;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int v5, v8, v9

    .line 141
    add-int v8, p2, v2

    invoke-virtual {p4}, Lgithub/jhunrel25/tetris/components/Board;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int v0, v8, v9

    .line 142
    iget-object v8, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    if-gtz v4, :cond_0

    .line 144
    :cond_3
    iget-object v8, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    if-gtz v5, :cond_0

    .line 146
    :cond_4
    iget-object v8, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    if-gtz v0, :cond_0

    .line 148
    :cond_5
    add-int v8, p1, v3

    add-int v9, p2, v2

    invoke-virtual {p4, v8, v9}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 149
    iget-object v8, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    add-int v8, p1, v3

    add-int v9, p2, v2

    invoke-virtual {p4, v8, v9}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v8

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    move v1, v7

    .line 150
    :goto_2
    if-eqz v1, :cond_6

    .line 151
    if-nez p3, :cond_0

    .line 154
    invoke-virtual {p4}, Lgithub/jhunrel25/tetris/components/Board;->interruptClearAnimation()V

    .line 155
    add-int v8, p1, v3

    add-int v9, p2, v2

    invoke-virtual {p4, v8, v9}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v8

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    move v1, v6

    .line 156
    :goto_3
    if-nez v1, :cond_0

    .line 137
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    move v1, v6

    .line 149
    goto :goto_2

    :cond_8
    move v1, v7

    .line 155
    goto :goto_3
.end method

.method public setPositionSimple(II)V
    .locals 0
    .param p1, "x_new"    # I
    .param p2, "y_new"    # I

    .prologue
    .line 288
    iput p1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    .line 289
    iput p2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    .line 290
    return-void
.end method

.method public setPositionSimpleCollision(IILgithub/jhunrel25/tetris/components/Board;)Z
    .locals 5
    .param p1, "x_new"    # I
    .param p2, "y_new"    # I
    .param p3, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    const/4 v2, 0x0

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v0, v3, :cond_1

    .line 307
    iput p1, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->x:I

    .line 308
    iput p2, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->y:I

    .line 309
    const/4 v2, 0x1

    :cond_0
    :goto_1
    return v2

    .line 294
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->dim:I

    if-lt v1, v3, :cond_2

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    iget-object v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 296
    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {p3, v3, v4}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v3

    if-nez v3, :cond_4

    .line 297
    iget-object v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 300
    :cond_4
    iget-object v3, p0, Lgithub/jhunrel25/tetris/pieces/Piece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {p3, v3, v4}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v3

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1
.end method

.method public abstract turnLeft(Lgithub/jhunrel25/tetris/components/Board;)Z
.end method

.method public abstract turnRight(Lgithub/jhunrel25/tetris/components/Board;)Z
.end method
