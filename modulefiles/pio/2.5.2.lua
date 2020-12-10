local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()

local base = "/apps/contrib/NCEPLIBS/orion/lib/pio-2.5.2"

prepend_path("PATH", pathJoin(base,"bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base,"lib"))
prepend_path("LIBRARY_PATH", pathJoin(base,"lib"))
prepend_path("CPATH", pathJoin(base,"include"))
prepend_path("MANPATH", pathJoin(base,"share","man"))

setenv("PIO_ROOT", base)
setenv("PIO_INC", pathJoin(base,"include"))
setenv("PIO_LIBDIR", pathJoin(base,"lib"))
setenv("PIO_VERSION", "2.5.2")

whatis("Name: ".. pkgName)
whatis("Version: " .. pkgVersion)
whatis("Category: library")
whatis("Description: NCAR Parallal IO library")