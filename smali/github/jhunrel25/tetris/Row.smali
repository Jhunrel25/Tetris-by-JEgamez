.class public Lgithub/jhunrel25/tetris/Row;
.super Ljava/lang/Object;
.source "Row.java"


# instance fields
.field private above:Lgithub/jhunrel25/tetris/Row;

.field private animator:Lgithub/jhunrel25/tetris/Animator;

.field private below:Lgithub/jhunrel25/tetris/Row;

.field private elements:[Lgithub/jhunrel25/tetris/Square;

.field private emptySquare:Lgithub/jhunrel25/tetris/Square;

.field private fillStatus:I

.field private width:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Lgithub/jhunrel25/tetris/Square;

    invoke-direct {v1, v2, p2}, Lgithub/jhunrel25/tetris/Square;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/Row;->emptySquare:Lgithub/jhunrel25/tetris/Square;

    .line 58
    new-instance v1, Lgithub/jhunrel25/tetris/Animator;

    invoke-direct {v1, p2, p0}, Lgithub/jhunrel25/tetris/Animator;-><init>(Landroid/content/Context;Lgithub/jhunrel25/tetris/Row;)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/Row;->animator:Lgithub/jhunrel25/tetris/Animator;

    .line 59
    iput p1, p0, Lgithub/jhunrel25/tetris/Row;->width:I

    .line 60
    iput-object v3, p0, Lgithub/jhunrel25/tetris/Row;->below:Lgithub/jhunrel25/tetris/Row;

    .line 61
    iput-object v3, p0, Lgithub/jhunrel25/tetris/Row;->above:Lgithub/jhunrel25/tetris/Row;

    .line 62
    iput v2, p0, Lgithub/jhunrel25/tetris/Row;->fillStatus:I

    .line 63
    new-array v1, p1, [Lgithub/jhunrel25/tetris/Square;

    iput-object v1, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 67
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/Row;->emptySquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public above()Lgithub/jhunrel25/tetris/Row;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->above:Lgithub/jhunrel25/tetris/Row;

    return-object v0
.end method

.method public below()Lgithub/jhunrel25/tetris/Row;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->below:Lgithub/jhunrel25/tetris/Row;

    return-object v0
.end method

.method public clear(Lgithub/jhunrel25/tetris/components/Board;I)V
    .locals 1
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;
    .param p2, "currentDropInterval"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->animator:Lgithub/jhunrel25/tetris/Animator;

    invoke-virtual {v0, p1, p2}, Lgithub/jhunrel25/tetris/Animator;->start(Lgithub/jhunrel25/tetris/components/Board;I)V

    .line 153
    return-void
.end method

.method public cycle(JLgithub/jhunrel25/tetris/components/Board;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 148
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->animator:Lgithub/jhunrel25/tetris/Animator;

    invoke-virtual {v0, p1, p2, p3}, Lgithub/jhunrel25/tetris/Animator;->cycle(JLgithub/jhunrel25/tetris/components/Board;)V

    .line 149
    return-void
.end method

.method public delete()Lgithub/jhunrel25/tetris/Row;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->below:Lgithub/jhunrel25/tetris/Row;

    .line 115
    .local v0, "result":Lgithub/jhunrel25/tetris/Row;
    iget-object v1, p0, Lgithub/jhunrel25/tetris/Row;->above:Lgithub/jhunrel25/tetris/Row;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lgithub/jhunrel25/tetris/Row;->above:Lgithub/jhunrel25/tetris/Row;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/Row;->below:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/Row;->setBelow(Lgithub/jhunrel25/tetris/Row;)V

    .line 117
    :cond_0
    iget-object v1, p0, Lgithub/jhunrel25/tetris/Row;->below:Lgithub/jhunrel25/tetris/Row;

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lgithub/jhunrel25/tetris/Row;->below:Lgithub/jhunrel25/tetris/Row;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/Row;->above:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/Row;->setAbove(Lgithub/jhunrel25/tetris/Row;)V

    .line 120
    :cond_1
    iput-object v3, p0, Lgithub/jhunrel25/tetris/Row;->above:Lgithub/jhunrel25/tetris/Row;

    .line 121
    iput-object v3, p0, Lgithub/jhunrel25/tetris/Row;->below:Lgithub/jhunrel25/tetris/Row;

    .line 123
    return-object v0
.end method

.method public draw(IIILandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "squareSize"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->animator:Lgithub/jhunrel25/tetris/Animator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgithub/jhunrel25/tetris/Animator;->draw(IIILandroid/graphics/Canvas;)V

    .line 128
    return-void
.end method

.method public drawBitmap(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "squareSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 131
    iget v0, p0, Lgithub/jhunrel25/tetris/Row;->width:I

    mul-int/2addr v0, p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 132
    .local v6, "bm":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v4, "tamp":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lgithub/jhunrel25/tetris/Row;->width:I

    if-lt v7, v0, :cond_0

    .line 137
    return-object v6

    .line 134
    :cond_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v7

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v7

    mul-int v1, v7, p1

    move v3, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lgithub/jhunrel25/tetris/Square;->draw(IIILandroid/graphics/Canvas;Z)V

    .line 133
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public finishClear(Lgithub/jhunrel25/tetris/components/Board;)V
    .locals 4
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 157
    const/4 v2, 0x0

    iput v2, p0, Lgithub/jhunrel25/tetris/Row;->fillStatus:I

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lgithub/jhunrel25/tetris/Row;->width:I

    if-lt v0, v2, :cond_0

    .line 162
    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->getTopRow()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    .line 165
    .local v1, "topRow":Lgithub/jhunrel25/tetris/Row;
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v2

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/Row;->below()Lgithub/jhunrel25/tetris/Row;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgithub/jhunrel25/tetris/Row;->setBelow(Lgithub/jhunrel25/tetris/Row;)V

    .line 166
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/Row;->below()Lgithub/jhunrel25/tetris/Row;

    move-result-object v2

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgithub/jhunrel25/tetris/Row;->setAbove(Lgithub/jhunrel25/tetris/Row;)V

    .line 169
    invoke-virtual {p0, v1}, Lgithub/jhunrel25/tetris/Row;->setBelow(Lgithub/jhunrel25/tetris/Row;)V

    .line 170
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/Row;->setAbove(Lgithub/jhunrel25/tetris/Row;)V

    .line 171
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v2

    invoke-virtual {v2, p0}, Lgithub/jhunrel25/tetris/Row;->setBelow(Lgithub/jhunrel25/tetris/Row;)V

    .line 172
    invoke-virtual {v1, p0}, Lgithub/jhunrel25/tetris/Row;->setAbove(Lgithub/jhunrel25/tetris/Row;)V

    .line 174
    invoke-virtual {p1, p0}, Lgithub/jhunrel25/tetris/components/Board;->finishClear(Lgithub/jhunrel25/tetris/Row;)V

    .line 175
    return-void

    .line 159
    .end local v1    # "topRow":Lgithub/jhunrel25/tetris/Row;
    :cond_0
    iget-object v2, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/Row;->emptySquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v3, v2, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Lgithub/jhunrel25/tetris/Square;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 79
    if-ltz p1, :cond_0

    iget v0, p0, Lgithub/jhunrel25/tetris/Row;->width:I

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, p1

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interrupt(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 1
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 178
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->animator:Lgithub/jhunrel25/tetris/Animator;

    invoke-virtual {v0, p1}, Lgithub/jhunrel25/tetris/Animator;->finish(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v0

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lgithub/jhunrel25/tetris/Row;->fillStatus:I

    iget v1, p0, Lgithub/jhunrel25/tetris/Row;->width:I

    if-lt v0, v1, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lgithub/jhunrel25/tetris/Square;I)V
    .locals 1
    .param p1, "s"    # Lgithub/jhunrel25/tetris/Square;
    .param p2, "i"    # I

    .prologue
    .line 70
    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    if-ltz p2, :cond_0

    iget v0, p0, Lgithub/jhunrel25/tetris/Row;->width:I

    if-ge p2, v0, :cond_0

    .line 73
    iget v0, p0, Lgithub/jhunrel25/tetris/Row;->fillStatus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/Row;->fillStatus:I

    .line 74
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    aput-object p1, v0, p2

    goto :goto_0
.end method

.method public set([Lgithub/jhunrel25/tetris/Square;)V
    .locals 2
    .param p1, "squares"    # [Lgithub/jhunrel25/tetris/Square;

    .prologue
    .line 85
    iput-object p1, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lgithub/jhunrel25/tetris/Row;->fillStatus:I

    .line 88
    iget-object v1, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    if-eqz v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgithub/jhunrel25/tetris/Row;->width:I

    if-lt v0, v1, :cond_1

    .line 94
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 90
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lgithub/jhunrel25/tetris/Row;->elements:[Lgithub/jhunrel25/tetris/Square;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    iget v1, p0, Lgithub/jhunrel25/tetris/Row;->fillStatus:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgithub/jhunrel25/tetris/Row;->fillStatus:I

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAbove(Lgithub/jhunrel25/tetris/Row;)V
    .locals 0
    .param p1, "row"    # Lgithub/jhunrel25/tetris/Row;

    .prologue
    .line 97
    iput-object p1, p0, Lgithub/jhunrel25/tetris/Row;->above:Lgithub/jhunrel25/tetris/Row;

    .line 98
    return-void
.end method

.method public setBelow(Lgithub/jhunrel25/tetris/Row;)V
    .locals 0
    .param p1, "row"    # Lgithub/jhunrel25/tetris/Row;

    .prologue
    .line 101
    iput-object p1, p0, Lgithub/jhunrel25/tetris/Row;->below:Lgithub/jhunrel25/tetris/Row;

    .line 102
    return-void
.end method
