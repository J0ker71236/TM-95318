.class public Lio/appium/android/apis/app/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"


# instance fields
.field private mAddContentListener:Landroid/view/View$OnClickListener;

.field private mRemoveContentListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lio/appium/android/apis/app/DialogActivity$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/DialogActivity$1;-><init>(Lio/appium/android/apis/app/DialogActivity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/DialogActivity;->mAddContentListener:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lio/appium/android/apis/app/DialogActivity$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/DialogActivity$2;-><init>(Lio/appium/android/apis/app/DialogActivity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/DialogActivity;->mRemoveContentListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DialogActivity;->requestWindowFeature(I)Z

    .line 55
    const v1, 0x7f0b0058

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/DialogActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lio/appium/android/apis/app/DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "This is just a test"

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lio/appium/android/apis/app/DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 61
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/DialogActivity;->mAddContentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f09017c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 64
    iget-object v1, p0, Lio/appium/android/apis/app/DialogActivity;->mRemoveContentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method
