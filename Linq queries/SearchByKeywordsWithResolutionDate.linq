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

#load "GetByResolutionDate.linq"
#load "SearchByKeywords.linq"

IEnumerable<Ticket> SearchByKeywordsWithResolutionDate(
	IEnumerable<string> keywords, DateTime resolvedFrom, DateTime resolvedTo,
	string productName = null, string productVersion = null
	) =>
		FilterByKeywords(
			GetByResolutionDate(resolvedFrom, resolvedTo, productName, productVersion),
			keywords
		);