.class public Lgithub/jhunrel25/tetris/pieces/OPiece;
.super Lgithub/jhunrel25/tetris/pieces/Piece4x4;
.source "OPiece.java"


# instance fields
.field private oSquare:Lgithub/jhunrel25/tetris/Square;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lgithub/jhunrel25/tetris/Square;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lgithub/jhunrel25/tetris/Square;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    .line 51
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v2

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v2

    .line 52
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v2

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v3

    .line 53
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v2

    .line 54
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v3

    .line 55
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/OPiece;->reDraw()V

    .line 56
    return-void
.end method


# virtual methods
.method public reset(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 60
    invoke-super {p0, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reset(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v2

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v2

    .line 62
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v2

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v3

    .line 63
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v2

    .line 64
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/OPiece;->oSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v3

    .line 65
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/OPiece;->reDraw()V

    .line 66
    return-void
.end method
