.class public Lgithub/jhunrel25/tetris/components/Sound;
.super Ljava/lang/Object;
.source "Sound.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final GAME_MUSIC:I = 0x2

.field public static final MENU_MUSIC:I = 0x1

.field public static final NO_MUSIC:I


# instance fields
.field private audioCEO:Landroid/media/AudioManager;

.field private headsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private host:Landroid/app/Activity;

.field private isInactive:Z

.field private isMusicReady:Z

.field private musicPlayer:Landroid/media/MediaPlayer;

.field private musicType:I

.field private noFocus:Z

.field private noisyAudioStreamReceiver:Landroid/content/BroadcastReceiver;

.field private ringerModeReceiver:Landroid/content/BroadcastReceiver;

.field private songtime:I

.field private soundID_buttonSoundPlayer:I

.field private soundID_clearSoundPlayer:I

.field private soundID_dropSoundPlayer:I

.field private soundID_gameOverPlayer:I

.field private soundID_tetrisSoundPlayer:I

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "c"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    .line 79
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    .line 80
    invoke-virtual {p1, v6}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 83
    invoke-direct {p0}, Lgithub/jhunrel25/tetris/components/Sound;->requestFocus()V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lgithub/jhunrel25/tetris/components/Sound$1;

    invoke-direct {v1, p0}, Lgithub/jhunrel25/tetris/components/Sound$1;-><init>(Lgithub/jhunrel25/tetris/components/Sound;)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->noisyAudioStreamReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->noisyAudioStreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lgithub/jhunrel25/tetris/components/Sound$2;

    invoke-direct {v1, p0}, Lgithub/jhunrel25/tetris/components/Sound$2;-><init>(Lgithub/jhunrel25/tetris/components/Sound;)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lgithub/jhunrel25/tetris/components/Sound$3;

    invoke-direct {v1, p0}, Lgithub/jhunrel25/tetris/components/Sound$3;-><init>(Lgithub/jhunrel25/tetris/components/Sound;)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->ringerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->ringerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    new-instance v1, Landroid/media/SoundPool;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2, v6, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    .line 136
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_tetrisSoundPlayer:I

    .line 137
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_dropSoundPlayer:I

    .line 138
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_clearSoundPlayer:I

    .line 139
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_gameOverPlayer:I

    .line 140
    iput v4, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_buttonSoundPlayer:I

    .line 142
    iput v5, p0, Lgithub/jhunrel25/tetris/components/Sound;->songtime:I

    .line 143
    iput v5, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicType:I

    .line 144
    iput-boolean v5, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z

    .line 145
    iput-boolean v5, p0, Lgithub/jhunrel25/tetris/components/Sound;->isInactive:Z

    .line 146
    return-void
.end method

.method static synthetic access$0(Lgithub/jhunrel25/tetris/components/Sound;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicType:I

    return v0
.end method

.method static synthetic access$1(Lgithub/jhunrel25/tetris/components/Sound;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->songtime:I

    return v0
.end method

.method static synthetic access$2(Lgithub/jhunrel25/tetris/components/Sound;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lgithub/jhunrel25/tetris/components/Sound;->songtime:I

    return-void
.end method

.method private requestFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_musicvolume"

    const/16 v3, 0x3c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 150
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    .line 152
    const/4 v2, 0x3

    .line 150
    invoke-virtual {v1, p0, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 155
    .local v0, "result":I
    if-ne v0, v4, :cond_1

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    .line 160
    .end local v0    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v0    # "result":I
    :cond_1
    iput-boolean v4, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    goto :goto_0
.end method


# virtual methods
.method public buttonSound()V
    .locals 8

    .prologue
    const/16 v7, 0x3c

    const/4 v4, 0x1

    const v6, 0x3c23d70a    # 0.01f

    .line 250
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_button_sound"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    .line 257
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_buttonSoundPlayer:I

    .line 258
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    .line 259
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "pref_soundvolume"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 261
    const/4 v5, 0x0

    .line 262
    const/high16 v6, 0x3f800000    # 1.0f

    .line 256
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public clearSound()V
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const v5, 0x3c23d70a    # 0.01f

    .line 235
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    .line 240
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_clearSoundPlayer:I

    .line 241
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    .line 242
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    .line 243
    const/4 v4, 0x1

    .line 244
    const/4 v5, 0x0

    .line 245
    const/high16 v6, 0x3f800000    # 1.0f

    .line 239
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public dropSound()V
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const v5, 0x3c23d70a    # 0.01f

    .line 267
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    .line 272
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_dropSoundPlayer:I

    .line 273
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    .line 274
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    .line 275
    const/4 v4, 0x1

    .line 276
    const/4 v5, 0x0

    .line 277
    const/high16 v6, 0x3f800000    # 1.0f

    .line 271
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public gameOverSound()V
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const v5, 0x3c23d70a    # 0.01f

    .line 297
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Sound;->pause()V

    .line 302
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    .line 303
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_gameOverPlayer:I

    .line 304
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    .line 305
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    .line 306
    const/4 v4, 0x1

    .line 307
    const/4 v5, 0x0

    .line 308
    const/high16 v6, 0x3f800000    # 1.0f

    .line 302
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public getSongtime()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 398
    :try_start_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 403
    :goto_0
    return v0

    .line 399
    :catch_0
    move-exception v0

    .line 403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadEffects()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    const v2, 0x7f050006

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_tetrisSoundPlayer:I

    .line 168
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_dropSoundPlayer:I

    .line 169
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_buttonSoundPlayer:I

    .line 170
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_clearSoundPlayer:I

    .line 171
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    const v2, 0x7f050002

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_gameOverPlayer:I

    .line 172
    return-void
.end method

.method public loadMusic(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "startTime"    # I

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x1

    const v4, 0x3c23d70a    # 0.01f

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z

    .line 178
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    .line 183
    invoke-direct {p0}, Lgithub/jhunrel25/tetris/components/Sound;->requestFocus()V

    .line 184
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    if-eqz v0, :cond_2

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->isInactive:Z

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 192
    iput p2, p0, Lgithub/jhunrel25/tetris/components/Sound;->songtime:I

    .line 193
    iput p1, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicType:I

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 202
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    .line 205
    :goto_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 206
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 207
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_musicvolume"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_musicvolume"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 208
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->songtime:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 209
    iput-boolean v5, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z

    goto :goto_0

    .line 196
    :pswitch_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    const v1, 0x7f050004

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 199
    :pswitch_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 8
    .param p1, "focusChange"    # I

    .prologue
    const/4 v1, 0x1

    const v7, 0x3c23d70a    # 0.01f

    const v6, 0x3b23d70a    # 0.0025f

    const/16 v5, 0x3c

    .line 357
    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    .line 358
    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    .line 359
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 361
    :try_start_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_musicvolume"

    const/16 v3, 0x3c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_musicvolume"

    const/16 v4, 0x3c

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 366
    :cond_0
    :goto_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_tetrisSoundPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 367
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_dropSoundPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 368
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_clearSoundPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 369
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_gameOverPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 370
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_buttonSoundPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 393
    :cond_1
    :goto_1
    return-void

    .line 371
    :cond_2
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    .line 372
    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    .line 373
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Sound;->pause()V

    goto :goto_1

    .line 374
    :cond_3
    if-ne p1, v1, :cond_5

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    .line 376
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 378
    :try_start_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_musicvolume"

    const/16 v3, 0x3c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_musicvolume"

    const/16 v4, 0x3c

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    :cond_4
    :goto_2
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_tetrisSoundPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 384
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_dropSoundPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 385
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_clearSoundPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 386
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_gameOverPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 387
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_buttonSoundPlayer:I

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 388
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Sound;->resume()V

    goto/16 :goto_1

    .line 389
    :cond_5
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 390
    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    .line 391
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Sound;->pause()V

    goto/16 :goto_1

    .line 379
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 362
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 334
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/components/Sound;->pauseMusic()V

    .line 335
    return-void
.end method

.method public pauseMusic()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    iput-boolean v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z

    .line 322
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 324
    :try_start_0
    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 339
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 340
    iput-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z

    .line 342
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 344
    :cond_0
    iput-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    .line 346
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->noisyAudioStreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->ringerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 350
    iput-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    .line 351
    iput-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    .line 353
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->isInactive:Z

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 317
    iget v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicType:I

    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->songtime:I

    invoke-virtual {p0, v0, v1}, Lgithub/jhunrel25/tetris/components/Sound;->startMusic(II)V

    goto :goto_0
.end method

.method public setInactive(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lgithub/jhunrel25/tetris/components/Sound;->isInactive:Z

    .line 164
    return-void
.end method

.method public startMusic(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "startTime"    # I

    .prologue
    const/16 v5, 0x3c

    const v4, 0x3c23d70a    # 0.01f

    .line 214
    invoke-direct {p0}, Lgithub/jhunrel25/tetris/components/Sound;->requestFocus()V

    .line 215
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->isInactive:Z

    if-nez v0, :cond_0

    .line 220
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z

    if-nez v0, :cond_2

    .line 223
    invoke-virtual {p0, p1, p2}, Lgithub/jhunrel25/tetris/components/Sound;->loadMusic(II)V

    .line 225
    :cond_2
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->isMusicReady:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_musicvolume"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_musicvolume"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 230
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->musicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public tetrisSound()V
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const v5, 0x3c23d70a    # 0.01f

    .line 282
    iget-boolean v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->noFocus:Z

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->audioCEO:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundPool:Landroid/media/SoundPool;

    .line 287
    iget v1, p0, Lgithub/jhunrel25/tetris/components/Sound;->soundID_tetrisSoundPlayer:I

    .line 288
    iget-object v2, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_soundvolume"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    .line 289
    iget-object v3, p0, Lgithub/jhunrel25/tetris/components/Sound;->host:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_soundvolume"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    .line 290
    const/4 v4, 0x1

    .line 291
    const/4 v5, 0x0

    .line 292
    const/high16 v6, 0x3f800000    # 1.0f

    .line 286
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method
