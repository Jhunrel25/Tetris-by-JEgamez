.class public Lgithub/jhunrel25/tetris/db/Score;
.super Ljava/lang/Object;
.source "Score.java"


# instance fields
.field private id:J

.field private playerName:Ljava/lang/String;

.field private score:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/db/Score;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lgithub/jhunrel25/tetris/db/Score;->playerName:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/db/Score;->score:J

    return-wide v0
.end method

.method public getScoreString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lgithub/jhunrel25/tetris/db/Score;->score:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lgithub/jhunrel25/tetris/db/Score;->id:J

    .line 55
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lgithub/jhunrel25/tetris/db/Score;->playerName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setScore(J)V
    .locals 0
    .param p1, "comment"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lgithub/jhunrel25/tetris/db/Score;->score:J

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lgithub/jhunrel25/tetris/db/Score;->score:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgithub/jhunrel25/tetris/db/Score;->playerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
