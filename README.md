# Ollama-Open-WebUI
Quick way to bootstrap your own LLM using Ollama and Open Web-UI.

Referencing my Medium post here --> https://....

-----------------------------------------------------------------------------------------------
### [Optional] Setting Post Configuration Environment Variables on Linux

If Ollama is run as a systemd service, environment variables should be set using `systemctl`:

1. Edit the systemd service by calling `systemctl edit ollama.service`. This will open an editor.

2. For each environment variable, add a line `Environment` under section `[Service]`:

    ```ini
    [Service]
    Environment="OLLAMA_HOST=0.0.0.0"
    ```

![image](https://github.com/user-attachments/assets/53f544e8-887a-47d6-bbf8-e818d98e9c40)


3. Save and exit.

4. Reload `systemd` and restart Ollama:

   ```bash
   systemctl daemon-reload
   systemctl restart ollama
   ```
-----------------------------------------------------------------------------------------------
Took reference from:
https://github.com/ollama/ollama/blob/main/docs/faq.md#setting-environment-variables-on-linux
