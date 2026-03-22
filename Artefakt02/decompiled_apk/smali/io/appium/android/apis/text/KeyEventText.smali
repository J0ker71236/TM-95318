.class public Lio/appium/android/apis/text/KeyEventText;
.super Landroid/app/Activity;
.source "KeyEventText.java"


# instance fields
.field private mText:Lio/appium/android/apis/text/LogTextBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/text/KeyEventText;)Lio/appium/android/apis/text/LogTextBox;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/text/KeyEventText;

    .line 32
    iget-object v0, p0, Lio/appium/android/apis/text/KeyEventText;->mText:Lio/appium/android/apis/text/LogTextBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lio/appium/android/apis/text/KeyEventText;->setContentView(I)V

    .line 42
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/text/KeyEventText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/text/LogTextBox;

    iput-object v0, p0, Lio/appium/android/apis/text/KeyEventText;->mText:Lio/appium/android/apis/text/LogTextBox;

    .line 44
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/text/KeyEventText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    .local v0, "clearButton":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/text/KeyEventText$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/text/KeyEventText$1;-><init>(Lio/appium/android/apis/text/KeyEventText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/text/KeyEventText;->mText:Lio/appium/android/apis/text/LogTextBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[keycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/text/LogTextBox;->append(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/text/KeyEventText;->mText:Lio/appium/android/apis/text/LogTextBox;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lio/appium/android/apis/text/LogTextBox;->append(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 54
    iget-object v0, p0, Lio/appium/android/apis/text/KeyEventText;->mText:Lio/appium/android/apis/text/LogTextBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[keycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/text/LogTextBox;->append(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/text/KeyEventText;->mText:Lio/appium/android/apis/text/LogTextBox;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lio/appium/android/apis/text/LogTextBox;->append(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method
