.class Lgithub/jhunrel25/tetris/components/Sound$3;
.super Landroid/content/BroadcastReceiver;
.source "Sound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/jhunrel25/tetris/components/Sound;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/jhunrel25/tetris/components/Sound;


# direct methods
.method constructor <init>(Lgithub/jhunrel25/tetris/components/Sound;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Sound$3;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    .line 123
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound$3;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound$3;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Sound;->getSongtime()I

    move-result v1

    invoke-static {v0, v1}, Lgithub/jhunrel25/tetris/components/Sound;->access$2(Lgithub/jhunrel25/tetris/components/Sound;I)V

    .line 127
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound$3;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->pauseMusic()V

    .line 128
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound$3;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound$3;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-static {v1}, Lgithub/jhunrel25/tetris/components/Sound;->access$0(Lgithub/jhunrel25/tetris/components/Sound;)I

    move-result v1

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound$3;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-static {v2}, Lgithub/jhunrel25/tetris/components/Sound;->access$1(Lgithub/jhunrel25/tetris/components/Sound;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgithub/jhunrel25/tetris/components/Sound;->startMusic(II)V

    .line 129
    return-void
.end method
