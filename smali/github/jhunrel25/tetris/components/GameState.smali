.class public Lgithub/jhunrel25/tetris/components/GameState;
.super Lgithub/jhunrel25/tetris/components/Component;
.source "GameState.java"


# static fields
.field private static instance:Lgithub/jhunrel25/tetris/components/GameState; = null

.field public static final state_finished:I = 0x3

.field public static final state_paused:I = 0x2

.field public static final state_running:I = 0x1

.field public static final state_startable:I


# instance fields
.field private actions:J

.field private activeIndex:I

.field private activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

.field public board:Lgithub/jhunrel25/tetris/components/Board;

.field private clearedLines:I

.field private currentTime:J

.field private date:Ljava/util/GregorianCalendar;

.field private doubleLineScore:I

.field private dropIntervals:[I

.field private formatter:Ljava/text/SimpleDateFormat;

.field private gameTime:J

.field private hardDropBonus:I

.field public hourOffset:I

.field private level:I

.field private maxLevel:I

.field private multiTetrisScore:I

.field private multitetris:Z

.field private nextDropTime:J

.field private nextPlayerDropTime:J

.field private nextPlayerMoveTime:J

.field private piece_start_x:I

.field private playerDropInterval:J

.field private playerMoveInterval:J

.field private playerName:Ljava/lang/String;

.field private popupAttack:I

.field private popupDecay:I

.field private popupString:Ljava/lang/String;

.field private popupSustain:I

.field private popupTime:J

.field private previewIndex:I

.field private previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

.field private quadLineScore:I

.field private rng:Lgithub/jhunrel25/tetris/PieceGenerator;

.field private scheduleSpawn:Z

.field private score:J

.field private singleLineScore:I

.field private softDropBonus:I

.field private softDropDistance:I

.field private songtime:I

.field private spawnTime:J

.field private spawn_delay:I

.field private stateOfTheGame:I

.field private trippleLineScore:I


# direct methods
.method private constructor <init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 9
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0x3c

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0, p1}, Lgithub/jhunrel25/tetris/components/Component;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 114
    iput-wide v7, p0, Lgithub/jhunrel25/tetris/components/GameState;->actions:J

    .line 115
    new-instance v0, Lgithub/jhunrel25/tetris/components/Board;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v0, v1}, Lgithub/jhunrel25/tetris/components/Board;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->board:Lgithub/jhunrel25/tetris/components/Board;

    .line 116
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->date:Ljava/util/GregorianCalendar;

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->formatter:Ljava/text/SimpleDateFormat;

    .line 118
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->date:Ljava/util/GregorianCalendar;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 119
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->formatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->date:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iput v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->hourOffset:I

    .line 126
    :goto_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->dropIntervals:[I

    .line 127
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->singleLineScore:I

    .line 128
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->doubleLineScore:I

    .line 129
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->trippleLineScore:I

    .line 130
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->multiTetrisScore:I

    .line 131
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->quadLineScore:I

    .line 132
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->hardDropBonus:I

    .line 133
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->softDropBonus:I

    .line 134
    iput v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->softDropDistance:I

    .line 135
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->spawn_delay:I

    .line 136
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->piece_start_x:I

    .line 137
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    .line 138
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupSustain:I

    .line 139
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupDecay:I

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupString:Ljava/lang/String;

    .line 141
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupSustain:I

    add-int/2addr v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupDecay:I

    add-int/2addr v0, v1

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    .line 142
    iput v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->clearedLines:I

    .line 143
    iput v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->level:I

    .line 144
    iput-wide v7, p0, Lgithub/jhunrel25/tetris/components/GameState;->score:J

    .line 145
    iput v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->songtime:I

    .line 146
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->maxLevel:I

    .line 148
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextDropTime:J

    .line 150
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_softdropspeed"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->playerDropInterval:J

    .line 151
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_movespeed"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->playerMoveInterval:J

    .line 152
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_softdropspeed"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextPlayerDropTime:J

    .line 153
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_movespeed"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextPlayerMoveTime:J

    .line 155
    iput-wide v7, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    .line 156
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_rng"

    const-string v2, "sevenbag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sevenbag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_rng"

    const-string v2, "7-Bag-Randomization (default)"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7-Bag-Randomization (default)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    :cond_0
    new-instance v0, Lgithub/jhunrel25/tetris/PieceGenerator;

    invoke-direct {v0, v5}, Lgithub/jhunrel25/tetris/PieceGenerator;-><init>(I)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->rng:Lgithub/jhunrel25/tetris/PieceGenerator;

    .line 163
    :goto_1
    const/4 v0, 0x7

    new-array v0, v0, [Lgithub/jhunrel25/tetris/pieces/Piece;

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    .line 164
    const/4 v0, 0x7

    new-array v0, v0, [Lgithub/jhunrel25/tetris/pieces/Piece;

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    .line 166
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    new-instance v1, Lgithub/jhunrel25/tetris/pieces/IPiece;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v1, v2}, Lgithub/jhunrel25/tetris/pieces/IPiece;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v4

    .line 167
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    new-instance v1, Lgithub/jhunrel25/tetris/pieces/JPiece;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v1, v2}, Lgithub/jhunrel25/tetris/pieces/JPiece;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v5

    .line 168
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x2

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/LPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/LPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 169
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x3

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/OPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/OPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 170
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x4

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/SPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/SPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 171
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x5

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/TPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/TPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 172
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x6

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/ZPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/ZPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 174
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    new-instance v1, Lgithub/jhunrel25/tetris/pieces/IPiece;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v1, v2}, Lgithub/jhunrel25/tetris/pieces/IPiece;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v4

    .line 175
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    new-instance v1, Lgithub/jhunrel25/tetris/pieces/JPiece;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v1, v2}, Lgithub/jhunrel25/tetris/pieces/JPiece;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v5

    .line 176
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x2

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/LPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/LPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 177
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x3

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/OPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/OPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 178
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x4

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/SPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/SPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 179
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x5

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/TPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/TPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 180
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    const/4 v1, 0x6

    new-instance v2, Lgithub/jhunrel25/tetris/pieces/ZPiece;

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-direct {v2, v3}, Lgithub/jhunrel25/tetris/pieces/ZPiece;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 183
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->rng:Lgithub/jhunrel25/tetris/PieceGenerator;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/PieceGenerator;->next()I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    .line 184
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->rng:Lgithub/jhunrel25/tetris/PieceGenerator;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/PieceGenerator;->next()I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewIndex:I

    .line 185
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Lgithub/jhunrel25/tetris/pieces/Piece;->setActive(Z)V

    .line 189
    iput v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->stateOfTheGame:I

    .line 190
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->scheduleSpawn:Z

    .line 191
    iput-wide v7, p0, Lgithub/jhunrel25/tetris/components/GameState;->spawnTime:J

    .line 192
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->formatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->date:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->hourOffset:I

    goto/16 :goto_0

    .line 124
    :cond_2
    iput v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->hourOffset:I

    goto/16 :goto_0

    .line 160
    :cond_3
    new-instance v0, Lgithub/jhunrel25/tetris/PieceGenerator;

    invoke-direct {v0, v4}, Lgithub/jhunrel25/tetris/PieceGenerator;-><init>(I)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->rng:Lgithub/jhunrel25/tetris/PieceGenerator;

    goto/16 :goto_1
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/GameState;->disconnect()V

    .line 453
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    .line 454
    return-void
.end method

.method public static getInstance(Lgithub/jhunrel25/tetris/activities/GameActivity;)Lgithub/jhunrel25/tetris/components/GameState;
    .locals 1
    .param p0, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    .line 457
    sget-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lgithub/jhunrel25/tetris/components/GameState;

    invoke-direct {v0, p0}, Lgithub/jhunrel25/tetris/components/GameState;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    sput-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    .line 459
    :cond_0
    sget-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    return-object v0
.end method

.method public static getNewInstance(Lgithub/jhunrel25/tetris/activities/GameActivity;)Lgithub/jhunrel25/tetris/components/GameState;
    .locals 1
    .param p0, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    .line 463
    new-instance v0, Lgithub/jhunrel25/tetris/components/GameState;

    invoke-direct {v0, p0}, Lgithub/jhunrel25/tetris/components/GameState;-><init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    sput-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    .line 464
    sget-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFinished()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 484
    sget-object v1, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    if-nez v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lgithub/jhunrel25/tetris/components/GameState;->instance:Lgithub/jhunrel25/tetris/components/GameState;

    invoke-virtual {v1}, Lgithub/jhunrel25/tetris/components/GameState;->isResumable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public action()V
    .locals 4

    .prologue
    .line 423
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->actions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->actions:J

    .line 424
    return-void
.end method

.method public clearLines(ZI)V
    .locals 7
    .param p1, "playerHardDrop"    # Z
    .param p2, "hardDropDistance"    # I

    .prologue
    const/4 v6, 0x0

    .line 230
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    if-nez v3, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->board:Lgithub/jhunrel25/tetris/components/Board;

    invoke-virtual {v3, v4}, Lgithub/jhunrel25/tetris/pieces/Piece;->place(Lgithub/jhunrel25/tetris/components/Board;)V

    .line 234
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->board:Lgithub/jhunrel25/tetris/components/Board;

    iget-object v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lgithub/jhunrel25/tetris/pieces/Piece;->getDim()I

    move-result v4

    invoke-virtual {v3, v4}, Lgithub/jhunrel25/tetris/components/Board;->clearLines(I)I

    move-result v2

    .line 235
    .local v2, "cleared":I
    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->clearedLines:I

    add-int/2addr v3, v2

    iput v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->clearedLines:I

    .line 238
    packed-switch v2, :pswitch_data_0

    .line 267
    const-wide/16 v0, 0x0

    .line 269
    .local v0, "addScore":J
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v3, v3, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/components/Sound;->dropSound()V

    .line 270
    iget-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget-wide v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    sub-long/2addr v3, v5

    iget v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    iget v6, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupSustain:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 271
    iget-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    iget v6, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupSustain:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    .line 278
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 279
    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->hardDropBonus:I

    mul-int/2addr v3, p2

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 284
    :goto_2
    iget-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->score:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->score:J

    .line 285
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupString:Ljava/lang/String;

    goto :goto_0

    .line 240
    .end local v0    # "addScore":J
    :pswitch_0
    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->singleLineScore:I

    int-to-long v0, v3

    .line 241
    .restart local v0    # "addScore":J
    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/GameState;->multitetris:Z

    .line 242
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v3, v3, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/components/Sound;->clearSound()V

    .line 243
    iget-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iput-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    goto :goto_1

    .line 246
    .end local v0    # "addScore":J
    :pswitch_1
    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->doubleLineScore:I

    int-to-long v0, v3

    .line 247
    .restart local v0    # "addScore":J
    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/GameState;->multitetris:Z

    .line 248
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v3, v3, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/components/Sound;->clearSound()V

    .line 249
    iget-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iput-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    goto :goto_1

    .line 252
    .end local v0    # "addScore":J
    :pswitch_2
    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->trippleLineScore:I

    int-to-long v0, v3

    .line 253
    .restart local v0    # "addScore":J
    iput-boolean v6, p0, Lgithub/jhunrel25/tetris/components/GameState;->multitetris:Z

    .line 254
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v3, v3, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/components/Sound;->clearSound()V

    .line 255
    iget-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iput-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    goto :goto_1

    .line 258
    .end local v0    # "addScore":J
    :pswitch_3
    iget-boolean v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->multitetris:Z

    if-eqz v3, :cond_3

    .line 259
    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->multiTetrisScore:I

    int-to-long v0, v3

    .line 262
    .restart local v0    # "addScore":J
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->multitetris:Z

    .line 263
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v3, v3, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v3}, Lgithub/jhunrel25/tetris/components/Sound;->tetrisSound()V

    .line 264
    iget-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iput-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    goto :goto_1

    .line 261
    .end local v0    # "addScore":J
    :cond_3
    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->quadLineScore:I

    int-to-long v0, v3

    .restart local v0    # "addScore":J
    goto :goto_3

    .line 282
    :cond_4
    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->softDropDistance:I

    iget v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->softDropBonus:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_2

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cycle(J)Z
    .locals 6
    .param p1, "tempTime"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 345
    iget v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->stateOfTheGame:I

    if-eq v2, v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    iget-wide v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget-wide v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->currentTime:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    .line 349
    iput-wide p1, p0, Lgithub/jhunrel25/tetris/components/GameState;->currentTime:J

    .line 352
    iget-boolean v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->scheduleSpawn:Z

    if-eqz v2, :cond_2

    .line 353
    iget-wide v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget-wide v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->spawnTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/GameState;->finishTransition()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 357
    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgithub/jhunrel25/tetris/components/GameState;->setRunning(Z)V

    .line 394
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->board:Lgithub/jhunrel25/tetris/components/Board;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Board;->disconnect()V

    .line 395
    invoke-super {p0}, Lgithub/jhunrel25/tetris/components/Component;->disconnect()V

    .line 396
    return-void
.end method

.method public finishTransition()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 308
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iput-boolean v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->scheduleSpawn:Z

    .line 312
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->display:Lgithub/jhunrel25/tetris/components/Display;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Display;->invalidatePhantom()V

    .line 313
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->setActive(Z)V

    .line 314
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->dropIntervals:[I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->level:I

    iget v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->maxLevel:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lgithub/jhunrel25/tetris/components/GameState;->setNextDropTime(J)V

    .line 315
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    invoke-virtual {p0, v0, v1}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerDropTime(J)V

    .line 316
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    invoke-virtual {p0, v0, v1}, Lgithub/jhunrel25/tetris/components/GameState;->setNextPlayerMoveTime(J)V

    .line 317
    iput v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->softDropDistance:I

    .line 320
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->piece_start_x:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->board:Lgithub/jhunrel25/tetris/components/Board;

    invoke-virtual {v0, v1, v5, v5, v2}, Lgithub/jhunrel25/tetris/pieces/Piece;->setPosition(IIZLgithub/jhunrel25/tetris/components/Board;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x3

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->stateOfTheGame:I

    .line 322
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-object v0, v0, Lgithub/jhunrel25/tetris/activities/GameActivity;->sound:Lgithub/jhunrel25/tetris/components/Sound;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/components/Sound;->gameOverSound()V

    .line 323
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    iget-wide v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->score:J

    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/GameState;->getTimeString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->actions:J

    long-to-float v4, v4

    const v5, 0x476a6000    # 60000.0f

    iget-wide v6, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgithub/jhunrel25/tetris/activities/GameActivity;->gameOver(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method public getAPM()I
    .locals 4

    .prologue
    .line 476
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->actions:J

    long-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    iget-wide v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAPMString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    if-nez v0, :cond_0

    .line 371
    const-string v0, ""

    .line 372
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->actions:J

    long-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    iget-wide v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActivePiece()Lgithub/jhunrel25/tetris/pieces/Piece;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAutoDropInterval()I
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->dropIntervals:[I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->level:I

    iget v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->maxLevel:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getBoard()Lgithub/jhunrel25/tetris/components/Board;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->board:Lgithub/jhunrel25/tetris/components/Board;

    return-object v0
.end method

.method public getClearedLines()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->clearedLines:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->level:I

    return v0
.end method

.method public getLevelString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLevel()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->maxLevel:I

    return v0
.end method

.method public getMoveInterval()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->playerMoveInterval:J

    return-wide v0
.end method

.method public getNextDropTime()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextDropTime:J

    return-wide v0
.end method

.method public getNextPlayerDropTime()J
    .locals 2

    .prologue
    .line 439
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextPlayerDropTime:J

    return-wide v0
.end method

.method public getNextPlayerMoveTime()J
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextPlayerMoveTime:J

    return-wide v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->playerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupAlpha()I
    .locals 6

    .prologue
    .line 504
    iget-wide v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget-wide v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    sub-long v0, v2, v4

    .line 506
    .local v0, "x":J
    iget v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupSustain:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 507
    const/16 v2, 0xff

    .line 512
    :goto_0
    return v2

    .line 509
    :cond_0
    iget v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupSustain:I

    add-int/2addr v2, v3

    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupDecay:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 510
    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    iget v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupSustain:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v4, v0

    long-to-float v4, v4

    iget v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupDecay:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    .line 512
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPopupColor()I
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 530
    :goto_0
    return v0

    .line 528
    :cond_0
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->multitetris:Z

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPopupSize()F
    .locals 6

    .prologue
    .line 516
    iget-wide v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget-wide v4, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupTime:J

    sub-long v0, v2, v4

    .line 518
    .local v0, "x":J
    iget v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 519
    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x3f800000    # 1.0f

    long-to-float v4, v0

    iget v5, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupAttack:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 521
    :goto_0
    return v2

    :cond_0
    const/high16 v2, 0x42f00000    # 120.0f

    goto :goto_0
.end method

.method public getPopupString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->popupString:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewPiece()Lgithub/jhunrel25/tetris/pieces/Piece;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewPieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getScore()J
    .locals 2

    .prologue
    .line 472
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->score:J

    return-wide v0
.end method

.method public getScoreString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->score:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoftDropInterval()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->playerDropInterval:J

    return-wide v0
.end method

.method public getSongtime()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->songtime:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    return-wide v0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 365
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->date:Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget v3, p0, Lgithub/jhunrel25/tetris/components/GameState;->hourOffset:I

    const v4, 0x36ee80

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 366
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->formatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->date:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public incSoftDropCounter()V
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->softDropDistance:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->softDropDistance:I

    .line 535
    return-void
.end method

.method public isResumable()Z
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->stateOfTheGame:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextLevel()V
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->level:I

    .line 408
    return-void
.end method

.method public pieceTransition(Z)V
    .locals 4
    .param p1, "eventVibrationEnabled"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->scheduleSpawn:Z

    .line 296
    if-eqz p1, :cond_1

    .line 297
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iget v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->spawn_delay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->spawnTime:J

    .line 301
    :goto_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->reset(Landroid/content/Context;)V

    .line 302
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewIndex:I

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    .line 303
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->rng:Lgithub/jhunrel25/tetris/PieceGenerator;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/PieceGenerator;->next()I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->previewIndex:I

    .line 304
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->activePieces:[Lgithub/jhunrel25/tetris/pieces/Piece;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->activeIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/pieces/Piece;->reset(Landroid/content/Context;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->gameTime:J

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->spawnTime:J

    goto :goto_1
.end method

.method public reconnect(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 5
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    const/16 v4, 0x3c

    const/4 v3, 0x1

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 377
    invoke-super {p0, p1}, Lgithub/jhunrel25/tetris/components/Component;->reconnect(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 379
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_softdropspeed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->playerDropInterval:J

    .line 380
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_movespeed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->playerMoveInterval:J

    .line 382
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_rng"

    const-string v2, "sevenbag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sevenbag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_rng"

    const-string v2, "7-Bag-Randomization (default)"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7-Bag-Randomization (default)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    new-instance v0, Lgithub/jhunrel25/tetris/PieceGenerator;

    invoke-direct {v0, v3}, Lgithub/jhunrel25/tetris/PieceGenerator;-><init>(I)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->rng:Lgithub/jhunrel25/tetris/PieceGenerator;

    .line 388
    :goto_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->board:Lgithub/jhunrel25/tetris/components/Board;

    invoke-virtual {v0, p1}, Lgithub/jhunrel25/tetris/components/Board;->reconnect(Lgithub/jhunrel25/tetris/activities/GameActivity;)V

    .line 389
    invoke-virtual {p0, v3}, Lgithub/jhunrel25/tetris/components/GameState;->setRunning(Z)V

    .line 390
    return-void

    .line 386
    :cond_1
    new-instance v0, Lgithub/jhunrel25/tetris/PieceGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgithub/jhunrel25/tetris/PieceGenerator;-><init>(I)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->rng:Lgithub/jhunrel25/tetris/PieceGenerator;

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 2
    .param p1, "int1"    # I

    .prologue
    .line 494
    iput p1, p0, Lgithub/jhunrel25/tetris/components/GameState;->level:I

    .line 495
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v0, v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextDropTime:J

    .line 496
    mul-int/lit8 v0, p1, 0xa

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->clearedLines:I

    .line 497
    return-void
.end method

.method public setNextDropTime(J)V
    .locals 0
    .param p1, "l"    # J

    .prologue
    .line 435
    iput-wide p1, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextDropTime:J

    .line 436
    return-void
.end method

.method public setNextPlayerDropTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 427
    iput-wide p1, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextPlayerDropTime:J

    .line 428
    return-void
.end method

.method public setNextPlayerMoveTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 431
    iput-wide p1, p0, Lgithub/jhunrel25/tetris/components/GameState;->nextPlayerMoveTime:J

    .line 432
    return-void
.end method

.method public setPlayerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/GameState;->playerName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setRunning(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x1

    .line 219
    if-eqz p1, :cond_1

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->currentTime:J

    .line 221
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->stateOfTheGame:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 222
    iput v2, p0, Lgithub/jhunrel25/tetris/components/GameState;->stateOfTheGame:I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->stateOfTheGame:I

    if-ne v0, v2, :cond_0

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Lgithub/jhunrel25/tetris/components/GameState;->stateOfTheGame:I

    goto :goto_0
.end method

.method public setSongtime(I)V
    .locals 0
    .param p1, "songtime"    # I

    .prologue
    .line 490
    iput p1, p0, Lgithub/jhunrel25/tetris/components/GameState;->songtime:I

    .line 491
    return-void
.end method
