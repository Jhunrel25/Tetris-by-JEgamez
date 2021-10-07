.class Lgithub/jhunrel25/tetris/activities/HelpActivity$5;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/jhunrel25/tetris/activities/HelpActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/jhunrel25/tetris/activities/HelpActivity;


# direct methods
.method constructor <init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity$5;->this$0:Lgithub/jhunrel25/tetris/activities/HelpActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 95
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity$5;->this$0:Lgithub/jhunrel25/tetris/activities/HelpActivity;

    invoke-static {v0}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->access$0(Lgithub/jhunrel25/tetris/activities/HelpActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity$5;->this$0:Lgithub/jhunrel25/tetris/activities/HelpActivity;

    invoke-static {v0}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->access$0(Lgithub/jhunrel25/tetris/activities/HelpActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 97
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity$5;->this$0:Lgithub/jhunrel25/tetris/activities/HelpActivity;

    invoke-static {v0}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->access$0(Lgithub/jhunrel25/tetris/activities/HelpActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 98
    const/4 v0, 0x1

    return v0
.end method
