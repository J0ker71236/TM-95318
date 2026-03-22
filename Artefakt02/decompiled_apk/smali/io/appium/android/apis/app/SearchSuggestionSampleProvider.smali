.class public Lio/appium/android/apis/app/SearchSuggestionSampleProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SearchSuggestionSampleProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "io.appium.android.apis.SuggestionProvider"

.field static final MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 48
    const-string v0, "io.appium.android.apis.SuggestionProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/SearchSuggestionSampleProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 49
    return-void
.end method
