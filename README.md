### Hexlet tests and linter status:
[![Actions Status](https://github.com/MrNovan/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/MrNovan/devops-for-programmers-project-76/actions)

# Redmine + Ansible

Этот проект предназначен для автоматического развёртывания [Redmine](https://www.redmine.org/ ) на удалённых серверах.

## 🔧 Архитектура

- 2 ВМ в Yandex Cloud (`web1`, `web2`)
- База данных: Yandex Managed Service for MySQL
- Контейнеризация: Docker
- Оркестрация: Ansible + Docker CLI
- Балансировка нагрузки: Yandex Application Load Balancer (ALB)

---

## 🧰 Требования

### Локальные зависимости:
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html ) >= 2.10
- Python3 + pip

---

## 🚀 Быстрое развертывание

1. Установите Ansible:

```bash
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
```

2. Установите роли:
```bash
ansible-galaxy collection install community.docker
ansible-galaxy role install geerlingguy.pip
ansible-galaxy role install geerlingguy.docker
```

3. Запустите деплой:
```bash
make deploy
```