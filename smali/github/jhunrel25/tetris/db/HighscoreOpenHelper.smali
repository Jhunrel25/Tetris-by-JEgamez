.class public Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HighscoreOpenHelper.java"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_PLAYERNAME:Ljava/lang/String; = "playername"

.field public static final COLUMN_SCORE:Ljava/lang/String; = "score"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table highscores(_id integer primary key autoincrement, score integer, playername text);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "highscores.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_HIGHSCORES:Ljava/lang/String; = "highscores"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string v0, "highscores.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 68
    const-string v0, "create table highscores(_id integer primary key autoincrement, score integer, playername text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 73
    const-class v0, Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "DROP TABLE IF EXISTS highscores"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    return-void
.end method
