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

IQueryable<Ticket> GetByCommonFields(string statusName, string productName = null, string productVersion = null) =>
	Tickets
	.Where(t => t.Status.Name == statusName)
	.Where(t => t.Build.Product.Name == productName || String.IsNullOrEmpty(productName))
	.Where(t => t.Build.Version == productVersion || String.IsNullOrEmpty(productVersion));