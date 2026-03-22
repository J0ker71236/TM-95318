.class public Lio/appium/android/apis/view/LinearLayout8;
.super Landroid/app/Activity;
.source "LinearLayout8.java"


# static fields
.field public static final BOTTOM_ID:I = 0x5

.field public static final CENTER_ID:I = 0x7

.field public static final HORIZONTAL_ID:I = 0x2

.field public static final LEFT_ID:I = 0x6

.field public static final MIDDLE_ID:I = 0x4

.field public static final RIGHT_ID:I = 0x8

.field public static final TOP_ID:I = 0x3

.field public static final VERTICAL_ID:I = 0x1


# instance fields
.field private mLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LinearLayout8;->setContentView(I)V

    .line 54
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LinearLayout8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 60
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f0e01eb

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 61
    const/4 v2, 0x2

    const v3, 0x7f0e01e6

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 62
    const/4 v2, 0x3

    const v3, 0x7f0e01ea

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 63
    const/4 v2, 0x4

    const v3, 0x7f0e01e8

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 64
    const/4 v2, 0x5

    const v3, 0x7f0e01e3

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 65
    const/4 v2, 0x6

    const v3, 0x7f0e01e7

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 66
    const/4 v2, 0x7

    const v3, 0x7f0e01e5

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 67
    const/16 v2, 0x8

    const v3, 0x7f0e01e9

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 69
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 101
    return v1

    .line 97
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 98
    return v1

    .line 94
    :pswitch_2
    iget-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 95
    return v1

    .line 90
    :pswitch_3
    iget-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 91
    return v1

    .line 87
    :pswitch_4
    iget-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 88
    return v1

    .line 84
    :pswitch_5
    iget-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 85
    return v1

    .line 80
    :pswitch_6
    iget-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    return v1

    .line 77
    :pswitch_7
    iget-object v0, p0, Lio/appium/android/apis/view/LinearLayout8;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    return v1

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
