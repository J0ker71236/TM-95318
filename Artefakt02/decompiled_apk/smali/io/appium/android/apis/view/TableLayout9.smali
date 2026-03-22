.class public Lio/appium/android/apis/view/TableLayout9;
.super Landroid/app/Activity;
.source "TableLayout9.java"


# instance fields
.field private mShrink:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/TableLayout9;)Z
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/TableLayout9;

    .line 28
    iget-boolean v0, p0, Lio/appium/android/apis/view/TableLayout9;->mShrink:Z

    return v0
.end method

.method static synthetic access$002(Lio/appium/android/apis/view/TableLayout9;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/TableLayout9;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lio/appium/android/apis/view/TableLayout9;->mShrink:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TableLayout9;->setContentView(I)V

    .line 37
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TableLayout9;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 38
    .local v0, "table":Landroid/widget/TableLayout;
    const v1, 0x7f09021d

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/TableLayout9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 39
    .local v1, "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/TableLayout9$1;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/TableLayout9$1;-><init>(Lio/appium/android/apis/view/TableLayout9;Landroid/widget/TableLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->isColumnShrinkable(I)Z

    move-result v2

    iput-boolean v2, p0, Lio/appium/android/apis/view/TableLayout9;->mShrink:Z

    .line 47
    return-void
.end method
