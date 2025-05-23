# DEPONS2R -- Accessor functions


 setGeneric("crs", function(x) { return(raster::crs(x@crs)) })


#' @name crs
#' @aliases crs,DeponsTrack-method
#' @aliases crs<-,DeponsTrack-method
#' @title Get or set map projection in Depons* objects
#' @param x Object of class \code{DeponsRaster}, \code{DeponsShips} or
#' \code{DeponsTrack}.
#' @exportMethod crs
setMethod("crs", signature("DeponsTrack"),
          function(x) {
            return(raster::crs(x@crs))
          }
)


#' @name crs
#' @aliases crs<-,DeponsShips-method
#' @title Get or set map projection in Depons* objects
#' @param x Object of class \code{DeponsRaster}, \code{DeponsShips} or
#' \code{DeponsTrack}.
#' @exportMethod crs
setMethod("crs", signature("DeponsShips"),
          function(x) {
            return(raster::crs(x@crs))
          }
)


#' Get or set map projection
#' @name crs
#' @description Get or set the map projection (also known as coordinate reference
#' system, crs) of DeponsRaster and DeponsTrack objects.
#' @aliases crs,DeponsRaster-method
#' @aliases crs,DeponsShips-method
#' @aliases crs,DeponsTrack-method
#' @param x Object of class \code{DeponsRaster}, \code{DeponsShips} or
#' \code{DeponsTrack}.
#' @exportMethod crs
setMethod("crs", signature("DeponsRaster"),
          function(x) {
            return(sp::CRS(x@crs))
          }
)

# setGeneric("crs<-", function(x, value) {
#   x@crs <- value
#   validObject(x)
#   x
# })


#' @name crs<-
#' @rdname crs
#' @param x Object of class class \code{DeponsRaster}, \code{DeponsShips} or
#' \code{DeponsTrack}
#' @param value (proj4string) identifying the map projection
#' @exportMethod crs<-
setMethod("crs<-", "DeponsTrack", function(x, value) {
  x@crs <- value
  validObject(x)
  x
})


#' @name crs<-
#' @rdname crs
#' @param x Object of class class \code{DeponsRaster}, \code{DeponsShips} or
#' \code{DeponsTrack}
#' @param value (proj4string) identifying the map projection
#' @exportMethod crs<-
setMethod("crs<-", "DeponsShips", function(x, value) {
  x@crs <- value
  validObject(x)
  x
})


#' @name crs<-
#' @rdname crs
#' @aliases crs<-,DeponsRaster-method
#' @param x Object of class class \code{DeponsRaster}, \code{DeponsShips} or
#' \code{DeponsTrack}
#' @param value (proj4string) identifying the map projection
#' @exportMethod crs<-
setMethod("crs<-", "DeponsRaster", function(x, value) {
  x@crs <- value
  validObject(x)
  x
})


setGeneric("title<-", function(x, value) {
  x@title <- value
  validObject(x)
  x
})


#' @name title<-
#' @rdname title
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @param value Title of the object (text string)
#' @exportMethod title<-
setMethod("title<-", "DeponsTrack", function(x, value) {
  x@title <- value
  validObject(x)
  x
})


#' @name title<-
#' @rdname title
#' @aliases title<-,DeponsDyn-method
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @param value Title of the object (text string)
#' @exportMethod title<-
setMethod("title<-", "DeponsDyn", function(x, value) {
  x@title <- value
  validObject(x)
  x
})


#' @name title<-
#' @rdname title
#' @aliases title<-,DeponsShips-method
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @param value Title of the object (text string)
#' @exportMethod title<-
setMethod("title<-", "DeponsShips", function(x, value) {
  x@title <- value
  validObject(x)
  x
})


setGeneric("title", function(x, value) { return(x@title) })

#' @name title
#' @title Get or set the title of Depons* objects
#' @aliases title,DeponsTrack-method
#' @aliases title<-,DeponsTrack-method
#' @rdname title
#' @param value Character string
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @exportMethod title
setMethod("title", signature=("DeponsTrack"), function(x, value) { return(x@title) })


#' @name title
#' @aliases title,DeponsDyn-method
#' @rdname title
#' @param value Character string
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @exportMethod title
setMethod("title", signature=("DeponsDyn"), function(x, value) { return(x@title) })


#' @name title
#' @aliases title,DeponsShips-method
#' @rdname title
#' @param value Character string
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @exportMethod title
setMethod("title", signature=("DeponsShips"), function(x, value) { return(x@title) })


setGeneric("landscape<-", function(x, value) {
  x@landscape <- value
  validObject(x)
  x
})


#' @name landscape<-
#' @rdname landscape
#' @aliases landscape<-,DeponsTrack-method
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @param value Name of the landscape (character)
#' @exportMethod landscape<-
setMethod("landscape<-", "DeponsTrack", function(x, value) {
  x@landscape <- value
  validObject(x)
  x
})


setGeneric("landscape", function(x, value) { return(x@landscape) })

#' @name landscape
#' @aliases landscape,DeponsTrack-method
#' @rdname landscape
#' @param x Object of class \code{DeponsTrack}.
#' @exportMethod landscape
setMethod("landscape", signature=("DeponsTrack"), function(x) { return(x@landscape) })


#' @name landscape<-
#' @rdname landscape
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @param value Name of the landscape (character)
#' @exportMethod landscape<-
setMethod("landscape<-", "DeponsDyn", function(x, value) {
  x@landscape <- value
  validObject(x)
  x
})


#' @name landscape
#' @title Get or set the landscape name
#' @aliases landscape,DeponsDyn-method
#' @rdname landscape
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @exportMethod landscape
setMethod("landscape", signature=("DeponsDyn"), function(x) { return(x@landscape) })


#' @name landscape<-
#' @rdname landscape
#' @aliases landscape<-,DeponsDyn-method
#' @param x Object of class \code{DeponsTrack}, \code{DeponsDyn},
#' \code{DeponsBlockdyn} or \code{DeponsShips}
#' @param value Name of the landscape (character)
#' @exportMethod landscape<-
setMethod("landscape<-", "DeponsBlockdyn", function(x, value) {
  x@landscape <- value
  validObject(x)
  x
})


#' @name landscape
#' @title Get or set the landscape name
#' @aliases landscape,DeponsBlockdyn-method
#' @aliases landscape<-,DeponsBlockdyn-method
#' @rdname landscape
#' @param x Object of class \code{DeponsBlockdyn}.
#' @exportMethod landscape
setMethod("landscape", signature=("DeponsBlockdyn"), function(x) { return(x@landscape) })


setGeneric("dyn", function(x) { return(x@dyn) })

#' @name dyn
#' @title Extract population dynamics from objects
#' @aliases dyn,DeponsDyn-method
#' @rdname dyn
#' @param x Object of class \code{DeponsDyn}.
#' @exportMethod dyn
setMethod("dyn", signature=("DeponsDyn"), function(x) { return(x@dyn) })


#' @name dyn
#' @aliases dyn,DeponsBlockdyn-method
#' @rdname dyn
#' @param x Object of class \code{DeponsBlockdyn}.
#' @exportMethod dyn
setMethod("dyn", signature=("DeponsBlockdyn"), function(x) { return(x@dyn) })


setGeneric("startday", function(x) { return(x@startday) })

#' @name startday
#' @title Get or set start date for simulation
#' @details The start date indicates the start of the period that the simulation
#'is supposed to represent.
#' @aliases startday,DeponsBlockdyn-method
#' @rdname startday
#' @param x Object of class \code{DeponsBlockdyn}.
#' @exportMethod startday
setMethod("startday", signature=("DeponsBlockdyn"), function(x) { return(x@startday) })

#' @name startday
#' @title Get or set start date for simulation
#' @details The start date indicates the start of the period that the simulation
#' is supposed to represent.
#' @aliases startday,DeponsDyn-method
#' @rdname startday
#' @param x Object of class \code{DeponsDyn}
#' @param value POSIXlt or character string of the form 'yyyy-mm-dd'
#' @exportMethod startday
setMethod("startday", signature=("DeponsDyn"), function(x) { return(x@startday) })


assign.startday <- function(x, value) {
  if(as.character(value)=="NA" || is.na(value)) value <- as.POSIXlt(NA)
  if(any(inherits(value, "character"))) value <- as.POSIXlt(value, tz = "UTC")
  if(!any(inherits(value, "POSIXlt"))) stop("The input value could not be converted to POSIXlt")
  x@startday <- value
  # Calc real time corresponding to new startday
  if (!is.na(value)) {
    tick.1.secs <- as.numeric(tick.to.time(1))
    # tick.to.time only works on loops ???
    for(i in 1:nrow(x@dyn)) {
      the.tick <- x@dyn$tick[i]
      the.tick.seconds <- as.numeric(as.POSIXct(tick.to.time(the.tick), tz = "UTC"))
      secs.since.start <- the.tick.seconds - tick.1.secs
      x@dyn$real.time[i] <- as.POSIXct(value) + secs.since.start
    }
  } else {
    for(i in 1:nrow(x@dyn)) {
      x@dyn$real.time[i] <- as.POSIXct(NA, tz = "UTC")
    }
  }
  validObject(x)
  x
}


setGeneric("startday<-", assign.startday)

#' @name startday<-
#' @rdname startday
#' @aliases startday<-,DeponsBlockdyn-method
#' @note The assignment of a new start time is currently quite time consuming.
#' @exportMethod startday<-
setMethod("startday<-", "DeponsBlockdyn", assign.startday)

#' @name startday<-
#' @rdname startday
#' @aliases startday<-,DeponsDyn-method
#' @exportMethod startday<-
setMethod("startday<-", "DeponsDyn", assign.startday)
