#nome do process0
JBOSS="jboss"
TOMCAT="tomcat"

#verificando se esta rodando
#JBOSS
if ps aux | grep -v grep | grep $JBOSS > /dev/null
then
echo "Jboss esta rodando."
else
echo "Jboss não esta rodando."
fi

#TOMCAT
if ps aux | grep -v grep | grep $TOMCAT > /dev/null
then
 echo "Tomcat esta rodando."
else
 echo "Tomcat não esta rodando"
fi
