.class public Lio/appium/android/apis/view/List5;
.super Landroid/app/ListActivity;
.source "List5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List5$MyListAdapter;
    }
.end annotation


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 85
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "----------"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Abbaye de Belloc"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Abbaye du Mont des Cats"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Abertam"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Abondance"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Ackawi"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Acorn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Adelost"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Affidelice au Chablis"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Afuega\'l Pitu"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Airag"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Airedale"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Aisy Cendre"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "Allgauer Emmentaler"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "Alverca"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "Ambert"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "American Cheese"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Ami du Chambertin"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "Anejo Enchilado"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "Anneau du Vic-Bilh"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "Anthoriro"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "----------"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    iput-object v0, p0, Lio/appium/android/apis/view/List5;->mStrings:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/List5;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/List5;

    .line 34
    iget-object v0, p0, Lio/appium/android/apis/view/List5;->mStrings:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lio/appium/android/apis/view/List5$MyListAdapter;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/view/List5$MyListAdapter;-><init>(Lio/appium/android/apis/view/List5;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List5;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    return-void
.end method
