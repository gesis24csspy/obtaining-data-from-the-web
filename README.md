# Working with APIs

# Instructions

To work with this project in GitHub Codespaces, you will need to set up your own environment variables, such as API keys, using a .env file. Follow the steps below to ensure your environment is configured correctly:

## Open the Repository in GitHub Codespaces

1. Fork this repository to your own GitHub account.
2. Open the repository in GitHub Codespaces:
    - Navigate to the repository on GitHub.
    - Click the "Code" button and select "Open with Codespaces."
    - Create a Codespace for the repository.

## Create Your .env File

You need to create a .env file in your Codespace to store your API keys and other sensitive information.

3. Copy the Template: 
    - Inside your Codespace terminal, run the following command to create a new .env file from the provided .env.template:
    ```zsh
    cp .env.template .env
    ```
4. Open the newly created .env file in the editor.
    - Replace the placeholder values with your actual API keys and other environment variables. For example (not a real API key):
    ```
    API_KEY_1='GEzaLyB69Xh5yz3QRsdP-X8QeLMpgWuva-XmWKh'
    API_KEY_2='HIzaLyB69Xh5yz3QRsdP-X8QeLMpgWuva-XmKUIo'
    ```

## Save the File

5. Make sure to save the .env file after editing.

## Work through the Tutorial Notebook

With your .env file set up, you can now run the project. The environment variables in your .env file will be automatically loaded when you run your notebooks or scripts.

# IMPORTANT!

Your .env file contains sensitive information. It is included in the .gitignore file, so it will not be committed to the repository. **Do not attempt to commit or share this file.**

Any files you create, including the .env file, will persist as long as the Codespace is active or paused. If you shut down the Codespace and reopen it later, your .env file will still be there.

**If the Codespace you created is deleted** (manually or due to inactivity), any files you added will be lost, including your .env file. You will need to repeat the steps above to recreate the .env file in a new Codespace.

