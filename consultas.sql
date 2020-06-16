
/*Challenge 1
La empresa Music for Live desea conocer la cantidad de ventas que ha conseguido en cada país. 
Se sabe que en la tabla invoices se encuentran los registros de cada venta que se ha logrado. 
Arma tu query para resolver este problema!
*/
select BillingCountry as "Country", sum(total) as "Sales"
from invoices
group by BillingCountry
order by Sales desc;

/*Challenge 2
Tu query deberá devolver la información en una tabla con la columna **Country** y la columna **Sales** ordenados de forma descendente por **Sales**
*/
select g.name as "Genre", count(t.GenreId) as "Quantity"
from tracks t
inner join genres g
on t.GenreId = g.GenreId
group by g.Genreid
order by Quantity asc;

/*Challenge 3
La empresa Music for Live desea conocer la cantidad de canciones que cada artista ha vendido. 
Arma tu query para resolver este problema!
*/
select a.Name as "Artist", count(v.InvoiceId) as "Sales"
from artists a
inner join albums l 
on a.ArtistId = l.ArtistId
inner join tracks t
on t.AlbumId = l.AlbumId
inner join invoice_items i
on i.TrackId = t.TrackId
inner join invoices v
on v.InvoiceId = i.InvoiceId
group by a.Name
order by Sales desc;