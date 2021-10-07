.class public Lgithub/jhunrel25/tetris/PieceGenerator;
.super Ljava/lang/Object;
.source "PieceGenerator.java"


# static fields
.field public static final STRAT_7BAG:I = 0x1

.field public static final STRAT_RANDOM:I


# instance fields
.field bag:[I

.field bagPointer:I

.field private rndgen:Ljava/util/Random;

.field strategy:I


# direct methods
.method public constructor <init>(I)V
    .locals 7
    .param p1, "strat"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v6, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v3, v4, [I

    iput-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 57
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->rndgen:Ljava/util/Random;

    .line 58
    if-nez p1, :cond_1

    .line 59
    iput v6, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->strategy:I

    .line 64
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x6

    if-lt v1, v3, :cond_2

    .line 68
    iput v6, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bagPointer:I

    .line 69
    return-void

    .line 55
    :cond_0
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    aput v1, v3, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v3, 0x1

    iput v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->strategy:I

    goto :goto_1

    .line 65
    :cond_2
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->rndgen:Ljava/util/Random;

    rsub-int/lit8 v4, v1, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 66
    .local v0, "c":I
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    aget v2, v3, v1

    .local v2, "t":I
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    iget-object v4, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    add-int v5, v1, v0

    aget v4, v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    add-int v4, v1, v0

    aput v2, v3, v4

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public next()I
    .locals 6

    .prologue
    const/4 v4, 0x7

    .line 72
    iget v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->strategy:I

    if-nez v3, :cond_0

    .line 73
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->rndgen:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 85
    :goto_0
    return v3

    .line 75
    :cond_0
    iget v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bagPointer:I

    if-ge v3, v4, :cond_1

    .line 76
    iget v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bagPointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bagPointer:I

    .line 77
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    iget v4, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bagPointer:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    goto :goto_0

    .line 80
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x6

    if-lt v1, v3, :cond_2

    .line 84
    const/4 v3, 0x1

    iput v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bagPointer:I

    .line 85
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    iget v4, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bagPointer:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    goto :goto_0

    .line 81
    :cond_2
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->rndgen:Ljava/util/Random;

    rsub-int/lit8 v4, v1, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 82
    .local v0, "c":I
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    aget v2, v3, v1

    .local v2, "t":I
    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    iget-object v4, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    add-int v5, v1, v0

    aget v4, v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lgithub/jhunrel25/tetris/PieceGenerator;->bag:[I

    add-int v4, v1, v0

    aput v2, v3, v4

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
