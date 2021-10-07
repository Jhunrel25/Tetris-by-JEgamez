.class public Lgithub/jhunrel25/tetris/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# static fields
.field public static final animationStageBurst:I = 0x2

.field public static final animationStageFlash:I = 0x1

.field public static final animationStageIdle:I


# instance fields
.field private bitmapRow:Landroid/graphics/Bitmap;

.field private drawEnable:Z

.field private flashCount:I

.field private flashFinishTime:J

.field private flashInterval:J

.field private nextFlash:J

.field private rawFlashInterval:I

.field private row:Lgithub/jhunrel25/tetris/Row;

.field private squareSize:I

.field private stage:I

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgithub/jhunrel25/tetris/Row;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "r"    # Lgithub/jhunrel25/tetris/Row;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/Animator;->rawFlashInterval:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/Animator;->flashCount:I

    .line 73
    iput v4, p0, Lgithub/jhunrel25/tetris/Animator;->stage:I

    .line 74
    iput-object p2, p0, Lgithub/jhunrel25/tetris/Animator;->row:Lgithub/jhunrel25/tetris/Row;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/Animator;->drawEnable:Z

    .line 76
    iput-wide v2, p0, Lgithub/jhunrel25/tetris/Animator;->startTime:J

    .line 77
    iput-wide v2, p0, Lgithub/jhunrel25/tetris/Animator;->flashFinishTime:J

    .line 78
    iput-wide v2, p0, Lgithub/jhunrel25/tetris/Animator;->nextFlash:J

    .line 79
    iput-wide v2, p0, Lgithub/jhunrel25/tetris/Animator;->flashInterval:J

    .line 80
    iput v4, p0, Lgithub/jhunrel25/tetris/Animator;->squareSize:I

    .line 81
    return-void
.end method


# virtual methods
.method public cancelBurst()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public cycle(JLgithub/jhunrel25/tetris/components/Board;)V
    .locals 4
    .param p1, "time"    # J
    .param p3, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 84
    iget v0, p0, Lgithub/jhunrel25/tetris/Animator;->stage:I

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->flashFinishTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 88
    invoke-virtual {p0, p3}, Lgithub/jhunrel25/tetris/Animator;->finish(Lgithub/jhunrel25/tetris/components/Board;)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->nextFlash:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 90
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->nextFlash:J

    iget-wide v2, p0, Lgithub/jhunrel25/tetris/Animator;->flashInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->nextFlash:J

    .line 91
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/Animator;->drawEnable:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/Animator;->drawEnable:Z

    .line 92
    invoke-virtual {p3}, Lgithub/jhunrel25/tetris/components/Board;->invalidate()V

    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public draw(IIILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ss"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 124
    iput p3, p0, Lgithub/jhunrel25/tetris/Animator;->squareSize:I

    .line 125
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/Animator;->drawEnable:Z

    if-eqz v0, :cond_1

    .line 126
    iget v0, p0, Lgithub/jhunrel25/tetris/Animator;->stage:I

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Animator;->row:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v0, p3}, Lgithub/jhunrel25/tetris/Row;->drawBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/Animator;->bitmapRow:Landroid/graphics/Bitmap;

    .line 129
    :cond_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Animator;->bitmapRow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Animator;->bitmapRow:Landroid/graphics/Bitmap;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    :cond_1
    return-void
.end method

.method public finish(Lgithub/jhunrel25/tetris/components/Board;)Z
    .locals 3
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    iget v2, p0, Lgithub/jhunrel25/tetris/Animator;->stage:I

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    iput v0, p0, Lgithub/jhunrel25/tetris/Animator;->stage:I

    .line 114
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Animator;->row:Lgithub/jhunrel25/tetris/Row;

    invoke-virtual {v0, p1}, Lgithub/jhunrel25/tetris/Row;->finishClear(Lgithub/jhunrel25/tetris/components/Board;)V

    .line 115
    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/Animator;->drawEnable:Z

    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public start(Lgithub/jhunrel25/tetris/components/Board;I)V
    .locals 6
    .param p1, "board"    # Lgithub/jhunrel25/tetris/components/Board;
    .param p2, "currentDropInterval"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Animator;->row:Lgithub/jhunrel25/tetris/Row;

    iget v1, p0, Lgithub/jhunrel25/tetris/Animator;->squareSize:I

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/Row;->drawBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/Animator;->bitmapRow:Landroid/graphics/Bitmap;

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/Animator;->stage:I

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->startTime:J

    .line 101
    iget v0, p0, Lgithub/jhunrel25/tetris/Animator;->rawFlashInterval:I

    .line 102
    int-to-float v1, p2

    iget v2, p0, Lgithub/jhunrel25/tetris/Animator;->flashCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->flashInterval:J

    .line 104
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->startTime:J

    const-wide/16 v2, 0x2

    iget-wide v4, p0, Lgithub/jhunrel25/tetris/Animator;->flashInterval:J

    mul-long/2addr v2, v4

    iget v4, p0, Lgithub/jhunrel25/tetris/Animator;->flashCount:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->flashFinishTime:J

    .line 105
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->startTime:J

    iget-wide v2, p0, Lgithub/jhunrel25/tetris/Animator;->flashInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/Animator;->nextFlash:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/Animator;->drawEnable:Z

    .line 107
    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/components/Board;->invalidate()V

    .line 108
    return-void
.end method

.method public startBurst()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public startFlash()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
