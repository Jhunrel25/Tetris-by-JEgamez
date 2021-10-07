.class Lgithub/jhunrel25/tetris/activities/GameActivity$7;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/GameActivity$7;->this$0:Lgithub/jhunrel25/tetris/activities/GameActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v1, 0x7f0d000c

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity$7;->this$0:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->controls:Lgithub/jhunrel25/tetris/components/Controls;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Controls;->rotateLeftPressed()V

    .line 193
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity$7;->this$0:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 195
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity$7;->this$0:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->controls:Lgithub/jhunrel25/tetris/components/Controls;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Controls;->rotateLeftReleased()V

    .line 196
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity$7;->this$0:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    goto :goto_0
.end method
