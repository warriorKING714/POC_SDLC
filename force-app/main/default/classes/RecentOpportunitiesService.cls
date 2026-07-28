public with sharing class RecentOpportunitiesService {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> fetchLastCreatedOpportunities() {
        return [
            SELECT Id, Name, StageName, Amount, CloseDate, CreatedDate
            FROM Opportunity
            ORDER BY CreatedDate DESC
            LIMIT 10
        ];
    }
}