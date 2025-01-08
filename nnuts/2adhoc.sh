ansible all -m user -a 'name=automation password="$6$saltvalue$alu5DPFJq1cAG.NXvg2aLAXXhpw9bWlTc2N1oTytaBhbr9OJfAqsna6gEjOF75Ck3OhpeZeVaMckJ1Wk7yOFj0" generate_ssh_key=yes ssh_key_file=.ssh/id_rsa.pub expires=-1' -b
ansible all -m copy -a 'content="automation ALL=(ALL) NOPASSWD: ALL" dest=/etc/sudoers.d/automation owner=root group=root mode=0644' -b
