.class public Lio/appium/android/apis/view/LinearLayout9;
.super Landroid/app/Activity;
.source "LinearLayout9.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LinearLayout9;->setContentView(I)V

    .line 36
    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LinearLayout9;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 37
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lio/appium/android/apis/view/AutoComplete1;->COUNTRIES:[Ljava/lang/String;

    const v3, 0x1090003

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    return-void
.end method
