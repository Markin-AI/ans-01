# Домашнее задание к занятию "`Введение в Ansible`" - `Маркин Алексей`

## Основная часть

1. Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте значение, которое имеет факт `some_fact` для указанного хоста при выполнении playbook.

```
ansible-playbook site.yml -i ./inventory/test.yml
```

![Вопрос1](https://github.com/Markin-AI/ans-01/blob/main/img/1.png)

2. Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на `all default fact`.

![Вопрос2](https://github.com/Markin-AI/ans-01/blob/main/img/2.png)

3. Воспользуйтесь подготовленным (используется `docker`) или создайте собственное окружение для проведения дальнейших испытаний.

![Вопрос3](https://github.com/Markin-AI/ans-01/blob/main/img/3.png)

4. Проведите запуск playbook на окружении из `prod.yml`. Зафиксируйте полученные значения `some_fact` для каждого из `managed host`.

```
ansible-playbook site.yml -i ./inventory/prod.yml
```

![Вопрос4](https://github.com/Markin-AI/ans-01/blob/main/img/4.png)

5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились значения: для `deb` — `deb default fact`, для `el` — `el default fact`.

6.  Повторите запуск playbook на окружении `prod.yml`. Убедитесь, что выдаются корректные значения для всех хостов.

![Вопрос6](https://github.com/Markin-AI/ans-01/blob/main/img/6.png)

7. При помощи `ansible-vault` зашифруйте факты в `group_vars/deb` и `group_vars/el` с паролем `netology`.

```
ansible-vault encrypt ./group_vars/deb/examp.yml

ansible-vault encrypt ./group_vars/el/examp.yml
```

![Вопрос7](https://github.com/Markin-AI/ans-01/blob/main/img/7.png)

8. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь в работоспособности.

```
ansible-playbook site.yml -i ./inventory/prod.yml --ask-vault-pass
```

![Вопрос8](https://github.com/Markin-AI/ans-01/blob/main/img/8.png)

9. Посмотрите при помощи `ansible-doc` список плагинов для подключения. Выберите подходящий для работы на `control node`.

```
ansible-doc -t connection --list | grep "on control"
```

![Вопрос9](https://github.com/Markin-AI/ans-01/blob/main/img/9.png)

10. В `prod.yml` добавьте новую группу хостов с именем  `local`, в ней разместите localhost с необходимым типом подключения.

![Вопрос10](https://github.com/Markin-AI/ans-01/blob/main/img/10.png)

11. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь, что факты `some_fact` для каждого из хостов определены из верных `group_vars`.

![Вопрос11](https://github.com/Markin-AI/ans-01/blob/main/img/11.png)

12. Заполните `README.md` ответами на вопросы. Сделайте `git push` в ветку `master`. В ответе отправьте ссылку на ваш открытый репозиторий с изменённым `playbook` и заполненным `README.md`.

13. Предоставьте скриншоты результатов запуска команд.

## Необязательная часть

1. При помощи `ansible-vault` расшифруйте все зашифрованные файлы с переменными.

![Вопрос1-1](https://github.com/Markin-AI/ans-01/blob/main/img/1-1.png)

2. Зашифруйте отдельное значение `PaSSw0rd` для переменной `some_fact` паролем `netology`. Добавьте полученное значение в `group_vars/all/exmp.yml`.

```
ansible-vault encrypt_string
```

![Вопрос2-2](https://github.com/Markin-AI/ans-01/blob/main/img/2-2.png)

3. Запустите `playbook`, убедитесь, что для нужных хостов применился новый `fact`.

![Вопрос3-3](https://github.com/Markin-AI/ans-01/blob/main/img/3-3.png)

4. Добавьте новую группу хостов `fedora`, самостоятельно придумайте для неё переменную. В качестве образа можно использовать [этот вариант](https://hub.docker.com/r/pycontribs/fedora).

![Вопрос4-4](https://github.com/Markin-AI/ans-01/blob/main/img/4-4.png)

5. Напишите скрипт на bash: автоматизируйте поднятие необходимых контейнеров, запуск ansible-playbook и остановку контейнеров.

![Вопрос5-5](https://github.com/Markin-AI/ans-01/blob/main/img/5-5.png)

6. Все изменения должны быть зафиксированы и отправлены в ваш личный репозиторий.

---