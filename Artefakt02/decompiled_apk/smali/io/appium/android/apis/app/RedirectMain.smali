.class public Lio/appium/android/apis/app/RedirectMain;
.super Landroid/app/Activity;
.source "RedirectMain.java"


# static fields
.field static final INIT_TEXT_REQUEST:I = 0x0

.field static final NEW_TEXT_REQUEST:I = 0x1


# instance fields
.field private mClearListener:Landroid/view/View$OnClickListener;

.field private mNewListener:Landroid/view/View$OnClickListener;

.field private mTextPref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    new-instance v0, Lio/appium/android/apis/app/RedirectMain$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RedirectMain$1;-><init>(Lio/appium/android/apis/app/RedirectMain;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RedirectMain;->mClearListener:Landroid/view/View$OnClickListener;

    .line 113
    new-instance v0, Lio/appium/android/apis/app/RedirectMain$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RedirectMain$2;-><init>(Lio/appium/android/apis/app/RedirectMain;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RedirectMain;->mNewListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private final loadPrefs()Z
    .locals 4

    .line 92
    const-string v0, "RedirectData"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/RedirectMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "text"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/app/RedirectMain;->mTextPref:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lio/appium/android/apis/app/RedirectMain;->mTextPref:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 96
    const v1, 0x7f09020c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RedirectMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lio/appium/android/apis/app/RedirectMain;->mTextPref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v2, 0x1

    return v2

    .line 101
    .end local v1    # "text":Landroid/widget/TextView;
    :cond_0
    return v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 63
    if-nez p1, :cond_1

    .line 66
    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p0}, Lio/appium/android/apis/app/RedirectMain;->finish()V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lio/appium/android/apis/app/RedirectMain;->loadPrefs()Z

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    invoke-direct {p0}, Lio/appium/android/apis/app/RedirectMain;->loadPrefs()Z

    .line 85
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b00cc

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RedirectMain;->setContentView(I)V

    .line 44
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RedirectMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    .local v0, "clearButton":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/RedirectMain;->mClearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v1, 0x7f090141

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RedirectMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 47
    .local v1, "newButton":Landroid/widget/Button;
    iget-object v2, p0, Lio/appium/android/apis/app/RedirectMain;->mNewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-direct {p0}, Lio/appium/android/apis/app/RedirectMain;->loadPrefs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/RedirectGetter;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lio/appium/android/apis/app/RedirectMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 58
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
