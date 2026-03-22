.class public Lio/appium/android/apis/view/CustomPicker1;
.super Landroid/app/Activity;
.source "CustomPicker1.java"


# instance fields
.field private numberPicker1:Landroid/widget/NumberPicker;

.field private textView1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/CustomPicker1;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/CustomPicker1;

    .line 28
    iget-object v0, p0, Lio/appium/android/apis/view/CustomPicker1;->textView1:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/CustomPicker1;->setContentView(I)V

    .line 37
    const v0, 0x7f090154

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/CustomPicker1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lio/appium/android/apis/view/CustomPicker1;->numberPicker1:Landroid/widget/NumberPicker;

    .line 38
    const v0, 0x7f090213

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/CustomPicker1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/view/CustomPicker1;->textView1:Landroid/widget/TextView;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u092a\u0930\u0940\u0915\u094d\u0937\u0923"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u6d4b\u8bd5"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "\u30c6\u30b9\u30c8"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "kupima"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "\u0e01\u0e32\u0e23\u0e17\u0e14\u0e2a\u0e2d\u0e1a"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 41
    .local v0, "values":[Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/view/CustomPicker1;->numberPicker1:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 42
    iget-object v1, p0, Lio/appium/android/apis/view/CustomPicker1;->numberPicker1:Landroid/widget/NumberPicker;

    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 43
    iget-object v1, p0, Lio/appium/android/apis/view/CustomPicker1;->numberPicker1:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 45
    new-instance v1, Lio/appium/android/apis/view/CustomPicker1$1;

    invoke-direct {v1, p0, v0}, Lio/appium/android/apis/view/CustomPicker1$1;-><init>(Lio/appium/android/apis/view/CustomPicker1;[Ljava/lang/String;)V

    .line 52
    .local v1, "myValChangedListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    iget-object v2, p0, Lio/appium/android/apis/view/CustomPicker1;->numberPicker1:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 53
    return-void
.end method
