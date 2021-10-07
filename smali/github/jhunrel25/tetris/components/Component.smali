.class public abstract Lgithub/jhunrel25/tetris/components/Component;
.super Ljava/lang/Object;
.source "Component.java"


# instance fields
.field protected host:Lgithub/jhunrel25/tetris/activities/GameActivity;


# direct methods
.method public constructor <init>(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 0
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Component;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    .line 48
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/components/Component;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    .line 56
    return-void
.end method

.method public reconnect(Lgithub/jhunrel25/tetris/activities/GameActivity;)V
    .locals 0
    .param p1, "ga"    # Lgithub/jhunrel25/tetris/activities/GameActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lgithub/jhunrel25/tetris/components/Component;->host:Lgithub/jhunrel25/tetris/activities/GameActivity;

    .line 52
    return-void
.end method
