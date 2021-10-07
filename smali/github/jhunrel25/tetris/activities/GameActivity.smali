.class public Lgithub/jhunrel25/tetris/activities/GameActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GameActivity.java"


# static fields
.field public static final NEW_GAME:I = 0x0

.field public static final RESUME_GAME:I = 0x1


# instance fields
.field public controls:Lgithub/jhunrel25/tetris/components/Controls;

.field private dialog:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

.field public display:Lgithub/jhunrel25/tetris/components/Display;

.field public game:Lgithub/jhunrel25/tetris/components/GameState;

.field private mainThread:Lgithub/jhunrel25/tetris/WorkThread;

.field public sound:Lgithub/jhunrel25/tetris/components/Sound;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyWorkThread()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x1

    .line 223
    .local v0, "retry":Z
    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->mainThread:Lgithub/jhunrel25/tetris/WorkThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/WorkThread;->setRunning(Z)V

    .line 224
    :goto_0
    if-nez v0, :cond_0

    .line 232
    return-void

    .line 226
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->mainThread:Lgithub/jhunrel25/tetris/WorkThread;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/WorkThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public gameOver(JLjava/lang/String;I)V
    .locals 3
    .param p1, "score"    # J
    .param p3, "gameTime"    # Ljava/lang/String;
    .param p4, "apm"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->dialog:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->setData(JLjava/lang/String;I)V

    .line 288
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->dialog:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "hamster"

    invoke-virtual {v0, v1, v2}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0d0009

    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->requestWindowFeature(I)Z

    .line 77
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 84
    .local v1, "value":I
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgithub/jhunrel25/tetris/components/GameState;

    iput-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    .line 85
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    if-nez v2, :cond_1

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 90
    :cond_0
    if-nez v1, :cond_5

    .line 91
    invoke-static {p0}, Lgithub/jhunrel25/tetris/components/GameState;->getNewInstance(Lgithub/jhunrel25/tetris/activities/GameActivity;)Lgithub/jhunrel25/tetris/components/GameState;

    move-result-object v2

    iput-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    .line 92
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    const-string v3, "level"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setLevel(I)V

    .line 96
    :cond_1
    :goto_0
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v2, p0}, Lgithub/jhunrel25/tetris/components/GameState;->reconnect(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 97
    new-instance v2, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

    invoke-direct {v2}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;-><init>()V

    iput-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->dialog:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

    .line 98
    new-instance v2, Lgithub/jhunrel25/tetris/components/Controls;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/components/Controls;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    iput-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->controls:Lgithub/jhunrel25/tetris/components/Controls;

    .line 99
    new-instance v2, Lgithub/jhunrel25/tetris/components/Display;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/components/Display;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    iput-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    .line 100
    new-instance v2, Lgithub/jhunrel25/tetris/components/Sound;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/components/Sound;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    .line 103
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/components/GameState;->isResumable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    const/4 v3, 0x2

    iget-object v4, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v4}, Lgithub/jhunrel25/tetris/components/GameState;->getSongtime()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgithub/jhunrel25/tetris/components/Sound;->startMusic(II)V

    .line 105
    :cond_2
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/components/Sound;->loadEffects()V

    .line 106
    if-eqz v0, :cond_6

    .line 107
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    const-string v2, "playername"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 109
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    const-string v3, "playername"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setPlayerName(Ljava/lang/String;)V

    .line 112
    :cond_3
    :goto_1
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->dialog:Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgithub/jhunrel25/tetris/activities/DefeatDialogFragment;->setCancelable(Z)V

    .line 113
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/components/GameState;->isResumable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/components/GameState;->getScore()J

    move-result-wide v2

    iget-object v4, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v4}, Lgithub/jhunrel25/tetris/components/GameState;->getTimeString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v5}, Lgithub/jhunrel25/tetris/components/GameState;->getAPM()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lgithub/jhunrel25/tetris/activities/GameActivity;->gameOver(JLjava/lang/String;I)V

    .line 117
    :cond_4
    const v2, 0x7f0d0012

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lgithub/jhunrel25/tetris/activities/GameActivity$1;

    invoke-direct {v3, p0}, Lgithub/jhunrel25/tetris/activities/GameActivity$1;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lgithub/jhunrel25/tetris/activities/GameActivity$2;

    invoke-direct {v3, p0}, Lgithub/jhunrel25/tetris/activities/GameActivity$2;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    const v2, 0x7f0d0002

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lgithub/jhunrel25/tetris/activities/GameActivity$3;

    invoke-direct {v3, p0}, Lgithub/jhunrel25/tetris/activities/GameActivity$3;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    const v2, 0x7f0d0006

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lgithub/jhunrel25/tetris/activities/GameActivity$4;

    invoke-direct {v3, p0}, Lgithub/jhunrel25/tetris/activities/GameActivity$4;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    const v2, 0x7f0d0010

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lgithub/jhunrel25/tetris/activities/GameActivity$5;

    invoke-direct {v3, p0}, Lgithub/jhunrel25/tetris/activities/GameActivity$5;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    const v2, 0x7f0d000e

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lgithub/jhunrel25/tetris/activities/GameActivity$6;

    invoke-direct {v3, p0}, Lgithub/jhunrel25/tetris/activities/GameActivity$6;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    const v2, 0x7f0d000c

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lgithub/jhunrel25/tetris/activities/GameActivity$7;

    invoke-direct {v3, p0}, Lgithub/jhunrel25/tetris/activities/GameActivity$7;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    invoke-virtual {p0, v6}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lgithub/jhunrel25/tetris/BlockBoardView;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/BlockBoardView;->init()V

    .line 203
    invoke-virtual {p0, v6}, Lgithub/jhunrel25/tetris/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lgithub/jhunrel25/tetris/BlockBoardView;

    invoke-virtual {v2, p0}, Lgithub/jhunrel25/tetris/BlockBoardView;->setHost(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 204
    return-void

    .line 94
    :cond_5
    invoke-static {p0}, Lgithub/jhunrel25/tetris/components/GameState;->getInstance(Lgithub/jhunrel25/tetris/activities/GameActivity;)Lgithub/jhunrel25/tetris/components/GameState;

    move-result-object v2

    iput-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    goto/16 :goto_0

    .line 111
    :cond_6
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setPlayerName(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 268
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Sound;->getSongtime()I

    move-result v1

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/components/GameState;->setSongtime(I)V

    .line 269
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->release()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    .line 271
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->disconnect()V

    .line 272
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 254
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->pause()V

    .line 255
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/components/Sound;->setInactive(Z)V

    .line 256
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 277
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->resume()V

    .line 278
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/components/Sound;->setInactive(Z)V

    .line 279
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    return-object v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 261
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->pause()V

    .line 262
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/components/Sound;->setInactive(Z)V

    .line 263
    return-void
.end method

.method public putScore(J)V
    .locals 4
    .param p1, "score"    # J

    .prologue
    .line 239
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/components/GameState;->getPlayerName()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "playerName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "github.jhunrel25.tetris.activities.playername"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v2, "github.jhunrel25.tetris.activities.score"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 246
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->finish()V

    .line 249
    return-void
.end method

.method public startGame(Lgithub/jhunrel25/tetris/BlockBoardView;)V
    .locals 3
    .param p1, "caller"    # Lgithub/jhunrel25/tetris/BlockBoardView;

    .prologue
    const/4 v2, 0x1

    .line 211
    new-instance v0, Lgithub/jhunrel25/tetris/WorkThread;

    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/BlockBoardView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgithub/jhunrel25/tetris/WorkThread;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->mainThread:Lgithub/jhunrel25/tetris/WorkThread;

    .line 212
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->mainThread:Lgithub/jhunrel25/tetris/WorkThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/WorkThread;->setFirstTime(Z)V

    .line 213
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0, v2}, Lgithub/jhunrel25/tetris/components/GameState;->setRunning(Z)V

    .line 214
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->mainThread:Lgithub/jhunrel25/tetris/WorkThread;

    invoke-virtual {v0, v2}, Lgithub/jhunrel25/tetris/WorkThread;->setRunning(Z)V

    .line 215
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/GameActivity;->mainThread:Lgithub/jhunrel25/tetris/WorkThread;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/WorkThread;->start()V

    .line 216
    return-void
.end method
