#include <vector>
#import "ios/GameAnalytics.h"
#import "ios/GameAnalyticsCpp.h"
#include <string.h>
#include <stdio.h>

static bool isStringNullOrEmpty(const char* s)
{
    return s == NULL || strlen(s) == 0;
}

void GameAnalyticsCpp::configureAvailableCustomDimensions01(const std::vector<CharArray>& list) {
    NSMutableArray * tmpary = [[NSMutableArray alloc] initWithCapacity: list.size()];
    for (CharArray s : list)
    {
        [tmpary addObject: [NSString stringWithUTF8String: s.array]];
    }
    NSArray *list_array = tmpary;
    [GameAnalytics configureAvailableCustomDimensions01:list_array];
}

void GameAnalyticsCpp::configureAvailableCustomDimensions02(const std::vector<CharArray>& list) {
    NSMutableArray * tmpary = [[NSMutableArray alloc] initWithCapacity: list.size()];
    for (CharArray s : list)
    {
        [tmpary addObject: [NSString stringWithUTF8String: s.array]];
    }
    NSArray *list_array = tmpary;
    [GameAnalytics configureAvailableCustomDimensions02:list_array];
}

void GameAnalyticsCpp::configureAvailableCustomDimensions03(const std::vector<CharArray>& list) {
    NSMutableArray * tmpary = [[NSMutableArray alloc] initWithCapacity: list.size()];
    for (CharArray s : list)
    {
        [tmpary addObject: [NSString stringWithUTF8String: s.array]];
    }
    NSArray *list_array = tmpary;
    [GameAnalytics configureAvailableCustomDimensions03:list_array];
}

void GameAnalyticsCpp::configureAvailableResourceCurrencies(const std::vector<CharArray>& list) {
    NSMutableArray * tmpary = [[NSMutableArray alloc] initWithCapacity: list.size()];
    for (CharArray s : list)
    {
        [tmpary addObject: [NSString stringWithUTF8String: s.array]];
    }
    NSArray *list_array = tmpary;
    [GameAnalytics configureAvailableResourceCurrencies:list_array];
}

void GameAnalyticsCpp::configureAvailableResourceItemTypes(const std::vector<CharArray>& list) {
    NSMutableArray * tmpary = [[NSMutableArray alloc] initWithCapacity: list.size()];
    for (CharArray s : list)
    {
        [tmpary addObject: [NSString stringWithUTF8String: s.array]];
    }
    NSArray *list_array = tmpary;
    [GameAnalytics configureAvailableResourceItemTypes:list_array];
}

void GameAnalyticsCpp::configureBuild(const char *build) {
    NSString *buildString = !isStringNullOrEmpty(build) ? [NSString stringWithUTF8String:build] : nil;
    [GameAnalytics configureBuild:buildString];
}

void GameAnalyticsCpp::configureUserId(const char *userId) {
    NSString *userIdString = !isStringNullOrEmpty(userId) ? [NSString stringWithUTF8String:userId] : nil;
    [GameAnalytics configureUserId:userIdString];
}

void GameAnalyticsCpp::configureSdkGameEngineVersion(const char *gameEngineSdkVersion) {
    NSString *gameEngineSdkVersionString = !isStringNullOrEmpty(gameEngineSdkVersion) ? [NSString stringWithUTF8String:gameEngineSdkVersion] : nil;
    [GameAnalytics configureSdkVersion:gameEngineSdkVersionString];
}

void GameAnalyticsCpp::configureGameEngineVersion(const char *gameEngineVersion) {
    NSString *gameEngineVersionString = !isStringNullOrEmpty(gameEngineVersion) ? [NSString stringWithUTF8String:gameEngineVersion] : nil;
    [GameAnalytics configureEngineVersion:gameEngineVersionString];
}

void GameAnalyticsCpp::initialize(const char *gameKey, const char *gameSecret) {
    NSString *gameKeyString = !isStringNullOrEmpty(gameKey) ? [NSString stringWithUTF8String:gameKey] : nil;
    NSString *gameSecretString = !isStringNullOrEmpty(gameSecret) ? [NSString stringWithUTF8String:gameSecret] : nil;

    [GameAnalytics initializeWithGameKey:gameKeyString gameSecret:gameSecretString];
}

void GameAnalyticsCpp::addBusinessEvent(const char *currency, int amount, const char *itemType, const char *itemId, const char *cartType, const char *receipt, const char *fields) {
    NSString *currencyString = !isStringNullOrEmpty(currency) ? [NSString stringWithUTF8String:currency] : nil;
    NSInteger amountInteger = (NSInteger)amount;
    NSString *itemTypeString = !isStringNullOrEmpty(itemType) ? [NSString stringWithUTF8String:itemType] : nil;
    NSString *itemIdString = !isStringNullOrEmpty(itemId) ? [NSString stringWithUTF8String:itemId] : nil;
    NSString *cartTypeString = !isStringNullOrEmpty(cartType) ? [NSString stringWithUTF8String:cartType] : nil;
    NSString *receiptString = !isStringNullOrEmpty(receipt) ? [NSString stringWithUTF8String:receipt] : nil;
    /*NSString *fieldsString = fields != NULL ? [NSString stringWithUTF8String:fields] : nil;
    NSDictionary *fields_dict = nil;
    if (fieldsString) {
        fields_dict = [NSJSONSerialization JSONObjectWithData:[fieldsString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    }*/

    [GameAnalytics addBusinessEventWithCurrency:currencyString
                                         amount:amountInteger
                                       itemType:itemTypeString
                                         itemId:itemIdString
                                       cartType:cartTypeString
                                        receipt:receiptString
                                         /*fields:fields_dict*/];
}

void GameAnalyticsCpp::addBusinessEventAndAutoFetchReceipt(const char *currency, int amount, const char *itemType, const char *itemId, const char *cartType, const char *fields) {
    NSString *currencyString = !isStringNullOrEmpty(currency) ? [NSString stringWithUTF8String:currency] : nil;
    NSInteger amountInteger = (NSInteger)amount;
    NSString *itemTypeString = !isStringNullOrEmpty(itemType) ? [NSString stringWithUTF8String:itemType] : nil;
    NSString *itemIdString = !isStringNullOrEmpty(itemId) ? [NSString stringWithUTF8String:itemId] : nil;
    NSString *cartTypeString = !isStringNullOrEmpty(cartType) ? [NSString stringWithUTF8String:cartType] : nil;
    /*NSString *fieldsString = fields != NULL ? [NSString stringWithUTF8String:fields] : nil;
    NSDictionary *fields_dict = nil;
    if (fieldsString) {
        fields_dict = [NSJSONSerialization JSONObjectWithData:[fieldsString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    }*/

    [GameAnalytics addBusinessEventWithCurrency:currencyString
                                         amount:amountInteger
                                       itemType:itemTypeString
                                         itemId:itemIdString
                                       cartType:cartTypeString
                               autoFetchReceipt:TRUE
                                         /*fields:fields_dict*/];
}

void GameAnalyticsCpp::addResourceEvent(int flowType, const char *currency, float amount, const char *itemType, const char *itemId, const char *fields) {
    NSString *currencyString = !isStringNullOrEmpty(currency) ? [NSString stringWithUTF8String:currency] : nil;
    NSNumber *amountNumber = [NSNumber numberWithFloat:amount];
    NSString *itemTypeString = !isStringNullOrEmpty(itemType) ? [NSString stringWithUTF8String:itemType] : nil;
    NSString *itemIdString = !isStringNullOrEmpty(itemId) ? [NSString stringWithUTF8String:itemId] : nil;
    /*NSString *fieldsString = fields != NULL ? [NSString stringWithUTF8String:fields] : nil;
    NSDictionary *fields_dict = nil;
    if (fieldsString) {
        fields_dict = [NSJSONSerialization JSONObjectWithData:[fieldsString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    }*/

    [GameAnalytics addResourceEventWithFlowType:(GAResourceFlowType)flowType
                                       currency:currencyString
                                         amount:amountNumber
                                       itemType:itemTypeString
                                         itemId:itemIdString
                                         /*fields:fields_dict*/];
}

void GameAnalyticsCpp::addProgressionEvent(int progressionStatus, const char *progression01, const char *progression02, const char *progression03, const char *fields) {
    NSString *progression01String = !isStringNullOrEmpty(progression01) ? [NSString stringWithUTF8String:progression01] : nil;
    NSString *progression02String = !isStringNullOrEmpty(progression02) ? [NSString stringWithUTF8String:progression02] : nil;
    NSString *progression03String = !isStringNullOrEmpty(progression03) ? [NSString stringWithUTF8String:progression03] : nil;
    /*NSString *fieldsString = fields != NULL ? [NSString stringWithUTF8String:fields] : nil;
    NSDictionary *fields_dict = nil;
    if (fieldsString) {
        fields_dict = [NSJSONSerialization JSONObjectWithData:[fieldsString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    }*/

    [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)progressionStatus
                                              progression01:progression01String
                                              progression02:progression02String
                                              progression03:progression03String
                                                     /*fields:fields_dict*/];
}

void GameAnalyticsCpp::addProgressionEventWithScore(int progressionStatus, const char *progression01, const char *progression02, const char *progression03, int score, const char *fields) {
    NSString *progression01String = !isStringNullOrEmpty(progression01) ? [NSString stringWithUTF8String:progression01] : nil;
    NSString *progression02String = !isStringNullOrEmpty(progression02) ? [NSString stringWithUTF8String:progression02] : nil;
    NSString *progression03String = !isStringNullOrEmpty(progression03) ? [NSString stringWithUTF8String:progression03] : nil;
    /*NSString *fieldsString = fields != NULL ? [NSString stringWithUTF8String:fields] : nil;
    NSDictionary *fields_dict = nil;
    if (fieldsString) {
        fields_dict = [NSJSONSerialization JSONObjectWithData:[fieldsString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    }*/

    [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)progressionStatus
                                              progression01:progression01String
                                              progression02:progression02String
                                              progression03:progression03String
                                                      score:score
                                                     /*fields:fields_dict*/];
}

void GameAnalyticsCpp::addDesignEvent(const char *eventId, const char *fields) {
    NSString *eventIdString = !isStringNullOrEmpty(eventId) ? [NSString stringWithUTF8String:eventId] : nil;
    /*NSString *fieldsString = fields != NULL ? [NSString stringWithUTF8String:fields] : nil;
    NSDictionary *fields_dict = nil;
    if (fieldsString) {
        fields_dict = [NSJSONSerialization JSONObjectWithData:[fieldsString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    }*/

    [GameAnalytics addDesignEventWithEventId:eventIdString value:nil /*fields:fields_dict*/];
}

void GameAnalyticsCpp::addDesignEventWithValue(const char *eventId, float value, const char *fields) {
    NSString *eventIdString = !isStringNullOrEmpty(eventId) ? [NSString stringWithUTF8String:eventId] : nil;
    NSNumber *valueNumber = [NSNumber numberWithFloat:value];
    /*NSString *fieldsString = fields != NULL ? [NSString stringWithUTF8String:fields] : nil;
    NSDictionary *fields_dict = nil;
    if (fieldsString) {
        fields_dict = [NSJSONSerialization JSONObjectWithData:[fieldsString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    }*/

    [GameAnalytics addDesignEventWithEventId:eventIdString value:valueNumber /*fields:fields_dict*/];
}

void GameAnalyticsCpp::addErrorEvent(int severity, const char *message, const char *fields) {
    NSString *messageString = !isStringNullOrEmpty(message) ? [NSString stringWithUTF8String:message] : nil;
    /*NSString *fieldsString = fields != NULL ? [NSString stringWithUTF8String:fields] : nil;
    NSDictionary *fields_dict = nil;
    if (fieldsString) {
        fields_dict = [NSJSONSerialization JSONObjectWithData:[fieldsString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    }*/

    [GameAnalytics addErrorEventWithSeverity:(GAErrorSeverity)severity message:messageString /*fields:fields_dict*/];
}

void GameAnalyticsCpp::setEnabledInfoLog(bool flag) {
    [GameAnalytics setEnabledInfoLog:flag];
}

void GameAnalyticsCpp::setEnabledVerboseLog(bool flag) {
    [GameAnalytics setEnabledVerboseLog:flag];
}

void GameAnalyticsCpp::setEnabledManualSessionHandling(bool flag) {
    [GameAnalytics setEnabledManualSessionHandling:flag];
}

void GameAnalyticsCpp::setEnabledEventSubmission(bool flag) {
    [GameAnalytics setEnabledEventSubmission:flag];
}

void GameAnalyticsCpp::setEnabledErrorReporting(bool flag) {
    [GameAnalytics setEnabledErrorReporting:flag];
}

void GameAnalyticsCpp::setCustomDimension01(const char *customDimension) {
    NSString *customDimensionString = !isStringNullOrEmpty(customDimension) ? [NSString stringWithUTF8String:customDimension] : nil;
    [GameAnalytics setCustomDimension01:customDimensionString];
}

void GameAnalyticsCpp::setCustomDimension02(const char *customDimension) {
    NSString *customDimensionString = !isStringNullOrEmpty(customDimension) ? [NSString stringWithUTF8String:customDimension] : nil;
    [GameAnalytics setCustomDimension02:customDimensionString];
}

void GameAnalyticsCpp::setCustomDimension03(const char *customDimension) {
    NSString *customDimensionString = !isStringNullOrEmpty(customDimension) ? [NSString stringWithUTF8String:customDimension] : nil;
    [GameAnalytics setCustomDimension03:customDimensionString];
}

void GameAnalyticsCpp::setFacebookId(const char *facebookId) {
    NSString *facebookIdString = !isStringNullOrEmpty(facebookId) ? [NSString stringWithUTF8String:facebookId] : nil;
    [GameAnalytics setFacebookId:facebookIdString];
}

void GameAnalyticsCpp::setGender(const char *gender) {
    NSString *genderString = !isStringNullOrEmpty(gender) ? [NSString stringWithUTF8String:gender] : nil;
    [GameAnalytics setGender:genderString];
}

void GameAnalyticsCpp::setBirthYear(int birthYear) {
    NSInteger birthYearInteger = (NSInteger)birthYear;
    [GameAnalytics setBirthYear:birthYearInteger];
}

void GameAnalyticsCpp::startSession() {
    [GameAnalytics startSession];
}

void GameAnalyticsCpp::endSession() {
    [GameAnalytics endSession];
}

std::vector<char> GameAnalyticsCpp::getCommandCenterValueAsString(const char *key) {
    NSString *keyString = key != NULL ? [NSString stringWithUTF8String:key] : nil;
    NSString *returnValue = [GameAnalytics getCommandCenterValueAsString:keyString];

    std::vector<char> result;
    if(returnValue != nil)
    {
        const char *s = [returnValue UTF8String];
        size_t size = strlen(s);
        for(size_t i = 0; i < size; ++i)
        {
            result.push_back(s[i]);
        }
    }
    result.push_back('\0');
    return result;
}

std::vector<char> GameAnalyticsCpp::getCommandCenterValueAsString(const char *key, const char *defaultValue) {
    NSString *keyString = key != NULL ? [NSString stringWithUTF8String:key] : nil;
    NSString *defaultValueString = key != NULL ? [NSString stringWithUTF8String:defaultValue] : nil;
    NSString *returnValue = [GameAnalytics getCommandCenterValueAsString:keyString defaultValue:defaultValueString];

    std::vector<char> result;
    if(returnValue != nil)
    {
        const char *s = [returnValue UTF8String];
        size_t size = strlen(s);
        for(size_t i = 0; i < size; ++i)
        {
            result.push_back(s[i]);
        }
    }
    result.push_back('\0');
    return result;
}

bool GameAnalyticsCpp::isCommandCenterReady() {
    return [GameAnalytics isCommandCenterReady] ? true : false;
}

std::vector<char> GameAnalyticsCpp::getConfigurationsContentAsString() {
    NSString *returnValue = [GameAnalytics getCommandCenterConfigurations];

    std::vector<char> resultVector;
    if(returnValue != nil)
    {
        const char *s = [returnValue UTF8String];
        size_t size = strlen(s);
        for(size_t i = 0; i < size; ++i)
        {
            resultVector.push_back(s[i]);
        }
    }
    resultVector.push_back('\0');
    return resultVector;
}
