.class public Lgithub/jhunrel25/tetris/pieces/IPiece;
.super Lgithub/jhunrel25/tetris/pieces/Piece4x4;
.source "IPiece.java"


# instance fields
.field private iSquare:Lgithub/jhunrel25/tetris/Square;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 49
    invoke-direct {p0, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lgithub/jhunrel25/tetris/Square;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lgithub/jhunrel25/tetris/Square;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    .line 51
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    const/4 v1, 0x0

    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v2, v0, v1

    .line 52
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v2, v0, v1

    .line 53
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v3

    .line 54
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v2, v0, v1

    .line 55
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/IPiece;->reDraw()V

    .line 56
    return-void
.end method


# virtual methods
.method public reset(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 60
    invoke-super {p0, p1}, Lgithub/jhunrel25/tetris/pieces/Piece4x4;->reset(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    const/4 v1, 0x0

    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v2, v0, v1

    .line 62
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v2, v0, v1

    .line 63
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    iget-object v1, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v1, v0, v3

    .line 64
    iget-object v0, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->pattern:[[Lgithub/jhunrel25/tetris/Square;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    iget-object v2, p0, Lgithub/jhunrel25/tetris/pieces/IPiece;->iSquare:Lgithub/jhunrel25/tetris/Square;

    aput-object v2, v0, v1

    .line 65
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/pieces/IPiece;->reDraw()V

    .line 66
    return-void
.end method
