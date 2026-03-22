.class public Lio/appium/android/apis/view/Grid2;
.super Landroid/app/Activity;
.source "Grid2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/Grid2$ImageAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Grid2;->setContentView(I)V

    .line 42
    const v0, 0x7f090138

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Grid2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 43
    .local v0, "g":Landroid/widget/GridView;
    new-instance v1, Lio/appium/android/apis/view/Grid2$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/view/Grid2$ImageAdapter;-><init>(Lio/appium/android/apis/view/Grid2;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void
.end method
