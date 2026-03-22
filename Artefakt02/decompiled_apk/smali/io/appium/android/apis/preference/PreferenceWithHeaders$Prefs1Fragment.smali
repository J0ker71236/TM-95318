.class public Lio/appium/android/apis/preference/PreferenceWithHeaders$Prefs1Fragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceWithHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/preference/PreferenceWithHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prefs1Fragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lio/appium/android/apis/preference/PreferenceWithHeaders$Prefs1Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f110000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 71
    const v0, 0x7f11000b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/PreferenceWithHeaders$Prefs1Fragment;->addPreferencesFromResource(I)V

    .line 72
    return-void
.end method
