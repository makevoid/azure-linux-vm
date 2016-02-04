# Ubuntu Server 15.10 - Linux on Azure 101

## Spawn a Linux VM on Azure With the click of a button

#### and by using your customized JSON template file!

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

### This will deploy a somewhat big and very expensive VM (~40 Euro cent per hour!) with the default settings.

### Also my public key is in there so I STRONGLY SUGGEST you to fork the project edit the configuration file:

#### <https://github.com/makevoid/azure-linux-vm/blob/master/azuredeploy.json>


Also to be able to use this button in your forked repo you have to:

- edit the readme.md file
- change my username (makevoid) to `yourusername`.
- there's no step three!


Enjoy!

<!---
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-vm-simple-linux%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
--->


This template allows you to deploy a simple Linux VM using a few different options for the Ubuntu Linux version, using the latest patched version. This will deploy in North Europe a Standard_D12_v2 VM.

This template is based off the official `vm-simple-linux` template: https://github.com/Azure/azure-quickstart-templates/blob/master/101-vm-simple-linux/azuredeploy.json

### Specs and $$:

<https://azure.microsoft.com/en-us/pricing/details/virtual-machines/#Linux>


### Things to Know

This is the file you want to edit: <https://github.com/makevoid/azure-linux-vm/blob/master/azuredeploy.json

##### You can replace `<USR>` with something like `user-123`
##### You can replace `<USRID>` with something like `123`

You can try my ruby script by running `ruby azure_vm.rb` that will regenerate

You can drop the output file into the Edit Template section in the Azure Portal <https://portal.azure.com/#create/Microsoft.Template>
And click ok ok and ok again.

#### Extra notes:

The last command of a script executes a `cp` (copy) command to copy your public key to the root user so you can directly SSH as root. You can append another command after that by using bash `;` and/or `&&` features. That way you can run multiple commands, for example download a bash script from github / gist or wherever and run it to install whatever you want. Docker maybe?


##### [@makevoid](https://twitter.com/makevoid)
