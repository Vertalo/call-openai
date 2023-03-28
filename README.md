# call-openai

`call-openai` is a command-line tool for interacting with the OpenAI API using JSON input. It allows you to call any function in the OpenAI API library by providing the function name and its required arguments in JSON format.

## Prerequisites

- Python 3.6 or higher
- OpenAI API key

## Obtaining an API key

To use the OpenAI API, you need an API key. If you don't have one, follow these steps:

1. Sign up for an account on the [OpenAI website](https://beta.openai.com/signup/).
2. Once logged in, go to the [API keys section](https://beta.openai.com/account/api-keys) of your account dashboard.
3. Click on "Create an API key" and save the generated key securely.

## Storing the API key

To store the API key securely, create a `config.ini` file in the `~/.config/openai/` directory:

1. Create the directory if it doesn't exist:
```
mkdir -p ~/.config/openai
```

2. Create the `config.ini` file:
```
touch ~/.config/openai/config.ini
```


3. Set the file permissions to restrict access:
```
chmod 600 ~/.config/openai/config.ini
```


4. Open the `config.ini` file with your favorite text editor, and add the following content, replacing `<YOUR_API_KEY>` with your actual API key:
```
[openai]
api_key = <YOUR_API_KEY>
```


Save the file, and the `call-openai` script will now be able to use your API key.

## Installation

1. Clone the repository:

```
git clone https://github.com/vertalo/call-openai.git
```

2. Change the directory to the cloned repository:

```
cd call-openai
```

3. Install dependencies:

```
make install_dependencies
```

4. Install the program:

```
make install
```

## Usage

The `call-openai` script accepts JSON input via a command-line argument or stdin. The JSON input must contain the following keys:

- `function_name`: A string representing the name of the OpenAI API function to call.
- `arguments`: An object containing the key-value pairs for the arguments required by the function.

For example, to call the `Completion.create` function, you can provide the JSON input as a command-line argument:

```
call-openai '{"function_name": "Completion.create", "arguments": {"model": "text-davinci-002", "prompt": "Once upon a time", "temperature": 0.7, "max_tokens": 150}}'
```

Alternatively, you can provide the JSON input via stdin:

```
echo '{"function_name": "Completion.create", "arguments": {"model": "text-davinci-002", "prompt": "Once upon a time", "temperature": 0.7, "max_tokens": 150}}' | call-openai
```

The script will call the specified OpenAI API function and print the response in JSON format.

For more information on the available OpenAI API functions and their required arguments, please refer to the [OpenAI API documentation](https://beta.openai.com/docs/).

