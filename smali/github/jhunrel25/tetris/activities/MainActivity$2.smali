.class Lgithub/jhunrel25/tetris/activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/jhunrel25/tetris/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;


# direct methods
.method constructor <init>(Lgithub/jhunrel25/tetris/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgithub/jhunrel25/tetris/activities/MainActivity$2;->this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/MainActivity$2;->this$0:Lgithub/jhunrel25/tetris/activities/MainActivity;

    invoke-virtual {v0}, Lgithub/jhunrel25/tetris/activities/MainActivity;->start()V

    .line 130
    return-void
.end method
