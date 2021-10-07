.class public Lgithub/jhunrel25/tetris/activities/AboutActivity;
.super Landroid/preference/PreferenceActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->finish()V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 62
    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->addPreferencesFromResource(I)V

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 66
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->setVolumeControlStream(I)V

    .line 72
    const-string v2, "pref_license"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 73
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Lgithub/jhunrel25/tetris/activities/AboutActivity$1;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/AboutActivity$1;-><init>(Lgithub/jhunrel25/tetris/activities/AboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    const-string v2, "pref_license_music"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 86
    new-instance v2, Lgithub/jhunrel25/tetris/activities/AboutActivity$2;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/AboutActivity$2;-><init>(Lgithub/jhunrel25/tetris/activities/AboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const-string v2, "pref_version"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 99
    new-instance v2, Lgithub/jhunrel25/tetris/activities/AboutActivity$3;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/AboutActivity$3;-><init>(Lgithub/jhunrel25/tetris/activities/AboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    const-string v2, "pref_author"

    invoke-virtual {p0, v2}, Lgithub/jhunrel25/tetris/activities/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 112
    new-instance v2, Lgithub/jhunrel25/tetris/activities/AboutActivity$4;

    invoke-direct {v2, p0}, Lgithub/jhunrel25/tetris/activities/AboutActivity$4;-><init>(Lgithub/jhunrel25/tetris/activities/AboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    return-void
.end method
