.class public Lio/appium/android/apis/view/PopupMenu1;
.super Landroid/app/Activity;
.source "PopupMenu1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/PopupMenu1;->setContentView(I)V

    .line 37
    return-void
.end method

.method public onPopupButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "button"    # Landroid/view/View;

    .line 40
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 41
    .local v0, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0c000c

    invoke-virtual {v1, v3, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    new-instance v1, Lio/appium/android/apis/view/PopupMenu1$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/PopupMenu1$1;-><init>(Lio/appium/android/apis/view/PopupMenu1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 51
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 52
    return-void
.end method
