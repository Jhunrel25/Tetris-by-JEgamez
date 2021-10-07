.class Lgithub/jhunrel25/tetris/activities/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity$1;->this$0:Lgithub/jhunrel25/tetris/activities/HelpActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    return-void
.end method
