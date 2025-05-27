Конечно! Вот пример файла `README.md` для вашего репозитория [terraform-modules/fortios/modules](https://github.com/guardeatingapple/terraform-modules/tree/main/fortios/modules), оформленного в соответствии с лучшими практиками Terraform и Fortinet:

---

# 🛡️ Terraform Modules for FortiOS

Этот репозиторий содержит набор модулей Terraform для автоматизации конфигурации устройств FortiGate с использованием провайдера [FortiOS Terraform Provider](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs).([registry.terraform.io][1])

## 📦 Структура репозитория

Каждый модуль в каталоге `fortios/modules` представляет собой отдельный компонент конфигурации FortiOS, такой как:

* `firewall_policy`
* `address`
* `router_policy`
* `dns`
* и другие([registry.terraform.io][2], [HashiCorp Discuss][3])

Эти модули предназначены для повторного использования и упрощения управления инфраструктурой FortiGate.([GitHub][4])

## ⚙️ Требования

* Terraform >= 0.13
* Провайдер FortiOS Terraform Provider
* Доступ к устройству FortiGate с включенным REST API([Go Packages][5], [GitHub][6])

## 🚀 Начало работы

### Установка провайдера

Добавьте в ваш `main.tf`:

```hcl
terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = ">=1.0.0"
    }
  }
}

provider "fortios" {
  hostname = "<ip>"
  token    = "<token">
}
```



### Использование модулей

Пример использования модуля `firewall_policy`:([registry.terraform.io][7])

```hcl
module "firewall_policy" {
  source = "./fortios/modules/firewall_policy"

  name        = "Allow_HTTP"
  srcintf     = ["port1"]
  dstintf     = ["port2"]
  srcaddr     = ["all"]
  dstaddr     = ["all"]
  action      = "accept"
  schedule    = "always"
  service     = ["HTTP"]
  logtraffic  = "all"
}
```



## 📄 Переменные

Каждый модуль имеет собственный набор переменных, определенных в файле `variables.tf`. Пожалуйста, ознакомьтесь с ними перед использованием модуля.

## 📤 Выходные значения

Модули могут возвращать выходные значения, определенные в файле `outputs.tf`, такие как ID созданных ресурсов.

## 🧪 Примеры

Примеры использования модулей находятся в каталоге `examples/`.


