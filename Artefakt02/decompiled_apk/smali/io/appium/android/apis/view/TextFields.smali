.class public Lio/appium/android/apis/view/TextFields;
.super Landroid/app/Activity;
.source "TextFields.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TextFields;->setContentView(I)V

    .line 43
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TextFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 44
    .local v0, "passwordInput":Landroid/widget/EditText;
    const v1, 0x7f0900a6

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/TextFields;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "passwordOutput":Landroid/widget/TextView;
    new-instance v2, Lio/appium/android/apis/view/TextFields$1;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/view/TextFields$1;-><init>(Lio/appium/android/apis/view/TextFields;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    return-void
.end method
