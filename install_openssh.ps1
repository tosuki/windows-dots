
# Script PowerShell para instalar e configurar o OpenSSH no Windows 11

# Verifica se o script está sendo executado como administrador
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Este script precisa ser executado com privilégios de administrador."
    Write-Host "Por favor, execute o PowerShell como administrador e tente novamente."
    Start-Sleep -Seconds 5
    exit 1
}

Write-Host "Verificando se o OpenSSH Server está instalado..."

$openSshServer = Get-WindowsCapability -Online | Where-Object {$_.Name -like 'OpenSSH.Server*'}

if ($openSshServer.State -eq "Installed") {
    Write-Host "OpenSSH Server já está instalado."
} else {
    Write-Host "Instalando OpenSSH Server..."
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~0.0.1.0
    Write-Host "OpenSSH Server instalado com sucesso."
}

Write-Host "Verificando se o OpenSSH Client está instalado..."

$openSshClient = Get-WindowsCapability -Online | Where-Object {$_.Name -like 'OpenSSH.Client*'}

if ($openSshClient.State -eq "Installed") {
    Write-Host "OpenSSH Client já está instalado."
} else {
    Write-Host "Instalando OpenSSH Client..."
    Add-WindowsCapability -Online -Name OpenSSH.Client~~~0.0.1.0
    Write-Host "OpenSSH Client instalado com sucesso."
}

Write-Host "Configurando e iniciando o serviço SSHD..."

# Define o tipo de inicialização do serviço sshd para automático
Set-Service -Name sshd -StartupType Automatic

# Inicia o serviço sshd
Start-Service -Name sshd

Write-Host "Serviço SSHD configurado e iniciado."

Write-Host "Configurando regras de Firewall para OpenSSH..."

# Permite conexões SSH através do Firewall

if (-not (Get-NetFirewallRule -DisplayName "OpenSSH Server (Port 22)" -ErrorAction SilentlyContinue)) {
    Write-Host "Criando regra de firewall para OpenSSH..."
    New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
} else {
    Write-Host "Regra de firewall para OpenSSH já existe."
}

Write-Host "Script concluído. O OpenSSH está instalado e configurado."
