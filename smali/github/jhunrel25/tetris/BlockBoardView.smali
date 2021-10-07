.class public Lgithub/jhunrel25/tetris/BlockBoardView;
.super Landroid/view/SurfaceView;
.source "BlockBoardView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private host:Lgithub/jhunrel25/tetris/activities/GameActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgithub/jhunrel25/tetris/BlockBoardView;->setZOrderOnTop(Z)V

    .line 72
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/BlockBoardView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 73
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/BlockBoardView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 74
    return-void
.end method

.method public setHost(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 0
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lgithub/jhunrel25/tetris/BlockBoardView;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    .line 68
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 79
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 83
    iget-object v0, p0, Lgithub/jhunrel25/tetris/BlockBoardView;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0, p0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->startGame(Lgithub/jhunrel25/tetris/BlockBoardView;)V

    .line 84
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 88
    iget-object v0, p0, Lgithub/jhunrel25/tetris/BlockBoardView;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->destroyWorkThread()V

    .line 89
    return-void
.end method
