.class Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment$1;
.super Ljava/lang/Object;
.source "DefeatDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;


# direct methods
.method constructor <init>(Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment$1;->this$0:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment$1;->this$0:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment$1;->this$0:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

    invoke-static {v1}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->access$0(Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->putScore(J)V

    .line 87
    return-void
.end method
