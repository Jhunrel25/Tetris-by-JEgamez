.class public Lgithub/jhunrel25/tetris/activities/MainActivity;
.super Landroid/app/ListActivity;
.source "MainActivity.java"


# static fields
.field public static final PLAYERNAME_KEY:Ljava/lang/String; = "github.jhunrel25.tetris.activities.playername"

.field public static final SCORE_KEY:Ljava/lang/String; = "github.jhunrel25.tetris.activities.score"

.field public static final SCORE_REQUEST:I


# instance fields
.field private adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field public datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

.field private dialogView:Landroid/view/View;

.field private donateDialog:Landroid/app/AlertDialog$Builder;

.field private leveldialogBar:Landroid/widget/SeekBar;

.field private leveldialogtext:Landroid/widget/TextView;

.field private sound:Lgithub/jhunrel25/tetris/components/Sound;

.field private startLevel:I

.field private startLevelDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lgithub/jhunrel25/tetris/activities/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->leveldialogtext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lgithub/jhunrel25/tetris/activities/MainActivity;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevel:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 200
    if-eqz p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 205
    const-string v3, "github.jhunrel25.tetris.activities.playername"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "playerName":Ljava/lang/String;
    const-string v3, "github.jhunrel25.tetris.activities.score"

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 208
    .local v1, "score":J
    iget-object v3, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->open()V

    .line 209
    iget-object v3, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-virtual {v3, v1, v2, v0}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->createScore(JLjava/lang/String;)Lgithub/jhunrel25/tetris/db/Score;

    goto :goto_0
.end method

.method public onClickResume(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 241
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string v3, "playername"

    const v2, 0x7f0d0019

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 246
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lgithub/jhunrel25/tetris/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    return-void
.end method

.method public onClickStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 214
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->dialogView:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->dialogView:Landroid/view/View;

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->leveldialogtext:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->dialogView:Landroid/view/View;

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->leveldialogBar:Landroid/widget/SeekBar;

    .line 217
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->leveldialogBar:Landroid/widget/SeekBar;

    new-instance v1, Lgithub/jhunrel25/tetris/activities/MainActivity$5;

    invoke-direct {v1, p0}, Lgithub/jhunrel25/tetris/activities/MainActivity$5;-><init>(Lgithub/jhunrel25/tetris/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 234
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->leveldialogBar:Landroid/widget/SeekBar;

    iget v1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 235
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->leveldialogtext:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevelDialog:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->dialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 237
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevelDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 238
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0a000e

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f040003

    invoke-static {p0, v0, v5}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 93
    const v0, 0x7f040001

    invoke-static {p0, v0, v5}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 96
    new-instance v0, Lgithub/jhunrel25/tetris/components/Sound;

    invoke-direct {v0, p0}, Lgithub/jhunrel25/tetris/components/Sound;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    .line 97
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0, v5, v7}, Lgithub/jhunrel25/tetris/components/Sound;->startMusic(II)V

    .line 101
    new-instance v0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-direct {v0, p0}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    .line 102
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->open()V

    .line 103
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 106
    .local v3, "mc":Landroid/database/Cursor;
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 108
    const v2, 0x7f030002

    .line 110
    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "score"

    aput-object v1, v4, v7

    const-string v1, "playername"

    aput-object v1, v4, v5

    .line 111
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 112
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 106
    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 113
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iput v7, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevel:I

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevelDialog:Landroid/app/AlertDialog$Builder;

    .line 118
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevelDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 119
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevelDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 120
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevelDialog:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lgithub/jhunrel25/tetris/activities/MainActivity$1;

    invoke-direct {v1, p0}, Lgithub/jhunrel25/tetris/activities/MainActivity$1;-><init>(Lgithub/jhunrel25/tetris/activities/MainActivity;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevelDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a000f

    new-instance v2, Lgithub/jhunrel25/tetris/activities/MainActivity$2;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/MainActivity$2;-><init>(Lgithub/jhunrel25/tetris/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->donateDialog:Landroid/app/AlertDialog$Builder;

    .line 135
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->donateDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 136
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->donateDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 137
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->donateDialog:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lgithub/jhunrel25/tetris/activities/MainActivity$3;

    invoke-direct {v1, p0}, Lgithub/jhunrel25/tetris/activities/MainActivity$3;-><init>(Lgithub/jhunrel25/tetris/activities/MainActivity;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->donateDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0054

    new-instance v2, Lgithub/jhunrel25/tetris/activities/MainActivity$4;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/MainActivity$4;-><init>(Lgithub/jhunrel25/tetris/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    return-void

    .line 111
    :array_0
    .array-data 4
        0x7f0d0020
        0x7f0d0021
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 157
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 267
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->release()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    .line 269
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->close()V

    .line 270
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 184
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 165
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lgithub/jhunrel25/tetris/activities/SettingsActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lgithub/jhunrel25/tetris/activities/AboutActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lgithub/jhunrel25/tetris/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    .end local v1    # "intent1":Landroid/content/Intent;
    :pswitch_2
    iget-object v4, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->donateDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 176
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lgithub/jhunrel25/tetris/activities/HelpActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v2, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    .end local v2    # "intent2":Landroid/content/Intent;
    :pswitch_4
    invoke-static {}, Lgithub/jhunrel25/tetris/components/GameState;->destroy()V

    .line 181
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->finish()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d002d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 252
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->pause()V

    .line 253
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/components/Sound;->setInactive(Z)V

    .line 254
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f0d001b

    .line 274
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 275
    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/components/Sound;->setInactive(Z)V

    .line 276
    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Sound;->resume()V

    .line 277
    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->open()V

    .line 278
    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 279
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 281
    invoke-static {}, Lgithub/jhunrel25/tetris/components/GameState;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p0, v3}, Lgithub/jhunrel25/tetris/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    invoke-virtual {p0, v3}, Lgithub/jhunrel25/tetris/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0, v3}, Lgithub/jhunrel25/tetris/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    invoke-virtual {p0, v3}, Lgithub/jhunrel25/tetris/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 259
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->pause()V

    .line 260
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/components/Sound;->setInactive(Z)V

    .line 261
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->datasource:Lgithub/jhunrel25/tetris/db/ScoreDataSource;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->close()V

    .line 262
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v2, "level"

    iget v3, p0, Lgithub/jhunrel25/tetris/activities/MainActivity;->startLevel:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v3, "playername"

    const v2, 0x7f0d0019

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v1, v4}, Lgithub/jhunrel25/tetris/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method
