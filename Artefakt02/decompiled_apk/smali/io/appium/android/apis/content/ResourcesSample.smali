.class public Lio/appium/android/apis/content/ResourcesSample;
.super Landroid/app/Activity;
.source "ResourcesSample.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ResourcesSample;->setContentView(I)V

    .line 58
    const v0, 0x7f0e0321

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ResourcesSample;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    .local v1, "cs":Ljava/lang/CharSequence;
    const v2, 0x7f0901fb

    invoke-virtual {p0, v2}, Lio/appium/android/apis/content/ResourcesSample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ResourcesSample;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "str":Ljava/lang/String;
    const v4, 0x7f090167

    invoke-virtual {p0, v4}, Lio/appium/android/apis/content/ResourcesSample;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    move-object v4, p0

    .line 76
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 79
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    .end local v1    # "cs":Ljava/lang/CharSequence;
    .local v0, "cs":Ljava/lang/CharSequence;
    const v1, 0x7f090185

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/ResourcesSample;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .end local v2    # "tv":Landroid/widget/TextView;
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
