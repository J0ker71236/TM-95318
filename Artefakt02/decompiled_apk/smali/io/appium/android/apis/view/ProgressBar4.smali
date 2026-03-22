.class public Lio/appium/android/apis/view/ProgressBar4;
.super Landroid/app/Activity;
.source "ProgressBar4.java"


# instance fields
.field private mToggleIndeterminate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/view/ProgressBar4;->mToggleIndeterminate:Z

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/ProgressBar4;)Z
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/ProgressBar4;

    .line 31
    iget-boolean v0, p0, Lio/appium/android/apis/view/ProgressBar4;->mToggleIndeterminate:Z

    return v0
.end method

.method static synthetic access$002(Lio/appium/android/apis/view/ProgressBar4;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/ProgressBar4;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lio/appium/android/apis/view/ProgressBar4;->mToggleIndeterminate:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ProgressBar4;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ProgressBar4;->setContentView(I)V

    .line 41
    iget-boolean v0, p0, Lio/appium/android/apis/view/ProgressBar4;->mToggleIndeterminate:Z

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ProgressBar4;->setProgressBarIndeterminateVisibility(Z)V

    .line 43
    const v0, 0x7f09021d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ProgressBar4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/view/ProgressBar4$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/ProgressBar4$1;-><init>(Lio/appium/android/apis/view/ProgressBar4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
