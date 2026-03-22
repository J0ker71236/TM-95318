.class public Lio/appium/android/apis/preference/PreferencesFromXml;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesFromXml.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f110010

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/PreferencesFromXml;->addPreferencesFromResource(I)V

    .line 32
    return-void
.end method
