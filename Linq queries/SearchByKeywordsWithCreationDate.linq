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

#load "GetByCreationDate.linq"
#load "SearchByKeywords.linq"

IEnumerable<Ticket> SearchByKeywordsWithCreationDate(
	IEnumerable<string> keywords, DateTime createdFrom, DateTime createdTo,
	string statusName, string productName = null, string productVersion = null
	) =>
		FilterByKeywords(
			GetByCreationDate(createdFrom, createdTo, statusName, productName, productVersion),
			keywords
		);