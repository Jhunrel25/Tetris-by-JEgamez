.class Lgithub/jhunrel25/tetris/components/Sound$2;
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
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Sound$2;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    .line 97
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 116
    .end local v0    # "state":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 110
    .restart local v0    # "state":I
    :pswitch_1
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound$2;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound$2;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-static {v2}, Lgithub/jhunrel25/tetris/components/Sound;->access$0(Lgithub/jhunrel25/tetris/components/Sound;)I

    move-result v2

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound$2;->this$0:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-static {v3}, Lgithub/jhunrel25/tetris/components/Sound;->access$1(Lgithub/jhunrel25/tetris/components/Sound;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lgithub/jhunrel25/tetris/components/Sound;->startMusic(II)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
