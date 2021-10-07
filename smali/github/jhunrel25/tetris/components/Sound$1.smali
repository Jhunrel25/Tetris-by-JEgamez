.class Lgithub/jhunrel25/tetris/components/Sound$1;
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
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Sound$1;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    .line 88
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound$1;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->pauseMusic()V

    .line 91
    return-void
.end method
