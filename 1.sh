#!/bin/bash
#while read p; do
#  echo "${p}"
#done <
CURRENTDIR=""
komodo-cli help | while read line
do
 [ -z "$line" ] && continue
 if [[ ${line} =~ ^== ]]
 then
  #echo "HEADING ${line}"
  HEADING=`echo ${line} | perl -pe 's/[^\w.-]+//g'`
  mkdir ${HEADING}
  CURRENTDIR="${HEADING}"
  #echo ${line} | sed "s/[[:alpha:].-]//g"
  #mkdir `echo ${line} | sed 's/\=|\ //'`
 else
  echo "Using CURRENTDIR ${CURRENTDIR}"
  COMMAND=`echo ${line} | awk '{print $1}'`
  echo "getting help for ${COMMAND}"
  HELPRAW=$(komodo-cli help ${COMMAND})
  HELP=`echo "${HELPRAW}" | sed 's/Examples\:/\n\`\`\`\nExamples\:\n\`\`\`/'`
  HELP=`echo "${HELP}" | sed 's/Arguments\:/\nArguments\:\n\`\`\`/'`
  HELP=`echo "${HELP}" | sed 's/Response\:/\`\`\`\nResponse\:\n\`\`\`/'`
  HELP=`echo "${HELP}" | sed 's/Result\:/\`\`\`\nResult\:\n\`\`\`/'`
  HELP="${HELP}
\`\`\`"
  echo "HELP > ${CURRENTDIR}/${COMMAND}"
  echo "${HELP}" > ${CURRENTDIR}/${COMMAND}.md
  sed -i '1s/^/# /' ${CURRENTDIR}/${COMMAND}.md
  #sleep .5
 fi
# echo "${line}"
done
echo "# mkdocs.sh
Running this shell script at least saves you from a lot of c+p." > README.md
