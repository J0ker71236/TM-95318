.class public Lio/appium/android/apis/view/AutoComplete3;
.super Landroid/app/Activity;
.source "AutoComplete3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/AutoComplete3;->setContentView(I)V

    .line 34
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lio/appium/android/apis/view/AutoComplete1;->COUNTRIES:[Ljava/lang/String;

    const v2, 0x109000a

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 37
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    nop

    .line 38
    const v1, 0x7f0900a4

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/AutoComplete3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 39
    .local v1, "textView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    const v2, 0x7f0900a7

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/AutoComplete3;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 41
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method
