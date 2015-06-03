install: dictionary_ui-ru.mo
	install dictionary dictionary_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat dictionary.services`" /etc/services || cat dictionary.services >> /etc/services
	install dictionary.xinetd /etc/xinetd.d/dictionary
	ln -sf /usr/local/bin/dictionary_ui /usr/local/bin/ndictionary_ui
	install dictionary_ui-ru.mo /usr/share/locale/ru/LC_MESSAGES/dictionary_ui.mo

dictionary_ui.pot: dictionary_ui
	xgettext -o dictionary_ui.pot -L Shell dictionary_ui

dictionary_ui-ru.mo: dictionary_ui-ru.po
	msgfmt -o dictionary_ui-ru.mo dictionary_ui-ru.po

clone:
        git clone https://github.com/anarabanana/Dictionary-English_Kazakh.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags
