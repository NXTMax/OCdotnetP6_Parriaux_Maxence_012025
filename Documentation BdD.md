La colonne *But* se réfère à la [liste des requêtes](./Liste%20des%20requêtes.md)

| Requête | Paramètres | But | Résultat escompté/obtenu | Commentaires |
|---------|------------|-----|--------------------------|--------------|
| GetByCommonFields | statusName:string, productName:string?, productVersion:string? | #1..3, #11..13 |  |  |
| GetByCreationDate | createdFrom:DateTime, createdTo:DateTime, statusName:string, productName:string?, productVersion:string? | #4, #5 |  | Importe GetByCommonFields |
| GetByResolutionDate | resolvedFrom:DateTime, resolvedTo:DateTime, productName:string?, productVersion:string? | #14, #15 |  | Importe GetByCommonFields |