.class public Lio/appium/android/apis/view/LayoutAnimation3;
.super Landroid/app/ListActivity;
.source "LayoutAnimation3.java"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Bordeaux"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Lyon"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Marseille"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Nancy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Paris"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Toulouse"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Strasbourg"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lio/appium/android/apis/view/LayoutAnimation3;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LayoutAnimation3;->setContentView(I)V

    .line 31
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lio/appium/android/apis/view/LayoutAnimation3;->mStrings:[Ljava/lang/String;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LayoutAnimation3;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    return-void
.end method
