.class public Lio/appium/android/apis/app/FragmentDialog;
.super Landroid/app/Activity;
.source "FragmentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;
    }
.end annotation


# instance fields
.field mStackLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/app/FragmentDialog;->mStackLevel:I

    return-void
.end method

.method static getNameForNum(I)Ljava/lang/String;
    .locals 1
    .param p0, "num"    # I

    .line 87
    add-int/lit8 v0, p0, -0x1

    rem-int/lit8 v0, v0, 0x6

    packed-switch v0, :pswitch_data_0

    .line 98
    const-string v0, "STYLE_NORMAL"

    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "STYLE_NORMAL with light fullscreen theme"

    return-object v0

    .line 95
    :pswitch_1
    const-string v0, "STYLE_NO_FRAME with light theme"

    return-object v0

    .line 94
    :pswitch_2
    const-string v0, "STYLE_NO_TITLE with light theme"

    return-object v0

    .line 93
    :pswitch_3
    const-string v0, "STYLE_NORMAL with light theme"

    return-object v0

    .line 92
    :pswitch_4
    const-string v0, "STYLE_NORMAL with dark fullscreen theme"

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "STYLE_NO_INPUT (this window can\'t receive input, so you will need to press the bottom show button)"

    return-object v0

    .line 89
    :pswitch_6
    const-string v0, "STYLE_NO_FRAME"

    return-object v0

    .line 88
    :pswitch_7
    const-string v0, "STYLE_NO_TITLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentDialog;->setContentView(I)V

    .line 41
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "tv":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "Example of displaying dialogs with a DialogFragment.  Press the show button below to see the first dialog; pressing successive show buttons will display other dialog styles as a stack, with dismissing or back going to the previous dialog."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v1, 0x7f0901c6

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FragmentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 49
    .local v1, "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/app/FragmentDialog$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/FragmentDialog$1;-><init>(Lio/appium/android/apis/app/FragmentDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v2, "level"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/appium/android/apis/app/FragmentDialog;->mStackLevel:I

    .line 58
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "level"

    iget v1, p0, Lio/appium/android/apis/app/FragmentDialog;->mStackLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method showDialog()V
    .locals 4

    .line 68
    iget v0, p0, Lio/appium/android/apis/app/FragmentDialog;->mStackLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/appium/android/apis/app/FragmentDialog;->mStackLevel:I

    .line 73
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 74
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 75
    .local v1, "prev":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 78
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 81
    iget v2, p0, Lio/appium/android/apis/app/FragmentDialog;->mStackLevel:I

    invoke-static {v2}, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;

    move-result-object v2

    .line 82
    .local v2, "newFragment":Landroid/app/DialogFragment;
    const-string v3, "dialog"

    invoke-virtual {v2, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 83
    return-void
.end method
