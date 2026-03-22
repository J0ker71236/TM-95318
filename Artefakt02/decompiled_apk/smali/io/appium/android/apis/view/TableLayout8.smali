.class public Lio/appium/android/apis/view/TableLayout8;
.super Landroid/app/Activity;
.source "TableLayout8.java"


# instance fields
.field private mStretch:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/TableLayout8;)Z
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/TableLayout8;

    .line 31
    iget-boolean v0, p0, Lio/appium/android/apis/view/TableLayout8;->mStretch:Z

    return v0
.end method

.method static synthetic access$002(Lio/appium/android/apis/view/TableLayout8;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/TableLayout8;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lio/appium/android/apis/view/TableLayout8;->mStretch:Z

    return p1
.end method

.method private appendRow(Landroid/widget/TableLayout;)V
    .locals 5
    .param p1, "table"    # Landroid/widget/TableLayout;

    .line 55
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "row":Landroid/widget/TableRow;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, "label":Landroid/widget/TextView;
    const v2, 0x7f0e0387

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v3, "shortcut":Landroid/widget/TextView;
    const v4, 0x7f0e0381

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 63
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    const/16 v2, 0x35

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v2}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0b010f

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TableLayout8;->setContentView(I)V

    .line 40
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TableLayout8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 41
    .local v0, "table":Landroid/widget/TableLayout;
    const v1, 0x7f09021d

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/TableLayout8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 42
    .local v1, "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/TableLayout8$1;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/TableLayout8$1;-><init>(Lio/appium/android/apis/view/TableLayout8;Landroid/widget/TableLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->isColumnStretchable(I)Z

    move-result v2

    iput-boolean v2, p0, Lio/appium/android/apis/view/TableLayout8;->mStretch:Z

    .line 51
    invoke-direct {p0, v0}, Lio/appium/android/apis/view/TableLayout8;->appendRow(Landroid/widget/TableLayout;)V

    .line 52
    return-void
.end method
