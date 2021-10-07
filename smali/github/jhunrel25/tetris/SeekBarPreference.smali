.class public Lgithub/jhunrel25/tetris/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final ANDROIDNS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DEFAULT_VALUE:I = 0x32

.field private static final ROBOBUNNYNS:Ljava/lang/String; = "http://robobunny.com"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentValue:I

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsRight:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->TAG:Ljava/lang/String;

    .line 62
    const/16 v0, 0x64

    iput v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMaxValue:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mInterval:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, p2}, Lgithub/jhunrel25/tetris/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->TAG:Ljava/lang/String;

    .line 62
    const/16 v0, 0x64

    iput v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMaxValue:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mInterval:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1, p2}, Lgithub/jhunrel25/tetris/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method private getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 111
    move-object v0, p4

    .line 113
    :cond_0
    return-object v0
.end method

.method private initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p2}, Lgithub/jhunrel25/tetris/SeekBarPreference;->setValuesFromXml(Landroid/util/AttributeSet;)V

    .line 84
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 85
    iget-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMaxValue:I

    iget v2, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 86
    iget-object v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 87
    return-void
.end method

.method private setValuesFromXml(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "max"

    const/16 v5, 0x64

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMaxValue:I

    .line 91
    const-string v3, "http://robobunny.com"

    const-string v4, "min"

    const/4 v5, 0x0

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    .line 93
    const-string v3, "http://robobunny.com"

    const-string v4, "unitsLeft"

    const-string v5, ""

    invoke-direct {p0, p1, v3, v4, v5}, Lgithub/jhunrel25/tetris/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 94
    const-string v3, "http://robobunny.com"

    const-string v4, "units"

    const-string v5, ""

    invoke-direct {p0, p1, v3, v4, v5}, Lgithub/jhunrel25/tetris/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "units":Ljava/lang/String;
    const-string v3, "http://robobunny.com"

    const-string v4, "unitsRight"

    invoke-direct {p0, p1, v3, v4, v2}, Lgithub/jhunrel25/tetris/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 98
    :try_start_0
    const-string v3, "http://robobunny.com"

    const-string v4, "interval"

    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "newInterval":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "newInterval":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string v4, "Invalid interval value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 143
    :try_start_0
    iget-object v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 144
    .local v2, "oldContainer":Landroid/view/ViewParent;
    const v3, 0x7f0d002c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 146
    .local v1, "newContainer":Landroid/view/ViewGroup;
    if-eq v2, v1, :cond_1

    .line 148
    if-eqz v2, :cond_0

    .line 149
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "oldContainer":Landroid/view/ViewParent;
    iget-object v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 153
    iget-object v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    .line 154
    const/4 v5, -0x2

    .line 153
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "newContainer":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lgithub/jhunrel25/tetris/SeekBarPreference;->updateView(Landroid/view/View;)V

    .line 162
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error binding view: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 122
    .local v2, "layout":Landroid/widget/RelativeLayout;
    :try_start_0
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 124
    .local v3, "mInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v3    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string v5, "Error creating seek bar preference"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 228
    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 229
    .local v0, "defaultValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 194
    iget v1, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    add-int v0, p2, v1

    .line 196
    .local v0, "newValue":I
    iget v1, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 197
    iget v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMaxValue:I

    .line 204
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgithub/jhunrel25/tetris/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 205
    iget v1, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mCurrentValue:I

    iget v2, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 214
    :goto_1
    return-void

    .line 198
    :cond_1
    iget v1, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    if-ge v0, v1, :cond_2

    .line 199
    iget v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    goto :goto_0

    .line 200
    :cond_2
    iget v1, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mInterval:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mInterval:I

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    .line 201
    int-to-float v1, v0

    iget v2, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mInterval:I

    mul-int v0, v1, v2

    goto :goto_0

    .line 210
    :cond_3
    iput v0, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mCurrentValue:I

    .line 211
    iget-object v1, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0, v0}, Lgithub/jhunrel25/tetris/SeekBarPreference;->persistInt(I)Z

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 6
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v3}, Lgithub/jhunrel25/tetris/SeekBarPreference;->getPersistedInt(I)I

    move-result v3

    iput v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mCurrentValue:I

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    const/4 v2, 0x0

    .line 242
    .local v2, "temp":I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 248
    :goto_1
    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/SeekBarPreference;->persistInt(I)Z

    .line 249
    iput v2, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mCurrentValue:I

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid default value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 217
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 221
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/SeekBarPreference;->notifyChanged()V

    .line 222
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0

    .line 173
    .local v2, "layout":Landroid/widget/RelativeLayout;
    const v5, 0x7f0d002a

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    .line 174
    iget-object v5, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget v6, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mCurrentValue:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v5, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 177
    iget-object v5, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mCurrentValue:I

    iget v7, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mMinValue:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 179
    const v5, 0x7f0d0029

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    .local v4, "unitsRight":Landroid/widget/TextView;
    iget-object v5, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const v5, 0x7f0d002b

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 183
    .local v3, "unitsLeft":Landroid/widget/TextView;
    iget-object v5, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .end local v3    # "unitsLeft":Landroid/widget/TextView;
    .end local v4    # "unitsRight":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lgithub/jhunrel25/tetris/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string v6, "Error updating seek bar preference"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
