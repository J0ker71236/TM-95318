.class final enum Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
.super Ljava/lang/Enum;
.source "TouchPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/TouchPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PaintMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/appium/android/apis/graphics/TouchPaint$PaintMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

.field public static final enum Draw:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

.field public static final enum Erase:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

.field public static final enum Splat:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 218
    new-instance v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    const-string v1, "Draw"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Draw:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    .line 219
    new-instance v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    const-string v1, "Splat"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Splat:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    .line 220
    new-instance v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    const-string v1, "Erase"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Erase:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    .line 217
    const/4 v0, 0x3

    new-array v0, v0, [Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    sget-object v1, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Draw:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Splat:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Erase:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    aput-object v1, v0, v4

    sput-object v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->$VALUES:[Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 217
    const-class v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    return-object v0
.end method

.method public static values()[Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    .locals 1

    .line 217
    sget-object v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->$VALUES:[Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    invoke-virtual {v0}, [Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    return-object v0
.end method
