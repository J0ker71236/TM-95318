.class public final Lio/appium/android/apis/app/LoaderThrottle$MainTable;
.super Ljava/lang/Object;
.source "LoaderThrottle.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainTable"
.end annotation


# static fields
.field public static final COLUMN_NAME_DATA:Ljava/lang/String; = "data"

.field public static final CONTENT_ID_URI_BASE:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.example.api-demos-throttle"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.example.api-demos-throttle"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "data COLLATE LOCALIZED ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "main"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const-string v0, "content://io.appium.android.apis.app.LoaderThrottle/main"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lio/appium/android/apis/app/LoaderThrottle$MainTable;->CONTENT_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "content://io.appium.android.apis.app.LoaderThrottle/main/"

    .line 90
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lio/appium/android/apis/app/LoaderThrottle$MainTable;->CONTENT_ID_URI_BASE:Landroid/net/Uri;

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
