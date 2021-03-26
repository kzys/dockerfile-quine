FROM python
ENV s='FROM python@ENV s=X@ENTRYPOINT python -c "import os;s=os.getenv(chr(115));print(s.replace(chr(64),chr(10)).replace(chr(88),chr(39)+s+chr(39),1))"'
ENTRYPOINT python -c "import os;s=os.getenv(chr(115));print(s.replace(chr(64),chr(10)).replace(chr(88),chr(39)+s+chr(39),1))"
