.class Lgithub/jhunrel25/tetris/activities/GameActivity$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/jhunrel25/tetris/activities/GameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/jhunrel25/tetris/activities/GameActivity;


# direct methods
.method constructor <init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/GameActivity$1;->this$0:Lgithub/jhunrel25/tetris/activities/GameActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity$1;->this$0:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->finish()V

    .line 121
    return-void
.end method
