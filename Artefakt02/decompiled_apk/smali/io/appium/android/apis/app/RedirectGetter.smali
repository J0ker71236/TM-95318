.class public Lio/appium/android/apis/app/RedirectGetter;
.super Landroid/app/Activity;
.source "RedirectGetter.java"


# instance fields
.field private mApplyListener:Landroid/view/View$OnClickListener;

.field private mText:Landroid/widget/TextView;

.field private mTextPref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Lio/appium/android/apis/app/RedirectGetter$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RedirectGetter$1;-><init>(Lio/appium/android/apis/app/RedirectGetter;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RedirectGetter;->mApplyListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/RedirectGetter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/RedirectGetter;

    .line 33
    iget-object v0, p0, Lio/appium/android/apis/app/RedirectGetter;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method private final loadPrefs()V
    .locals 3

    .line 62
    const-string v0, "RedirectData"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/RedirectGetter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "text"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/app/RedirectGetter;->mTextPref:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lio/appium/android/apis/app/RedirectGetter;->mTextPref:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    iget-object v2, p0, Lio/appium/android/apis/app/RedirectGetter;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/app/RedirectGetter;->mText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0b00cb

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RedirectGetter;->setContentView(I)V

    .line 46
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RedirectGetter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "applyButton":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/RedirectGetter;->mApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f09020c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RedirectGetter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/app/RedirectGetter;->mText:Landroid/widget/TextView;

    .line 53
    invoke-direct {p0}, Lio/appium/android/apis/app/RedirectGetter;->loadPrefs()V

    .line 54
    return-void
.end method
