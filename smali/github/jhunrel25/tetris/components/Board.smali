.class public Lgithub/jhunrel25/tetris/components/Board;
.super Lgithub/jhunrel25/tetris/components/Component;
.source "Board.java"


# instance fields
.field private blockMap:Landroid/graphics/Bitmap;

.field private blockVas:Landroid/graphics/Canvas;

.field private currentIndex:I

.field private currentRow:Lgithub/jhunrel25/tetris/Row;

.field private height:I

.field private tempRow:Lgithub/jhunrel25/tetris/Row;

.field private topRow:Lgithub/jhunrel25/tetris/Row;

.field private valid:Z

.field private width:I


# direct methods
.method public constructor <init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 5
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1}, Lgithub/jhunrel25/tetris/components/Component;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 64
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lgithub/jhunrel25/tetris/components/Board;->width:I

    .line 65
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    .line 66
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Board;->valid:Z

    .line 69
    new-instance v1, Lgithub/jhunrel25/tetris/Row;

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Board;->width:I

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Board;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v1, v2, v3}, Lgithub/jhunrel25/tetris/Row;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    .line 70
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 71
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    .line 72
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 73
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    if-lt v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/Row;->setAbove(Lgithub/jhunrel25/tetris/Row;)V

    .line 81
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/Row;->setBelow(Lgithub/jhunrel25/tetris/Row;)V

    .line 82
    return-void

    .line 74
    :cond_0
    new-instance v1, Lgithub/jhunrel25/tetris/Row;

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Board;->width:I

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Board;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v1, v2, v3}, Lgithub/jhunrel25/tetris/Row;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 75
    iput v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 76
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/Row;->setAbove(Lgithub/jhunrel25/tetris/Row;)V

    .line 77
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/Row;->setBelow(Lgithub/jhunrel25/tetris/Row;)V

    .line 78
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearLines(I)I
    .locals 5
    .param p1, "dim"    # I

    .prologue
    const/4 v4, 0x0

    .line 188
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Board;->valid:Z

    .line 189
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 190
    .local v1, "clearPointer":Lgithub/jhunrel25/tetris/Row;
    const/4 v0, 0x0

    .line 191
    .local v0, "clearCounter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 198
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    iput-object v3, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 199
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 200
    return v0

    .line 192
    :cond_0
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->isFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 194
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Board;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v3, v3, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/components/GameState;->getAutoDropInterval()I

    move-result v3

    invoke-virtual {v1, p0, v3}, Lgithub/jhunrel25/tetris/Row;->clear(Lgithub/jhunrel25/tetris/components/Board;I)V

    .line 196
    :cond_1
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public cycle(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 175
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    if-nez v1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BlockBoard was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    if-lt v0, v1, :cond_2

    .line 185
    :cond_1
    return-void

    .line 180
    :cond_2
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1, p1, p2, p0}, Lgithub/jhunrel25/tetris/Row;->cycle(JLgithub/jhunrel25/tetris/components/Board;)V

    .line 181
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    .line 182
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    if-eqz v1, :cond_1

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public draw(IIILandroid/graphics/Canvas;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "squareSize"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BlockBoard was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    iget-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Board;->valid:Z

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->blockMap:Landroid/graphics/Bitmap;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {p4, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    :goto_0
    return-void

    .line 93
    :cond_1
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Board;->width:I

    mul-int/2addr v1, p3

    iget v2, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    mul-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->blockMap:Landroid/graphics/Bitmap;

    .line 94
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->blockMap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->blockVas:Landroid/graphics/Canvas;

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Board;->valid:Z

    .line 96
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    if-lt v0, v1, :cond_2

    .line 103
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->blockMap:Landroid/graphics/Bitmap;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {p4, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    const/4 v2, 0x0

    mul-int v3, v0, p3

    add-int/lit8 v3, v3, 0x0

    iget-object v4, p0, Lgithub/jhunrel25/tetris/components/Board;->blockVas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2, v3, p3, v4}, Lgithub/jhunrel25/tetris/Row;->draw(IIILandroid/graphics/Canvas;)V

    .line 100
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->below()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->tempRow:Lgithub/jhunrel25/tetris/Row;

    .line 97
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public finishClear(Lgithub/jhunrel25/tetris/Row;)V
    .locals 1
    .param p1, "row"    # Lgithub/jhunrel25/tetris/Row;

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Board;->valid:Z

    .line 209
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    .line 210
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 211
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 212
    return-void
.end method

.method public get(II)Lgithub/jhunrel25/tetris/Square;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 115
    if-gez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Board;->width:I

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    .line 119
    if-ltz p2, :cond_0

    .line 121
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_0

    .line 123
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    if-ne v1, p2, :cond_2

    .line 124
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v0, p1}, Lgithub/jhunrel25/tetris/Row;->get(I)Lgithub/jhunrel25/tetris/Square;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_2
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    if-ge v1, p2, :cond_3

    .line 126
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->below()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/Row;->below()Lgithub/jhunrel25/tetris/Row;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 130
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 131
    invoke-virtual {p0, p1, p2}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_3
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 138
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 139
    invoke-virtual {p0, p1, p2}, Lgithub/jhunrel25/tetris/components/Board;->get(II)Lgithub/jhunrel25/tetris/Square;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentRow()Lgithub/jhunrel25/tetris/Row;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    return-object v0
.end method

.method public getCurrentRowIndex()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    return v0
.end method

.method public getTopRow()Lgithub/jhunrel25/tetris/Row;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->width:I

    return v0
.end method

.method public interruptClearAnimation()V
    .locals 4

    .prologue
    .line 216
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    if-nez v2, :cond_0

    .line 217
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "BlockBoard was not initialized!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_0
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    .line 220
    .local v1, "interator":Lgithub/jhunrel25/tetris/Row;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    if-lt v0, v2, :cond_2

    .line 230
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v2, v2, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 231
    :cond_1
    return-void

    .line 221
    :cond_2
    invoke-virtual {v1, p0}, Lgithub/jhunrel25/tetris/Row;->interrupt(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Board;->topRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    .line 223
    const/4 v0, 0x0

    .line 224
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgithub/jhunrel25/tetris/components/Board;->valid:Z

    .line 227
    :goto_1
    if-eqz v1, :cond_1

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v1

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Board;->valid:Z

    .line 235
    return-void
.end method

.method public popupScore(J)V
    .locals 0
    .param p1, "addScore"    # J

    .prologue
    .line 239
    return-void
.end method

.method public set(IILgithub/jhunrel25/tetris/Square;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "square"    # Lgithub/jhunrel25/tetris/Square;

    .prologue
    .line 145
    if-gez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->width:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 149
    if-ltz p2, :cond_0

    .line 151
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->height:I

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_0

    .line 153
    if-eqz p3, :cond_0

    .line 155
    invoke-virtual {p3}, Lgithub/jhunrel25/tetris/Square;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Board;->valid:Z

    .line 160
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    if-ne v0, p2, :cond_2

    .line 161
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v0, p3, p1}, Lgithub/jhunrel25/tetris/Row;->set(Lgithub/jhunrel25/tetris/Square;I)V

    goto :goto_0

    .line 162
    :cond_2
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    if-ge v0, p2, :cond_3

    .line 163
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/Row;->below()Lgithub/jhunrel25/tetris/Row;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 164
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lgithub/jhunrel25/tetris/components/Board;->set(IILgithub/jhunrel25/tetris/Square;)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/Row;->above()Lgithub/jhunrel25/tetris/Row;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 168
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lgithub/jhunrel25/tetris/components/Board;->set(IILgithub/jhunrel25/tetris/Square;)V

    goto :goto_0
.end method

.method public setCurrentRow(Lgithub/jhunrel25/tetris/Row;)V
    .locals 0
    .param p1, "row"    # Lgithub/jhunrel25/tetris/Row;

    .prologue
    .line 254
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentRow:Lgithub/jhunrel25/tetris/Row;

    .line 255
    return-void
.end method

.method public setCurrentRowIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 250
    iput p1, p0, Lgithub/jhunrel25/tetris/components/Board;->currentIndex:I

    .line 251
    return-void
.end method
