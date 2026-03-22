.class final Lio/appium/android/apis/app/LoaderCustom$1;
.super Ljava/lang/Object;
.source "LoaderCustom.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lio/appium/android/apis/app/LoaderCustom$AppEntry;Lio/appium/android/apis/app/LoaderCustom$AppEntry;)I
    .locals 3
    .param p1, "object1"    # Lio/appium/android/apis/app/LoaderCustom$AppEntry;
    .param p2, "object2"    # Lio/appium/android/apis/app/LoaderCustom$AppEntry;

    .line 153
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 149
    check-cast p1, Lio/appium/android/apis/app/LoaderCustom$AppEntry;

    check-cast p2, Lio/appium/android/apis/app/LoaderCustom$AppEntry;

    invoke-virtual {p0, p1, p2}, Lio/appium/android/apis/app/LoaderCustom$1;->compare(Lio/appium/android/apis/app/LoaderCustom$AppEntry;Lio/appium/android/apis/app/LoaderCustom$AppEntry;)I

    move-result p1

    return p1
.end method
