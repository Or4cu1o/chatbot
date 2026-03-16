/bin/sh -c "
      sleep 20;
      # 1. Configuramos o alias com aspas fortes para evitar erro de hostname
      /usr/bin/mc alias set chatbot http://minio-chatbot:9000 \"$${MINIO_ROOT_USER}\" \"$${MINIO_ROOT_PASS}\";

      # 2. Criamos o bucket usando o alias que acabamos de definir
      /usr/bin/mc mb --ignore-existing chatbot/typebot;
      /usr/bin/mc mb --ignore-existing chatbot/chatwoot;

      # 3. Definimos a permissão
      /usr/bin/mc anonymous set public chatbot/typebot;

      echo 'Configuração finalizada com sucesso!';
      exit 0;
      "