.class Lgithub/jhunrel25/tetris/activities/AboutActivity$4;
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
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/AboutActivity$4;->this$0:Lgithub/jhunrel25/tetris/activities/AboutActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lgithub/jhunrel25/tetris/activities/AboutActivity$4;->this$0:Lgithub/jhunrel25/tetris/activities/AboutActivity;

    invoke-virtual {v4}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/AboutActivity$4;->this$0:Lgithub/jhunrel25/tetris/activities/AboutActivity;

    const-string v2, "Send email..."

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return v6
.end method
