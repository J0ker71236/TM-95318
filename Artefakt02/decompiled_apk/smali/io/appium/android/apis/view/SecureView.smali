.class public Lio/appium/android/apis/view/SecureView;
.super Landroid/app/Activity;
.source "SecureView.java"


# instance fields
.field private mClickCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/SecureView;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/SecureView;

    .line 69
    invoke-direct {p0}, Lio/appium/android/apis/view/SecureView;->showOverlay()V

    return-void
.end method

.method static synthetic access$108(Lio/appium/android/apis/view/SecureView;)I
    .locals 2
    .param p0, "x0"    # Lio/appium/android/apis/view/SecureView;

    .line 69
    iget v0, p0, Lio/appium/android/apis/view/SecureView;->mClickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appium/android/apis/view/SecureView;->mClickCount:I

    return v0
.end method

.method private setClickedAction(Landroid/widget/Button;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .line 110
    new-instance v0, Lio/appium/android/apis/view/SecureView$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/SecureView$2;-><init>(Lio/appium/android/apis/view/SecureView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method private setTouchFilter(Landroid/widget/Button;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .line 126
    new-instance v0, Lio/appium/android/apis/view/SecureView$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/SecureView$3;-><init>(Lio/appium/android/apis/view/SecureView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    return-void
.end method

.method private showOverlay()V
    .locals 4

    .line 99
    nop

    .line 100
    invoke-virtual {p0}, Lio/appium/android/apis/view/SecureView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/SecureViewOverlay;

    .line 101
    .local v0, "overlay":Lio/appium/android/apis/view/SecureViewOverlay;
    invoke-virtual {v0, p0}, Lio/appium/android/apis/view/SecureViewOverlay;->setActivityToSpoof(Lio/appium/android/apis/view/SecureView;)V

    .line 103
    new-instance v1, Landroid/widget/Toast;

    invoke-virtual {p0}, Lio/appium/android/apis/view/SecureView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, "toast":Landroid/widget/Toast;
    const/4 v2, 0x0

    const/16 v3, 0x77

    invoke-virtual {v1, v3, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 105
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 106
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SecureView;->setContentView(I)V

    .line 78
    const v0, 0x7f0901b9

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SecureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    .local v0, "toastButton":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/view/SecureView$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/SecureView$1;-><init>(Lio/appium/android/apis/view/SecureView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f0901ba

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/SecureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 86
    .local v1, "unsecureButton":Landroid/widget/Button;
    invoke-direct {p0, v1}, Lio/appium/android/apis/view/SecureView;->setClickedAction(Landroid/widget/Button;)V

    .line 88
    const v2, 0x7f0901b2

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/SecureView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 89
    .local v2, "builtinSecureButton":Landroid/widget/Button;
    invoke-direct {p0, v2}, Lio/appium/android/apis/view/SecureView;->setClickedAction(Landroid/widget/Button;)V

    .line 91
    const v3, 0x7f0901b3

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/SecureView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 92
    .local v3, "customSecureButton":Landroid/widget/Button;
    invoke-direct {p0, v3}, Lio/appium/android/apis/view/SecureView;->setClickedAction(Landroid/widget/Button;)V

    .line 93
    invoke-direct {p0, v3}, Lio/appium/android/apis/view/SecureView;->setTouchFilter(Landroid/widget/Button;)V

    .line 94
    return-void
.end method
