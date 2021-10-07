.class public Lgithub/jhunrel25/tetris/components/Controls;
.super Lgithub/jhunrel25/tetris/components/Component;
.source "Controls.java"


# instance fields
.field private board:Lgithub/jhunrel25/tetris/components/Board;

.field private buttonVibrationEnabled:Z

.field private clearLeftMove:Z

.field private clearPlayerSoftDrop:Z

.field private clearRightMove:Z

.field private continuousLeftMove:Z

.field private continuousRightMove:Z

.field private continuousSoftDrop:Z

.field private eventVibrationEnabled:Z

.field private initialHIntervalFactor:I

.field private initialVIntervalFactor:I

.field private leftMove:Z

.field private leftRotation:Z

.field private lineThresholds:[I

.field private playerHardDrop:Z

.field private playerSoftDrop:Z

.field private rightMove:Z

.field private rightRotation:Z

.field private shortVibeTime:J

.field private v:Landroid/os/Vibrator;

.field private vibrationOffset:I


# direct methods
.method public constructor <init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 7
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0, p1}, Lgithub/jhunrel25/tetris/components/Component;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 83
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->lineThresholds:[I

    .line 84
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->shortVibeTime:J

    .line 86
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    .line 88
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_vibration_button"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->buttonVibrationEnabled:Z

    .line 89
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_vibration_events"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    .line 91
    :try_start_0
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_vibDurOffset"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_accelerationH"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iput v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->initialHIntervalFactor:I

    .line 99
    :goto_1
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_accelerationV"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iput v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->initialVIntervalFactor:I

    .line 103
    :goto_2
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->playerSoftDrop:Z

    .line 104
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftMove:Z

    .line 105
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightMove:Z

    .line 106
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftRotation:Z

    .line 107
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightRotation:Z

    .line 108
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearLeftMove:Z

    .line 109
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearRightMove:Z

    .line 110
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearPlayerSoftDrop:Z

    .line 111
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousSoftDrop:Z

    .line 112
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousLeftMove:Z

    .line 113
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousRightMove:Z

    .line 114
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/NumberFormatException;
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    iput v5, p0, Lgithub/jhunrel25/tetris/components/Controls;->initialHIntervalFactor:I

    goto :goto_1

    .line 102
    :cond_1
    iput v5, p0, Lgithub/jhunrel25/tetris/components/Controls;->initialVIntervalFactor:I

    goto :goto_2
.end method


# virtual methods
.method public cancelVibration()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 128
    return-void
.end method

.method public cycle(J)V
    .locals 13
    .param p1, "tempTime"    # J

    .prologue
    .line 236
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getTime()J

    move-result-wide v2

    .line 237
    .local v2, "gameTime":J
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getActivePiece()Lgithub/jhunrel25/tetris/pieces/Piece;

    move-result-object v0

    .line 238
    .local v0, "active":Lgithub/jhunrel25/tetris/pieces/Piece;
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v1

    .line 239
    .local v1, "board":Lgithub/jhunrel25/tetris/components/Board;
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getMaxLevel()I

    move-result v5

    .line 243
    .local v5, "maxLevel":I
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftRotation:Z

    if-eqz v6, :cond_0

    .line 244
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftRotation:Z

    .line 245
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->turnLeft(Lgithub/jhunrel25/tetris/components/Board;)Z

    .line 246
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 250
    :cond_0
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightRotation:Z

    if-eqz v6, :cond_1

    .line 251
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightRotation:Z

    .line 252
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->turnRight(Lgithub/jhunrel25/tetris/components/Board;)Z

    .line 253
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 257
    :cond_1
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftMove:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightMove:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousLeftMove:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousRightMove:Z

    if-nez v6, :cond_2

    .line 258
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6, v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    .line 261
    :cond_2
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftMove:Z

    if-eqz v6, :cond_8

    .line 262
    const/4 v6, 0x1

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousLeftMove:Z

    .line 263
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftMove:Z

    .line 264
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->moveLeft(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 265
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    .line 266
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 267
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerMoveTime()J

    move-result-wide v7

    iget v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->initialHIntervalFactor:I

    int-to-long v9, v9

    iget-object v11, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v11, v11, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/components/GameState;->getMoveInterval()J

    move-result-wide v11

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    .line 292
    :cond_3
    :goto_0
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightMove:Z

    if-eqz v6, :cond_c

    .line 293
    const/4 v6, 0x1

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousRightMove:Z

    .line 294
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightMove:Z

    .line 295
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->moveRight(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 296
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    .line 297
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 298
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerMoveTime()J

    move-result-wide v7

    iget v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->initialHIntervalFactor:I

    int-to-long v9, v9

    iget-object v11, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v11, v11, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/components/GameState;->getMoveInterval()J

    move-result-wide v11

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    .line 324
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->playerHardDrop:Z

    if-eqz v6, :cond_f

    .line 325
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Board;->interruptClearAnimation()V

    .line 326
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->hardDrop(ZLgithub/jhunrel25/tetris/components/Board;)I

    move-result v4

    .line 327
    .local v4, "hardDropDistance":I
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateBottom()V

    .line 328
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v4}, Lgithub/jhunrel25/tetris/components/GameState;->clearLines(ZI)V

    .line 329
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-boolean v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    invoke-virtual {v6, v7}, Lgithub/jhunrel25/tetris/components/GameState;->pieceTransition(Z)V

    .line 330
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Board;->invalidate()V

    .line 331
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->playerHardDrop:Z

    .line 333
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v6

    if-ge v6, v5, :cond_5

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getClearedLines()I

    move-result v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->lineThresholds:[I

    iget-object v8, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v8, v8, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v7, v7, v8

    if-le v6, v7, :cond_5

    .line 334
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->nextLevel()V

    .line 335
    :cond_5
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getAutoDropInterval()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextDropTime(J)V

    .line 336
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6, v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerDropTime(J)V

    .line 410
    .end local v4    # "hardDropDistance":I
    :cond_6
    :goto_2
    return-void

    .line 269
    :cond_7
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateWall()V

    .line 270
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6, v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    goto/16 :goto_0

    .line 273
    :cond_8
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousLeftMove:Z

    if-eqz v6, :cond_3

    .line 274
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerMoveTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_9

    .line 275
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->moveLeft(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 276
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    .line 277
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 278
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerMoveTime()J

    move-result-wide v7

    iget-object v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getMoveInterval()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    .line 285
    :cond_9
    :goto_3
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearLeftMove:Z

    if-eqz v6, :cond_3

    .line 286
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousLeftMove:Z

    .line 287
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearLeftMove:Z

    goto/16 :goto_0

    .line 280
    :cond_a
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateWall()V

    .line 281
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6, v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    goto :goto_3

    .line 300
    :cond_b
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateWall()V

    .line 301
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6, v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    goto/16 :goto_1

    .line 304
    :cond_c
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousRightMove:Z

    if-eqz v6, :cond_4

    .line 305
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerMoveTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_d

    .line 306
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->moveRight(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 307
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    .line 308
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 309
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerMoveTime()J

    move-result-wide v7

    iget-object v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getMoveInterval()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    .line 316
    :cond_d
    :goto_4
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearRightMove:Z

    if-eqz v6, :cond_4

    .line 317
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousRightMove:Z

    .line 318
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearRightMove:Z

    goto/16 :goto_1

    .line 311
    :cond_e
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateWall()V

    .line 312
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6, v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    goto :goto_4

    .line 339
    :cond_f
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->playerSoftDrop:Z

    if-eqz v6, :cond_12

    .line 340
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->playerSoftDrop:Z

    .line 341
    const/4 v6, 0x1

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousSoftDrop:Z

    .line 342
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->drop(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 344
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateBottom()V

    .line 345
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->clearLines(ZI)V

    .line 346
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-boolean v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    invoke-virtual {v6, v7}, Lgithub/jhunrel25/tetris/components/GameState;->pieceTransition(Z)V

    .line 347
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Board;->invalidate()V

    .line 351
    :goto_5
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v6

    if-ge v6, v5, :cond_10

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getClearedLines()I

    move-result v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->lineThresholds:[I

    iget-object v8, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v8, v8, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v7, v7, v8

    if-le v6, v7, :cond_10

    .line 352
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->nextLevel()V

    .line 353
    :cond_10
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerDropTime()J

    move-result-wide v7

    iget-object v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getAutoDropInterval()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextDropTime(J)V

    .line 354
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerDropTime()J

    move-result-wide v7

    iget v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->initialVIntervalFactor:I

    int-to-long v9, v9

    iget-object v11, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v11, v11, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v11}, Lgithub/jhunrel25/tetris/components/GameState;->getSoftDropInterval()J

    move-result-wide v11

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerDropTime(J)V

    goto/16 :goto_2

    .line 349
    :cond_11
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->incSoftDropCounter()V

    goto :goto_5

    .line 357
    :cond_12
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousSoftDrop:Z

    if-eqz v6, :cond_19

    .line 358
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerDropTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_16

    .line 359
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->drop(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 361
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateBottom()V

    .line 362
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->clearLines(ZI)V

    .line 363
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-boolean v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    invoke-virtual {v6, v7}, Lgithub/jhunrel25/tetris/components/GameState;->pieceTransition(Z)V

    .line 364
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Board;->invalidate()V

    .line 368
    :goto_6
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v6

    if-ge v6, v5, :cond_13

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getClearedLines()I

    move-result v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->lineThresholds:[I

    iget-object v8, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v8, v8, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v7, v7, v8

    if-le v6, v7, :cond_13

    .line 369
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->nextLevel()V

    .line 370
    :cond_13
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerDropTime()J

    move-result-wide v7

    iget-object v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getAutoDropInterval()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextDropTime(J)V

    .line 371
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextPlayerDropTime()J

    move-result-wide v7

    iget-object v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getSoftDropInterval()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerDropTime(J)V

    .line 389
    :cond_14
    :goto_7
    iget-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearPlayerSoftDrop:Z

    if-eqz v6, :cond_6

    .line 390
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->continuousSoftDrop:Z

    .line 391
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearPlayerSoftDrop:Z

    goto/16 :goto_2

    .line 366
    :cond_15
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->incSoftDropCounter()V

    goto :goto_6

    .line 374
    :cond_16
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getNextDropTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_14

    .line 375
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->drop(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 377
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateBottom()V

    .line 378
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->clearLines(ZI)V

    .line 379
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-boolean v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    invoke-virtual {v6, v7}, Lgithub/jhunrel25/tetris/components/GameState;->pieceTransition(Z)V

    .line 380
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Board;->invalidate()V

    .line 382
    :cond_17
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v6

    if-ge v6, v5, :cond_18

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getClearedLines()I

    move-result v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->lineThresholds:[I

    iget-object v8, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v8, v8, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v7, v7, v8

    if-le v6, v7, :cond_18

    .line 383
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->nextLevel()V

    .line 384
    :cond_18
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextDropTime()J

    move-result-wide v7

    iget-object v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getAutoDropInterval()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextDropTime(J)V

    .line 385
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextDropTime()J

    move-result-wide v7

    iget-object v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getSoftDropInterval()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerDropTime(J)V

    goto/16 :goto_7

    .line 395
    :cond_19
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getNextDropTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1c

    .line 396
    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->drop(Lgithub/jhunrel25/tetris/components/Board;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 398
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateBottom()V

    .line 399
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->clearLines(ZI)V

    .line 400
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-boolean v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    invoke-virtual {v6, v7}, Lgithub/jhunrel25/tetris/components/GameState;->pieceTransition(Z)V

    .line 401
    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/Board;->invalidate()V

    .line 403
    :cond_1a
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v6

    if-ge v6, v5, :cond_1b

    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->getClearedLines()I

    move-result v6

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->lineThresholds:[I

    iget-object v8, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v8, v8, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v8}, Lgithub/jhunrel25/tetris/components/GameState;->getLevel()I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v7, v7, v8

    if-le v6, v7, :cond_1b

    .line 404
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6}, Lgithub/jhunrel25/tetris/components/GameState;->nextLevel()V

    .line 405
    :cond_1b
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextDropTime()J

    move-result-wide v7

    iget-object v9, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getAutoDropInterval()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextDropTime(J)V

    .line 406
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v7, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v7, v7, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v7}, Lgithub/jhunrel25/tetris/components/GameState;->getNextDropTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerDropTime(J)V

    goto/16 :goto_2

    .line 409
    :cond_1c
    iget-object v6, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v6, v6, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v6, v2, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerDropTime(J)V

    goto/16 :goto_2
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lgithub/jhunrel25/tetris/components/Component;->disconnect()V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    .line 444
    return-void
.end method

.method public downButtonPressed()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->action()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->playerSoftDrop:Z

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearPlayerSoftDrop:Z

    .line 189
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    .line 190
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v1, v1, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/GameState;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerDropTime(J)V

    .line 191
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->buttonSound()V

    .line 192
    return-void
.end method

.method public downButtonReleased()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearPlayerSoftDrop:Z

    .line 181
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    .line 183
    return-void
.end method

.method public dropButtonPressed()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 199
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v1, v1, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/GameState;->getActivePiece()Lgithub/jhunrel25/tetris/pieces/Piece;

    move-result-object v1

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v1, v1, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/GameState;->action()V

    .line 202
    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->playerHardDrop:Z

    .line 203
    iget-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->buttonVibrationEnabled:Z

    iget-boolean v2, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    goto :goto_0
.end method

.method public dropButtonReleased()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public getBoard()Lgithub/jhunrel25/tetris/components/Board;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->board:Lgithub/jhunrel25/tetris/components/Board;

    return-object v0
.end method

.method public leftButtonPressed()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->action()V

    .line 214
    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearLeftMove:Z

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftMove:Z

    .line 216
    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightMove:Z

    .line 217
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v1, v1, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/GameState;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    .line 218
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->buttonSound()V

    .line 219
    return-void
.end method

.method public leftButtonReleased()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearLeftMove:Z

    .line 209
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->cancelVibration()V

    .line 210
    return-void
.end method

.method public reconnect(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 5
    .param p1, "cont"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    const/4 v4, 0x0

    .line 425
    invoke-super {p0, p1}, Lgithub/jhunrel25/tetris/components/Component;->reconnect(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 426
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    .line 428
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_vibration_button"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->buttonVibrationEnabled:Z

    .line 429
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_vibration_events"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    .line 431
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_vibDurOffset"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/NumberFormatException;
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I

    goto :goto_0
.end method

.method public rightButtonPressed()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->action()V

    .line 228
    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearRightMove:Z

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightMove:Z

    .line 230
    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftMove:Z

    .line 231
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v1, v1, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/GameState;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    .line 232
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->buttonSound()V

    .line 233
    return-void
.end method

.method public rightButtonReleased()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->clearRightMove:Z

    .line 223
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->cancelVibration()V

    .line 224
    return-void
.end method

.method public rotateLeftPressed()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->leftRotation:Z

    .line 157
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->action()V

    .line 158
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    .line 159
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->buttonSound()V

    .line 161
    return-void
.end method

.method public rotateLeftReleased()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public rotateRightPressed()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->rightRotation:Z

    .line 169
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->action()V

    .line 170
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Controls;->vibrateShort()V

    .line 171
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->buttonSound()V

    .line 173
    return-void
.end method

.method public rotateRightReleased()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public setBoard(Lgithub/jhunrel25/tetris/components/Board;)V
    .locals 0
    .param p1, "instance2"    # Lgithub/jhunrel25/tetris/components/Board;

    .prologue
    .line 413
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Controls;->board:Lgithub/jhunrel25/tetris/components/Board;

    .line 414
    return-void
.end method

.method public vibrateBottom()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 138
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    const/4 v2, 0x1

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I

    add-int/lit8 v3, v3, 0x5

    int-to-long v3, v3

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I

    add-int/lit8 v3, v3, 0x1e

    int-to-long v3, v3

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I

    add-int/lit8 v3, v3, 0x14

    int-to-long v3, v3

    aput-wide v3, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method

.method public vibrateShort()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->buttonVibrationEnabled:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lgithub/jhunrel25/tetris/components/Controls;->shortVibeTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v2}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->shortVibeTime:J

    .line 150
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public vibrateWall()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->eventVibrationEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Controls;->v:Landroid/os/Vibrator;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Controls;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v1, v1, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/GameState;->getMoveInterval()J

    move-result-wide v1

    iget v3, p0, Lgithub/jhunrel25/tetris/components/Controls;->vibrationOffset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
