<Query Kind="Statements">
  <Connection>
    <ID>2b2c71b9-8f16-49c5-a2b0-362021bae49a</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Server>(localdb)\MSSQLLocalDB</Server>
    <AllowDateOnlyTimeOnly>true</AllowDateOnlyTimeOnly>
    <DeferDatabasePopulation>true</DeferDatabasePopulation>
    <Database>P6NexaSupport</Database>
    <DriverData>
      <LegacyMFA>false</LegacyMFA>
    </DriverData>
  </Connection>
</Query>

#load "GetByCommonFields.linq"

IEnumerable<Ticket> FilterByKeywords(IQueryable<Ticket> set, IEnumerable<string> keywords) =>
	set.AsEnumerable()
	.Where(t => keywords.All(kw => t.Issue.Contains(kw)));

IEnumerable<Ticket> SearchByKeywords(IEnumerable<string> keywords, string statusName, string productName = null, string productVersion = null) =>
	FilterByKeywords(
		GetByCommonFields(statusName, productName, productVersion),
		keywords
	);
