# Ollama-Open-WebUI
Quick way to bootstrap your own LLM using Ollama and Open Web-UI.

Referencing my Medium post here --> https://....

-----------------------------------------------------------------------------------------------
### [Optional 1] Setting Post Configuration Environment Variables on Linux/Ubuntu

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

### [Optional 2] Increase virtual disk on Linux/Ubuntu
If hit disk space full, perform the following to extend.

Check disk usage in root /:
```bash
df -h
```

![image](https://github.com/user-attachments/assets/7d0c5acf-0b6c-48f1-ad0f-3061cb5fdc10)


Expand disk in VMWare WorkStation

![image](https://github.com/user-attachments/assets/aea972fa-5388-4fd6-9bb6-fb58ba41fa08)

List the disk available:
```bash
fdisk -l
```

To extend partition:
```bash
fdisk /dev/sda
```

![image](https://github.com/user-attachments/assets/65ba7f86-e9bb-4830-9c7e-7f5447053d92)
![image](https://github.com/user-attachments/assets/67b31f99-0570-4984-9814-965bd75606b3)

Perform a reboot.
```bash
sudo shutdown -r 0
```

![image](https://github.com/user-attachments/assets/09833f8b-93c2-40fb-9f58-195f9a5fa188)
![image](https://github.com/user-attachments/assets/74ecdafc-b817-4354-a07c-93205d1efc5a)
![image](https://github.com/user-attachments/assets/364489e5-2ac8-4c34-8018-bddc3de4f757)

