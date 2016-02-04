# Ubuntu Server 15.10 - Linux on Azure 101

## Spawn a Linux VM on Azure With the click of a button

#### and by using your customized JSON template file!

All these buttons were generated via the `azuredeploy.json` template present at the root of this github project:

<table><tr><td>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmakevoid%2Fazure-linux-vm%2Fmaster%2Fgen%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
</td><td>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmakevoid%2Fazure-linux-vm%2Fmaster%2Fgen%2Fazuredeploy-1.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
</td><td>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmakevoid%2Fazure-linux-vm%2Fmaster%2Fgen%2Fazuredeploy-2.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
</td><td>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmakevoid%2Fazure-linux-vm%2Fmaster%2Fgen%2Fazuredeploy-3.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
</td></table>

These buttons all point to a script in the `gen` directory, the first button points to azuredeploy.json, the other point to `azuredeploy-1.json`, `-2` and `-3.json`.  

### This will deploy a somewhat big and somewhat VM (~40 Eurocent per hour!) with the default settings.

### Also my public key is in there so I STRONGLY SUGGEST you either change it or to fork the project and edit the configuration file yourself:

### <https://github.com/makevoid/azure-linux-vm/blob/master/azuredeploy.json>


To be able to use this button in your forked repo you have to:

- Edit the readme.md file
- Change my username (makevoid) to `yourusername`.
- There's no step three! :)

Enjoy!

#### More infos:

This template allows you to deploy a simple Linux VM using a few different options for the Ubuntu Linux version, using the latest patched version. This will deploy in North Europe a Standard_D12_v2 VM.

This template is based off the official `vm-simple-linux` template: https://github.com/Azure/azure-quickstart-templates/blob/master/101-vm-simple-linux/azuredeploy.json

### Specs and $$:

<https://azure.microsoft.com/en-us/pricing/details/virtual-machines/#Linux>


### Things to Know

This is the base file you want to edit: https://github.com/makevoid/azure-linux-vm/blob/master/azuredeploy.json

##### You can replace `<USR>` with something like `user-123`
##### You can replace `<USRID>` with something like `123`

You can try my ruby script by running `ruby azure_vm.rb` that will regenerate all the files currently presend in the `gen` directory, It's a simple script so you can tweak it or re-write it to change IDs and Names.

You can drop the output file into the Edit Template section in the Azure Portal <https://portal.azure.com/#create/Microsoft.Template>

Click three times Next/Create and you will be good to go.

#### Extra notes:

The last command of a script executes a `cp` (copy) command to copy your public key to the root user so you can directly SSH as root. You can append another command after that by using bash `;` and/or `&&` features. That way you can run multiple commands, for example download a bash script from github / gist or wherever and run it to install whatever you want. Docker maybe?


##### [@makevoid](https://twitter.com/makevoid)
