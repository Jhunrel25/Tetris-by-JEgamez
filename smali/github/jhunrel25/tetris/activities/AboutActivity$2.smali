.class Lgithub/jhunrel25/tetris/activities/AboutActivity$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/jhunrel25/tetris/activities/AboutActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/jhunrel25/tetris/activities/AboutActivity;


# direct methods
.method constructor <init>(Lgithub/jhunrel25/tetris/activities/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/AboutActivity$2;->this$0:Lgithub/jhunrel25/tetris/activities/AboutActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 90
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/AboutActivity$2;->this$0:Lgithub/jhunrel25/tetris/activities/AboutActivity;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/AboutActivity$2;->this$0:Lgithub/jhunrel25/tetris/activities/AboutActivity;

    invoke-virtual {v2, v0}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    const/4 v2, 0x1

    return v2
.end method
