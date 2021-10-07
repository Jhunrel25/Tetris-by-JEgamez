.class public Lgithub/jhunrel25/tetris/Square;
.super Ljava/lang/Object;
.source "Square.java"


# static fields
.field public static final type_blue:I = 0x1

.field public static final type_cyan:I = 0x7

.field public static final type_empty:I = 0x0

.field public static final type_green:I = 0x5

.field public static final type_magenta:I = 0x6

.field public static final type_orange:I = 0x2

.field public static final type_red:I = 0x4

.field public static final type_yellow:I = 0x3


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field private canv:Landroid/graphics/Canvas;

.field private paint:Landroid/graphics/Paint;

.field private phantomAlpha:I

.field private phantomBM:Landroid/graphics/Bitmap;

.field private phantomCanv:Landroid/graphics/Canvas;

.field private squaresize:I

.field private type:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lgithub/jhunrel25/tetris/Square;->type:I

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lgithub/jhunrel25/tetris/Square;->phantomAlpha:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lgithub/jhunrel25/tetris/Square;->squaresize:I

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 96
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 82
    :pswitch_4
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 85
    :pswitch_5
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 88
    :pswitch_6
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 91
    :pswitch_7
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public clone(Landroid/content/Context;)Lgithub/jhunrel25/tetris/Square;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 119
    new-instance v0, Lgithub/jhunrel25/tetris/Square;

    iget v1, p0, Lgithub/jhunrel25/tetris/Square;->type:I

    invoke-direct {v0, v1, p1}, Lgithub/jhunrel25/tetris/Square;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method

.method public draw(IIILandroid/graphics/Canvas;Z)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "squareSize"    # I
    .param p4, "c"    # Landroid/graphics/Canvas;
    .param p5, "isPhantom"    # Z

    .prologue
    const/4 v3, 0x0

    .line 130
    iget v0, p0, Lgithub/jhunrel25/tetris/Square;->type:I

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v0, p0, Lgithub/jhunrel25/tetris/Square;->squaresize:I

    if-eq p3, v0, :cond_1

    .line 134
    invoke-virtual {p0, p3}, Lgithub/jhunrel25/tetris/Square;->reDraw(I)V

    .line 136
    :cond_1
    if-eqz p5, :cond_2

    .line 137
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->phantomBM:Landroid/graphics/Bitmap;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->bm:Landroid/graphics/Bitmap;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lgithub/jhunrel25/tetris/Square;->type:I

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reDraw(I)V
    .locals 6
    .param p1, "ss"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    iget v0, p0, Lgithub/jhunrel25/tetris/Square;->type:I

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    iput p1, p0, Lgithub/jhunrel25/tetris/Square;->squaresize:I

    .line 106
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/Square;->bm:Landroid/graphics/Bitmap;

    .line 107
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/Square;->phantomBM:Landroid/graphics/Bitmap;

    .line 108
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/Square;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/Square;->canv:Landroid/graphics/Canvas;

    .line 109
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lgithub/jhunrel25/tetris/Square;->phantomBM:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/Square;->phantomCanv:Landroid/graphics/Canvas;

    .line 111
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->canv:Landroid/graphics/Canvas;

    iget v2, p0, Lgithub/jhunrel25/tetris/Square;->squaresize:I

    int-to-float v3, v2

    iget v2, p0, Lgithub/jhunrel25/tetris/Square;->squaresize:I

    int-to-float v4, v2

    iget-object v5, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lgithub/jhunrel25/tetris/Square;->phantomAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    iget-object v0, p0, Lgithub/jhunrel25/tetris/Square;->phantomCanv:Landroid/graphics/Canvas;

    iget v2, p0, Lgithub/jhunrel25/tetris/Square;->squaresize:I

    int-to-float v3, v2

    iget v2, p0, Lgithub/jhunrel25/tetris/Square;->squaresize:I

    int-to-float v4, v2

    iget-object v5, p0, Lgithub/jhunrel25/tetris/Square;->paint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
