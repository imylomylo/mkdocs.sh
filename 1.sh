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
  HELP=`echo "${HELPRAW}" | sed 's/Examples\:/Examples\:\`\`\`/'`
  HELP=`echo "${HELP}" | sed 's/Arguments\:/Arguments\:\`\`\`/'`
  HELP=`echo "${HELP}" | sed 's/Response\:/\`\`\`Response\:\`\`\`/'`
  HELP=`echo "${HELP}" | sed 's/Result\:/\`\`\`Result\:\`\`\`/'`
  HELP="${HELP}\`\`\`"
  echo "HELP > ${CURRENTDIR}/${COMMAND}"
  echo "${HELP}" > ${CURRENTDIR}/${COMMAND}
  #sleep .5
 fi
# echo "${line}"
done
