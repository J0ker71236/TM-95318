.class public Lio/appium/android/apis/view/SplitTouchView;
.super Landroid/app/Activity;
.source "SplitTouchView.java"


# instance fields
.field private final itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private responseIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/SplitTouchView;->responseIndex:I

    .line 54
    new-instance v0, Lio/appium/android/apis/view/SplitTouchView$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/SplitTouchView$1;-><init>(Lio/appium/android/apis/view/SplitTouchView;)V

    iput-object v0, p0, Lio/appium/android/apis/view/SplitTouchView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$008(Lio/appium/android/apis/view/SplitTouchView;)I
    .locals 2
    .param p0, "x0"    # Lio/appium/android/apis/view/SplitTouchView;

    .line 35
    iget v0, p0, Lio/appium/android/apis/view/SplitTouchView;->responseIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appium/android/apis/view/SplitTouchView;->responseIndex:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SplitTouchView;->setContentView(I)V

    .line 41
    const v0, 0x7f090114

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SplitTouchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 42
    .local v0, "list1":Landroid/widget/ListView;
    const v1, 0x7f090115

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/SplitTouchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 43
    .local v1, "list2":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v3, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    const v4, 0x1090003

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 45
    .local v2, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    iget-object v3, p0, Lio/appium/android/apis/view/SplitTouchView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    iget-object v3, p0, Lio/appium/android/apis/view/SplitTouchView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    return-void
.end method
