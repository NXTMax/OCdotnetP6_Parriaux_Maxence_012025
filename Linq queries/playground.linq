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
#load "GetByCreationDate.linq"
#load "GetByResolutionDate.linq"
#load "SearchByKeywords.linq"
#load "SearchByKeywordsWithCreationDate.linq"
#load "SearchByKeywordsWithResolutionDate.linq"

var query = GetByCommonFields("En cours");

query.Select(t => new {
	Statut = t.Status.Name,
	Date_De_Création = t.Creation_date,
	Produit = t.Build.Product.Name,
	Version = t.Build.Version,
	Plateforme = t.Build.OperatingSystem.Name,
	Problème = t.Issue,
	Date_De_Résolution = t.Resolution_date,
	Résolution = t.Resolution
}).Dump();
