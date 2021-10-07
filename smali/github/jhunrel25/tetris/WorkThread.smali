.class public Lgithub/jhunrel25/tetris/WorkThread;
.super Ljava/lang/Thread;
.source "WorkThread.java"


# instance fields
.field firstTime:Z

.field fpslimit:I

.field private host:Lgithub/jhunrel25/tetris/activities/GameActivity;

.field lastDelay:J

.field public lastFrameDuration:J

.field private lastFrameStartingTime:J

.field private runFlag:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lgithub/jhunrel25/tetris/activities/GameActivity;Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;
    .param p2, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/WorkThread;->runFlag:Z

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/WorkThread;->firstTime:Z

    .line 54
    iput-wide v2, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastFrameDuration:J

    .line 55
    iput-wide v2, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastFrameStartingTime:J

    .line 61
    iput-object p1, p0, Lgithub/jhunrel25/tetris/WorkThread;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    .line 62
    iput-object p2, p0, Lgithub/jhunrel25/tetris/WorkThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 64
    :try_start_0
    iget-object v1, p0, Lgithub/jhunrel25/tetris/WorkThread;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_fpslimittext"

    const-string v3, "35"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    iget v1, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I

    if-ge v1, v4, :cond_0

    .line 69
    iput v4, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I

    .line 71
    :cond_0
    const-wide/16 v1, 0x64

    iput-wide v1, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastDelay:J

    .line 72
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v1, 0x19

    iput v1, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 83
    .local v7, "tempTime":J
    const-wide/16 v9, 0xc8

    add-long v2, v7, v9

    .line 84
    .local v2, "fpsUpdateTime":J
    const/4 v5, 0x0

    .line 85
    .local v5, "frames":I
    const/4 v9, 0x5

    new-array v4, v9, [I

    .line 86
    .local v4, "frameCounter":[I
    const/4 v6, 0x0

    .line 88
    .local v6, "i":I
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->runFlag:Z

    if-nez v9, :cond_1

    .line 151
    return-void

    .line 89
    :cond_1
    iget-boolean v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->firstTime:Z

    if-eqz v9, :cond_2

    .line 90
    const/4 v9, 0x0

    iput-boolean v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->firstTime:Z

    goto :goto_0

    .line 95
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 98
    :try_start_0
    iget-object v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "pref_fpslimittext"

    const-string v11, "35"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    iget v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I

    const/4 v10, 0x5

    if-ge v9, v10, :cond_3

    .line 103
    const/4 v9, 0x5

    iput v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I

    .line 105
    :cond_3
    iget-object v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "pref_fpslimit"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 106
    iget-wide v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastFrameStartingTime:J

    sub-long v9, v7, v9

    iput-wide v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastFrameDuration:J

    .line 107
    iget-wide v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastFrameDuration:J

    long-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    iget v11, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 108
    const-wide/16 v9, 0x0

    iget-wide v11, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastDelay:J

    const-wide/16 v13, 0x19

    sub-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastDelay:J

    .line 112
    :goto_2
    iget-wide v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastDelay:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 115
    :try_start_1
    iget-wide v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastDelay:J

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :cond_4
    :goto_3
    iput-wide v7, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastFrameStartingTime:J

    .line 123
    :cond_5
    cmp-long v9, v7, v2

    if-ltz v9, :cond_6

    .line 124
    add-int/lit8 v9, v6, 0x1

    rem-int/lit8 v6, v9, 0x5

    .line 125
    const-wide/16 v9, 0xc8

    add-long/2addr v2, v9

    .line 126
    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v10, v4, v10

    add-int/2addr v9, v10

    const/4 v10, 0x2

    aget v10, v4, v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    aget v10, v4, v10

    add-int/2addr v9, v10

    const/4 v10, 0x4

    aget v10, v4, v10

    add-int v5, v9, v10

    .line 127
    const/4 v9, 0x0

    aput v9, v4, v6

    .line 129
    :cond_6
    aget v9, v4, v6

    add-int/lit8 v9, v9, 0x1

    aput v9, v4, v6

    .line 132
    iget-object v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9, v7, v8}, Lgithub/jhunrel25/tetris/components/GameState;->cycle(J)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 133
    iget-object v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->controls:Lgithub/jhunrel25/tetris/components/Controls;

    invoke-virtual {v9, v7, v8}, Lgithub/jhunrel25/tetris/components/Controls;->cycle(J)V

    .line 134
    :cond_7
    iget-object v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->game:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v9}, Lgithub/jhunrel25/tetris/components/GameState;->getBoard()Lgithub/jhunrel25/tetris/components/Board;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lgithub/jhunrel25/tetris/components/Board;->cycle(J)V

    .line 136
    const/4 v0, 0x0

    .line 139
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_2
    iget-object v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 140
    iget-object v10, p0, Lgithub/jhunrel25/tetris/WorkThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :try_start_3
    iget-object v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v9, v9, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v9, v0, v5}, Lgithub/jhunrel25/tetris/components/Display;->doDraw(Landroid/graphics/Canvas;I)V

    .line 140
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget-object v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 99
    .end local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v9, 0x23

    iput v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->fpslimit:I

    goto/16 :goto_1

    .line 110
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    iget-wide v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastDelay:J

    const-wide/16 v11, 0x19

    add-long/2addr v9, v11

    iput-wide v9, p0, Lgithub/jhunrel25/tetris/WorkThread;->lastDelay:J

    goto :goto_2

    .line 140
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    :catchall_1
    move-exception v9

    .line 145
    if-eqz v0, :cond_9

    .line 146
    iget-object v10, p0, Lgithub/jhunrel25/tetris/WorkThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 149
    :cond_9
    throw v9

    .line 116
    .end local v0    # "c":Landroid/graphics/Canvas;
    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method public setFirstTime(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lgithub/jhunrel25/tetris/WorkThread;->firstTime:Z

    .line 155
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "run"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lgithub/jhunrel25/tetris/WorkThread;->runFlag:Z

    .line 76
    return-void
.end method
