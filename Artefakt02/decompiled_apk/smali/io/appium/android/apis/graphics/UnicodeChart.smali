.class public Lio/appium/android/apis/graphics/UnicodeChart;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "UnicodeChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/UnicodeChart$SampleView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/UnicodeChart;->requestWindowFeature(I)Z

    .line 34
    new-instance v0, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/UnicodeChart$SampleView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/UnicodeChart;->setContentView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
