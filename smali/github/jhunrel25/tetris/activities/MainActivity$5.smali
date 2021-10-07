.class Lgithub/jhunrel25/tetris/activities/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/jhunrel25/tetris/activities/MainActivity;->onClickStart(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;


# direct methods
.method constructor <init>(Lgithub/jhunrel25/tetris/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity$5;->this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity$5;->this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;

    invoke-static {v0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->access$0(Lgithub/jhunrel25/tetris/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity$5;->this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;

    invoke-static {v0, p2}, Lgithub/jhunrel25/tetris/activities/MainActivity;->access$1(Lgithub/jhunrel25/tetris/activities/MainActivity;I)V

    .line 223
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 227
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 231
    return-void
.end method
