.class public Lio/appium/android/apis/view/GridLayout3;
.super Landroid/app/Activity;
.source "GridLayout3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/view/View;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/GridLayout;

    invoke-direct {v1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "p":Landroid/widget/GridLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 42
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 44
    .local v4, "configuration":Landroid/content/res/Configuration;
    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_0

    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 50
    :goto_0
    invoke-static {v3}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    .line 51
    .local v5, "titleRow":Landroid/widget/GridLayout$Spec;
    invoke-static {v2}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    .line 52
    .local v6, "introRow":Landroid/widget/GridLayout$Spec;
    const/4 v7, 0x2

    sget-object v8, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    invoke-static {v7, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    .line 53
    .local v7, "emailRow":Landroid/widget/GridLayout$Spec;
    sget-object v8, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    const/4 v9, 0x3

    invoke-static {v9, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    .line 54
    .local v8, "passwordRow":Landroid/widget/GridLayout$Spec;
    const/4 v10, 0x5

    invoke-static {v10}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    .line 55
    .local v10, "button1Row":Landroid/widget/GridLayout$Spec;
    const/4 v11, 0x6

    invoke-static {v11}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    .line 57
    .local v11, "button2Row":Landroid/widget/GridLayout$Spec;
    sget-object v12, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    const/4 v13, 0x4

    invoke-static {v3, v13, v12}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v12

    .line 58
    .local v12, "centerInAllColumns":Landroid/widget/GridLayout$Spec;
    sget-object v14, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v3, v13, v14}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v13

    .line 59
    .local v13, "leftAlignInAllColumns":Landroid/widget/GridLayout$Spec;
    sget-object v14, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v3, v14}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    .line 60
    .local v3, "labelColumn":Landroid/widget/GridLayout$Spec;
    sget-object v14, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v2, v14}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    .line 61
    .local v2, "fieldColumn":Landroid/widget/GridLayout$Spec;
    invoke-static {v9}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v14

    .line 62
    .local v14, "defineLastColumn":Landroid/widget/GridLayout$Spec;
    sget-object v15, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v9, v15}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v9

    .line 65
    .local v9, "fillLastColumn":Landroid/widget/GridLayout$Spec;
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v15, "c":Landroid/widget/TextView;
    move-object/from16 v16, v4

    .end local v4    # "configuration":Landroid/content/res/Configuration;
    .local v16, "configuration":Landroid/content/res/Configuration;
    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    const-string v4, "Email setup"

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v4, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v4, v5, v12}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v1, v15, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .end local v15    # "c":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v4, "c":Landroid/widget/TextView;
    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    const-string v15, "You can configure email in a few simple steps:"

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v15, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v15, v6, v13}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v1, v4, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .end local v4    # "c":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    .restart local v4    # "c":Landroid/widget/TextView;
    const-string v15, "Email address:"

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v15, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v15, v7, v3}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v1, v4, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .end local v4    # "c":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 83
    .local v4, "c":Landroid/widget/EditText;
    const/16 v15, 0xa

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setEms(I)V

    .line 84
    const/16 v15, 0x21

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 85
    new-instance v15, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v15, v7, v2}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v1, v4, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .end local v4    # "c":Landroid/widget/EditText;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v4, "c":Landroid/widget/TextView;
    const-string v15, "Password:"

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v15, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v15, v8, v3}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v1, v4, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v4    # "c":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v4    # "c":Landroid/widget/TextView;
    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setEms(I)V

    .line 95
    const/16 v15, 0x81

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setInputType(I)V

    .line 96
    new-instance v15, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v15, v8, v2}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v1, v4, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .end local v4    # "c":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 100
    .local v4, "c":Landroid/widget/Button;
    const-string v15, "Manual setup"

    invoke-virtual {v4, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v15, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v15, v10, v14}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v1, v4, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .end local v4    # "c":Landroid/widget/Button;
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 105
    .restart local v4    # "c":Landroid/widget/Button;
    const-string v15, "Next"

    invoke-virtual {v4, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v15, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v15, v11, v9}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v1, v4, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .end local v4    # "c":Landroid/widget/Button;
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {p0}, Lio/appium/android/apis/view/GridLayout3;->create(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GridLayout3;->setContentView(Landroid/view/View;)V

    .line 115
    return-void
.end method
