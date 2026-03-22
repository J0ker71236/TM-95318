.class public Lio/appium/android/apis/preference/PreferenceWithHeaders;
.super Landroid/preference/PreferenceActivity;
.source "PreferenceWithHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/preference/PreferenceWithHeaders$Prefs2Fragment;,
        Lio/appium/android/apis/preference/PreferenceWithHeaders$Prefs1FragmentInner;,
        Lio/appium/android/apis/preference/PreferenceWithHeaders$Prefs1Fragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f11000e

    invoke-virtual {p0, v0, p1}, Lio/appium/android/apis/preference/PreferenceWithHeaders;->loadHeadersFromResource(ILjava/util/List;)V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lio/appium/android/apis/preference/PreferenceWithHeaders;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "button":Landroid/widget/Button;
    const-string v1, "Some action"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/PreferenceWithHeaders;->setListFooter(Landroid/view/View;)V

    .line 46
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method
