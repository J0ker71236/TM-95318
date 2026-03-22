.class public Lio/appium/android/apis/view/TableLayout10;
.super Landroid/app/Activity;
.source "TableLayout10.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0b0106

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TableLayout10;->setContentView(I)V

    .line 30
    return-void
.end method
