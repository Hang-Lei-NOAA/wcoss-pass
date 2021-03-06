help([[
]])

local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

conflict(pkgName)

local opt = "/scratch2/NCEPDEV/nwprod/hpc-stack/libs/hpc-stack/v1.0.0-beta1"
setenv("HPC_OPT", opt)
local mpath = pathJoin(opt,"modulefiles/core")
prepend_path("MODULEPATH", mpath)

-- https://lmod.readthedocs.io/en/latest/090_configuring_lmod.html
--setenv("LMOD_EXACT_MATCH", "no")
--setenv("LMOD_EXTENDED_DEFAULT", "yes")

whatis("Name: ".. pkgName)
whatis("Version: " .. pkgVersion)
whatis("Category: Base")
whatis("Description: Initialize HPC software stack")
