* {
    background-image: none;
    box-shadow: none;
}

window {
    background-color: rgba(30, 30, 30, 0.8);
    /* display: flex; */
    /* flex-direction: row; */
    /* justify-content: center; */
    /* align-items: center;
    flex-wrap: nowrap; */
}

button {
    color: #ffffff;
    font-size: 20px;
    background-color: rgba(255, 255, 255, 0.1);
    border: 2px solid rgba(255, 255, 255, 0.2);
    border-radius: 12px;
    margin: 10px;
    padding: 20px;
    min-width: 80px;
    min-height: 40px;
    /* transition: all 0.3s ease; */
}

button:hover {
    background-color: rgba(99, 102, 241, 0.6);
    border-color: rgba(99, 102, 241, 0.8);
    color: #ffffff;
    /* transform: translateY(-2px); */
}

button:focus {
    background-color: rgba(99, 102, 241, 0.6);
    border-color: rgba(99, 102, 241, 0.8);
}

/* Individual button styling */
#lock, #logout, #suspend, #hibernate, #shutdown, #reboot {
    background-repeat: no-repeat;
    background-position: center;
    background-size: 24px;
}

















{
    "label": "lock",
    "action": "hyprlock",
    "keybind": "l",
    "text": "Lock"
}
{ 
    "label": "logout",
    "action": "hyprctl dispatch exit",
    "keybind": "e",
    "text": "Log-Out" 
},
{   
    "label": "suspend",
    "action": "systemctl suspend",
    "keybind": "s",
    "text": "Suspend"
},
{ 
    "label": "hibernate",
    "action": "systemctl hibernate",
    "keybind": "h",
    "text": "Hibernate" 
},
{   
    "label": "reboot",
    "action": "reboot",
    "keybind": "r", 
    "text": "Reboot"
},
{   
    "label": "shutdown",
    "action": "poweroff",
    "keybind": "p",
    "text": "Shut-Down" 
}


