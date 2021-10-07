.class public Lgithub/jhunrel25/tetris/activities/HelpActivity;
.super Landroid/preference/PreferenceActivity;
.source "HelpActivity.java"


# instance fields
.field private dialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lgithub/jhunrel25/tetris/activities/HelpActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity;->dialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 139
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->finish()V

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 38
    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->addPreferencesFromResource(I)V

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 41
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->setVolumeControlStream(I)V

    .line 48
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity;->dialog:Landroid/app/AlertDialog$Builder;

    .line 49
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity;->dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 50
    iget-object v2, p0, Lgithub/jhunrel25/tetris/activities/HelpActivity;->dialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a0002

    new-instance v4, Lgithub/jhunrel25/tetris/activities/HelpActivity$1;

    invoke-direct {v4, p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity$1;-><init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    const-string v2, "pref_help_scoring"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 59
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Lgithub/jhunrel25/tetris/activities/HelpActivity$2;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity$2;-><init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    const-string v2, "pref_help_levels"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 70
    new-instance v2, Lgithub/jhunrel25/tetris/activities/HelpActivity$3;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity$3;-><init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    const-string v2, "pref_help_vibration"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 81
    new-instance v2, Lgithub/jhunrel25/tetris/activities/HelpActivity$4;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity$4;-><init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    const-string v2, "pref_help_apm"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 92
    new-instance v2, Lgithub/jhunrel25/tetris/activities/HelpActivity$5;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity$5;-><init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    const-string v2, "pref_help_fps"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 103
    new-instance v2, Lgithub/jhunrel25/tetris/activities/HelpActivity$6;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity$6;-><init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    const-string v2, "pref_help_randomizer"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 114
    new-instance v2, Lgithub/jhunrel25/tetris/activities/HelpActivity$7;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity$7;-><init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    const-string v2, "pref_help_resumability"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/HelpActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 125
    new-instance v2, Lgithub/jhunrel25/tetris/activities/HelpActivity$8;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/HelpActivity$8;-><init>(Lgithub/jhunrel25/tetris/activities/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    return-void
.end method
