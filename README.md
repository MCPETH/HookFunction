# HookFunction
Lua script designed for use with the Synapse X exploit framework. The script utilizes the hookfunction function to intercept HTTP requests made by the syn.request function. The primary purpose of this hook is to implement URL whitelisting, allowing users to specify a particular part of the URL to be checked against a whitelist.

## Usage:

#Set the correctReturn variable to the desired return value, typically "Whitelisted".
Specify the target URL part using the urlMatch variable.
The hook intercepts syn.request calls, checks if the specified URL part matches, and returns a custom response with a 200 status code and the predefined body if there's a match.
Example:

```lua
correctReturn = "Whitelisted"
urlMatch = "example.com/api"
```

## Note:
# This script is simple, Ensure you understand the implications and potential security risks
