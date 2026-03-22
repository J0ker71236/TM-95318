.class public Lio/appium/android/apis/os/MorseCode;
.super Landroid/app/Activity;
.source "MorseCode.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lio/appium/android/apis/os/MorseCode$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/os/MorseCode$1;-><init>(Lio/appium/android/apis/os/MorseCode;)V

    iput-object v0, p0, Lio/appium/android/apis/os/MorseCode;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/os/MorseCode;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/os/MorseCode;

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/os/MorseCode;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/MorseCode;->setContentView(I)V

    .line 72
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/MorseCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/os/MorseCode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/MorseCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/os/MorseCode;->mTextView:Landroid/widget/TextView;

    .line 76
    return-void
.end method
