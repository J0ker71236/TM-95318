.class public Lio/appium/android/apis/preference/DefaultValues;
.super Landroid/preference/PreferenceActivity;
.source "DefaultValues.java"


# static fields
.field static final PREFS_NAME:Ljava/lang/String; = "defaults"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    const-string v0, "defaults"

    const/4 v1, 0x0

    const v2, 0x7f110002

    invoke-static {p0, v0, v1, v2, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 59
    const-string v0, "defaults"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lio/appium/android/apis/preference/DefaultValues;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/preference/DefaultValues;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "defaults"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 53
    const v0, 0x7f110002

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/DefaultValues;->addPreferencesFromResource(I)V

    .line 54
    return-void
.end method
