.class public Lgithub/jhunrel25/tetris/db/ScoreDataSource;
.super Ljava/lang/Object;
.source "ScoreDataSource.java"


# instance fields
.field private allColumns:[Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 52
    const-string v2, "score"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 53
    const-string v2, "playername"

    aput-object v2, v0, v1

    iput-object v0, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->allColumns:[Ljava/lang/String;

    .line 56
    new-instance v0, Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;

    invoke-direct {v0, p1}, Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->dbHelper:Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;

    .line 57
    return-void
.end method

.method private cursorToScore(Landroid/database/Cursor;)Lgithub/jhunrel25/tetris/db/Score;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    new-instance v0, Lgithub/jhunrel25/tetris/db/Score;

    invoke-direct {v0}, Lgithub/jhunrel25/tetris/db/Score;-><init>()V

    .line 90
    .local v0, "score":Lgithub/jhunrel25/tetris/db/Score;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgithub/jhunrel25/tetris/db/Score;->setId(J)V

    .line 91
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgithub/jhunrel25/tetris/db/Score;->setScore(J)V

    .line 92
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgithub/jhunrel25/tetris/db/Score;->setName(Ljava/lang/String;)V

    .line 93
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->dbHelper:Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;->close()V

    .line 65
    return-void
.end method

.method public createScore(JLjava/lang/String;)Lgithub/jhunrel25/tetris/db/Score;
    .locals 14
    .param p1, "score"    # J
    .param p3, "playerName"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v13, "values":Landroid/content/ContentValues;
    const-string v1, "score"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v1, "playername"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "highscores"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 72
    .local v10, "insertId":J
    iget-object v1, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "highscores"

    .line 73
    iget-object v3, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->allColumns:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "score DESC"

    .line 72
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 75
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    invoke-direct {p0, v9}, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->cursorToScore(Landroid/database/Cursor;)Lgithub/jhunrel25/tetris/db/Score;

    move-result-object v12

    .line 77
    .local v12, "newScore":Lgithub/jhunrel25/tetris/db/Score;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 78
    return-object v12
.end method

.method public deleteScore(Lgithub/jhunrel25/tetris/db/Score;)V
    .locals 6
    .param p1, "score"    # Lgithub/jhunrel25/tetris/db/Score;

    .prologue
    .line 82
    invoke-virtual {p1}, Lgithub/jhunrel25/tetris/db/Score;->getId()J

    move-result-wide v0

    .line 84
    .local v0, "id":J
    iget-object v2, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "highscores"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 84
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "highscores"

    .line 98
    iget-object v2, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->allColumns:[Ljava/lang/String;

    const-string v7, "score DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 97
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->dbHelper:Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/db/HighscoreOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/db/ScoreDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    return-void
.end method
