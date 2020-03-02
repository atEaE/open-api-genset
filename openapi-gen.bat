@echo off
REM -- start bat
setlocal

cd %~dp0

REM -- const
SET help=       ^openapi-gen.sh -i [import.file] -g [generate type] -o [output path]
SET basedir=/local
SET outdir=/build

REM -- -i option check
if .%~1 neq .-i (
    echo ^[EROR] Specify '-i' as the first argument.
    echo %help%
    exit 1
)
if .%~2 equ . (
    echo ^[EROR] No value has been set for the '-i' option.
    echo %help%
    exit 1
)

REM -- -g option check
if .%~3 neq .-g (
    echo ^[EROR] Specify '-g' as the second argument.
    echo %help%
    exit 1
)
if .%~4 equ . (
    echo ^[EROR] No value has been set for the '-g' option.
    echo %help%
    exit 1
)

REM -- -o option check
if .%~5 neq .-o (
    echo ^[EROR] Specify '-o' as the third argument.
    echo %help%
    exit 1
)
if .%~6 equ . (
    echo ^[EROR] No value has been set for the '-o' option.
    echo %help%
    exit 1
)

REM -- optimize path
SET file_path=%basedir%/%~2
SET out_path=%basedir%%outdir%/%~6

docker run --rm -v %~dp0:/local openapitools/openapi-generator-cli generate -i %file_path% -g %~4 -o %out_path%

endlocal
REM -- end batss