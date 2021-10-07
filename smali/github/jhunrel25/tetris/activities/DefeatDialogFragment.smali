.class public Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DefeatDialogFragment.java"


# instance fields
.field private apmString:Ljava/lang/CharSequence;

.field private score:J

.field private scoreString:Ljava/lang/CharSequence;

.field private timeString:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 57
    const-string v0, "unknown"

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->scoreString:Ljava/lang/CharSequence;

    .line 58
    const-string v0, "unknown"

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->timeString:Ljava/lang/CharSequence;

    .line 59
    const-string v0, "unknown"

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->apmString:Ljava/lang/CharSequence;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->score:J

    return-wide v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->scoreString:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->timeString:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->apmString:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    const v1, 0x7f0a0018

    new-instance v2, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment$1;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment$1;-><init>(Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setData(JLjava/lang/String;I)V
    .locals 1
    .param p1, "scoreArg"    # J
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "apm"    # I

    .prologue
    .line 63
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->scoreString:Ljava/lang/CharSequence;

    .line 64
    iput-object p3, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->timeString:Ljava/lang/CharSequence;

    .line 65
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->apmString:Ljava/lang/CharSequence;

    .line 66
    iput-wide p1, p0, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->score:J

    .line 67
    return-void
.end method
