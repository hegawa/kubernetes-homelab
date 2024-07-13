## Installing Hyper-V via PowerShell

For my homelab I installed Hyper-V.  This guide will walk you through the steps to install Hyper-V using PowerShell on your Windows machine.

## Prerequisites
Before you begin, make sure you enabled hardware virtualization on your BIOS. Manufacturers have different names for its BIOS feature

## Installation Steps
1. Open PowerShell as an administrator.
2. Run the following command to enable the Hyper-V feature:
    ```
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
    ```
3. Restart your computer to complete the installation.

## Verifying the Installation
To verify that Hyper-V is installed and running correctly, follow these steps:
1. Open PowerShell as an administrator.
2. Run the following command to check the status of the Hyper-V service:
    ```
    Get-Service -Name "vmms" | Select-Object -Property Status
    ```
    If the status is "Running," then Hyper-V is installed and running successfully.

## Creating Ubuntu VMs in Hyper-V via PowerShell

To create Ubuntu vm in Hyper-V using PowerShell, follow the steps in https://github.com/schtritoff/hyperv-vm-provisioning to automate the installation.  you can also download iso separately and do it manually

