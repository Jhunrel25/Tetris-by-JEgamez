.class Lgithub/jhunrel25/tetris/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/jhunrel25/tetris/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity$4;->this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 146
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/MainActivity$4;->this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 149
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/MainActivity$4;->this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;

    invoke-virtual {v2, v0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
