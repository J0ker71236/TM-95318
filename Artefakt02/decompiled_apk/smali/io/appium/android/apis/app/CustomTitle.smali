.class public Lio/appium/android/apis/app/CustomTitle;
.super Landroid/app/Activity;
.source "CustomTitle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/CustomTitle;->requestWindowFeature(I)Z

    .line 64
    const v1, 0x7f0b0050

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/CustomTitle;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lio/appium/android/apis/app/CustomTitle;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0b0051

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 67
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    .local v0, "leftText":Landroid/widget/TextView;
    const v1, 0x7f090190

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "rightText":Landroid/widget/TextView;
    const v2, 0x7f090110

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 70
    .local v2, "leftTextEdit":Landroid/widget/EditText;
    const v3, 0x7f090192

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 71
    .local v3, "rightTextEdit":Landroid/widget/EditText;
    const v4, 0x7f09010f

    invoke-virtual {p0, v4}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 72
    .local v4, "leftButton":Landroid/widget/Button;
    const v5, 0x7f090191

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/CustomTitle;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 74
    .local v5, "rightButton":Landroid/widget/Button;
    new-instance v6, Lio/appium/android/apis/app/CustomTitle$1;

    invoke-direct {v6, p0, v0, v2}, Lio/appium/android/apis/app/CustomTitle$1;-><init>(Lio/appium/android/apis/app/CustomTitle;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v6, Lio/appium/android/apis/app/CustomTitle$2;

    invoke-direct {v6, p0, v1, v3}, Lio/appium/android/apis/app/CustomTitle$2;-><init>(Lio/appium/android/apis/app/CustomTitle;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
