.class public Lio/appium/android/apis/view/RadioGroup1;
.super Landroid/app/Activity;
.source "RadioGroup1.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChoice:Landroid/widget/TextView;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 65
    const v0, 0x7f0e0268

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RadioGroup1;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "selection":Ljava/lang/String;
    const v1, 0x7f0e0267

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/RadioGroup1;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "none":Ljava/lang/String;
    iget-object v2, p0, Lio/appium/android/apis/view/RadioGroup1;->mChoice:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b00c6

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RadioGroup1;->setContentView(I)V

    .line 42
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RadioGroup1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 45
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "newRadioButton":Landroid/widget/RadioButton;
    const v1, 0x7f0e0269

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 47
    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 48
    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 51
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const v2, 0x7f0e0268

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RadioGroup1;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "selection":Ljava/lang/String;
    iget-object v3, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 56
    const v3, 0x7f090069

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/RadioGroup1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lio/appium/android/apis/view/RadioGroup1;->mChoice:Landroid/widget/TextView;

    .line 57
    iget-object v3, p0, Lio/appium/android/apis/view/RadioGroup1;->mChoice:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/appium/android/apis/view/RadioGroup1;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v3, 0x7f09006b

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/RadioGroup1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 61
    .local v3, "clearButton":Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
