% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wtd.R
\encoding{UTF-8}
\name{wtd}
\alias{wtd}
\title{Calcul de la performance wtd : week-to-date.}
\usage{
wtd(data, date, w = 0, x, unite = 1, decimal = 0, cumul = FALSE)
}
\arguments{
\item{data}{Un objet de type data.frame contenant au minimum la serie numerique et un vecteur de type date.}

\item{date}{La date que l'on souhaite connaitre la valeur de la serie.}

\item{w}{Une valeur de type entier qui permet de décaler la semaine par rapport à la date introduite. Sa valeur par defaut est \code{0}.}

\item{x}{Un vecteur de type numeric contenant les observations du phénomène à etudier.}

\item{unite}{Un valeur de type numeric, definissant l'ordre d'echelle d'affisage du resultat de la fonction. Sa valeur par defaut est \code{1}.}

\item{decimal}{Un objet de type numeric permettant de préciser le nombre d'entier à afficher après la virgule. Sa valeur par defaut est \code{0}.}

\item{cumul}{Un objet de type logic qui permet d'indiquer si le vecteur \code{x} contient des valeurs cumulées. Sa valeur par defaut est \code{FALSE}.}
}
\value{
Un vecteur de longieur 1.
}
\description{
Cette fonction permet de calculer la somme des valeurs d'une série dans la semaine, partant du 1er jour de la semaine jusqu'à la date introduit par l'utilisateur.
Pour cette première version, on garde par defaut dimanche comme premier jour de la semaine.
}
\examples{
x <- rnorm(222, mean = 50, sd = 6.3)
date <- seq.Date(as.Date("2023-01-01"), by = "day", length.out = 222)
df <- data.frame(date, x)
wtd(df, date = "2023-08-01", x = "x")

}
