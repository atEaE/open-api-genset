#! bin/bash

inOpt_Key=$1
inOpt_Val=$2
genOpt_Key=$3
genOpt_Val=$4
outOpt_Key=$5
outOpt_Val=$6

# const
help="openapi-gen.sh -i [import.file] -g [generate type] -o [output path]"
basedir=/local
outdir=/build

# -i option check
if [ -z ${inOpt_Key} ] || [ ${inOpt_Key} != "-i" ]; then
    echo "[EROR] Specify '-i' as the first argument."
    echo "      " ${help}
    exit 1
fi
if [ -z ${inOpt_Val} ]; then
    echo "[EROR] No value has been set for the '-i' option."
    echo "      " ${help}
    exit 1
fi

# -g option check
if [ -z ${genOpt_Key} ] || [ ${genOpt_Key} != "-g" ]; then
    echo "[EROR] Specify '-g' as the second argument."
    echo "      " ${help}
    exit 1
fi
if [ -z ${genOpt_Val} ]; then
    echo "[EROR] No value has been set for the '-g' option."
    echo "      " ${help}
    exit 1
fi

# -o option check
if [ -z ${outOpt_Key} ] || [ ${outOpt_Key} != "-o" ]; then
    echo "[EROR] Specify '-o' as the third argument."
    echo "      " ${help}
    exit 1
fi
if [ -z ${genOpt_Val} ]; then
    echo "[EROR] No value has been set for the '-o' option."
    echo "      " ${help}
    exit 1
fi

# optimaize path
file_path=${basedir%/}/${inOpt_Val#/}
out_path=${basedir%/}${outdir}/${outOpt_Val#/}

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate -i ${file_path} -g ${genOpt_Val} -o ${out_path}