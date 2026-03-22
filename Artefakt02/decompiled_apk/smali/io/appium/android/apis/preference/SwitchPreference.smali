.class public Lio/appium/android/apis/preference/SwitchPreference;
.super Landroid/preference/PreferenceActivity;
.source "SwitchPreference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "switch"

    const/4 v1, 0x0

    const v2, 0x7f110002

    invoke-static {p0, v0, v1, v2, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 35
    invoke-virtual {p0}, Lio/appium/android/apis/preference/SwitchPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 36
    const v0, 0x7f11000f

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/SwitchPreference;->addPreferencesFromResource(I)V

    .line 37
    return-void
.end method
