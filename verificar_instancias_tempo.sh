#processos
JBOSS="jboss"
TOMCAT="tomcat"

#tempo para verificação
TIME=60
#verificando se esta rodando
#JBOSS
verificar_jboss(){
if ps aux |grep -v grep | grep $JBOSS > /dev/null
then
 echo "jboss esta rodando"
else
 echo "jboss não esta rodando, aguarde $TIME segundo..."
 sleep $TIME

#verificando apos esperar
 if ps aux | grep -v grep | grep $JBOSS > /dev/null
  then
   echo "jboss inicado apos espera"
  else
   echo "jboss ainda não foi iniciado apos $TIME segundos. iniciando jboss..."
   systemctl start jboss || echo "erro ao tentar inicar o jboss"
  fi
fi
}

#TOMCAT
verificar_tomcat(){
 if ps aux | grep -v grep | grep $TOMCAT > /dev/null
 then
   echo "tomcat esta rodando"
 else
   echo "tomcat não esta rodando, aguarde $TIME segundos..."
   sleep $TIME

#verificando apos espera
 if ps aux | grep -v grep | grep $TOMCAT > /dev/null
 then
   echo "tomcat inciou apos espera"
 else
   echo "tomcat ainda não esta rodando apos $TIME segundo, iniciando tomcat.."
   systemctl start tomcat || echo "erro ao tentar iniciar o tomcat"
 fi
fi
}

verificar_jboss
verificar_tomcat
