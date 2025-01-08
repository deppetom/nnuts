ansible localhost -m copy -a "content='automation ALL=(ALL) NOPASSWD: ALL' dest=/etc/sudoers.d/automation owner=root group=root mode=0644"
