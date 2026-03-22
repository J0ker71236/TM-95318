.class public Lio/appium/android/apis/view/List10;
.super Landroid/app/ListActivity;
.source "List10.java"


# static fields
.field private static final GENRES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Action"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Adventure"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Animation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Children"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Comedy"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Documentary"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Drama"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Foreign"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "History"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Independent"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Romance"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Sci-Fi"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Television"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Thriller"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/view/List10;->GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lio/appium/android/apis/view/List10;->GENRES:[Ljava/lang/String;

    const v2, 0x109000f

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List10;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    invoke-virtual {p0}, Lio/appium/android/apis/view/List10;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 40
    .local v0, "listView":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 42
    return-void
.end method
