Last login: Fri Feb  2 14:04:44 on console
mounishvatti@Mounishs-MacBook-Air ~ % mkdir amazon
mounishvatti@Mounishs-MacBook-Air ~ % cd amazon
mounishvatti@Mounishs-MacBook-Air amazon % python3 -m venv .env
(.env) mounishvatti@Mounishs-MacBook-Air amazon % pip install requests beautifulsoup4
Collecting requests
  Obtaining dependency information for requests from https://files.pythonhosted.org/packages/70/8e/0e2d847013cb52cd35b38c009bb167a1a26b2ce6cd6965bf26b47bc0bf44/requests-2.31.0-py3-none-any.whl.metadata
  Downloading requests-2.31.0-py3-none-any.whl.metadata (4.6 kB)
Collecting beautifulsoup4
  Obtaining dependency information for beautifulsoup4 from https://files.pythonhosted.org/packages/b1/fe/e8c672695b37eecc5cbf43e1d0638d88d66ba3a44c4d321c796f4e59167f/beautifulsoup4-4.12.3-py3-none-any.whl.metadata
  Downloading beautifulsoup4-4.12.3-py3-none-any.whl.metadata (3.8 kB)
Collecting charset-normalizer<4,>=2 (from requests)
  Obtaining dependency information for charset-normalizer<4,>=2 from https://files.pythonhosted.org/packages/3a/52/9f9d17c3b54dc238de384c4cb5a2ef0e27985b42a0e5cc8e8a31d918d48d/charset_normalizer-3.3.2-cp312-cp312-macosx_11_0_arm64.whl.metadata
  Downloading charset_normalizer-3.3.2-cp312-cp312-macosx_11_0_arm64.whl.metadata (33 kB)
Collecting idna<4,>=2.5 (from requests)
  Obtaining dependency information for idna<4,>=2.5 from https://files.pythonhosted.org/packages/c2/e7/a82b05cf63a603df6e68d59ae6a68bf5064484a0718ea5033660af4b54a9/idna-3.6-py3-none-any.whl.metadata
  Downloading idna-3.6-py3-none-any.whl.metadata (9.9 kB)
Collecting urllib3<3,>=1.21.1 (from requests)
  Obtaining dependency information for urllib3<3,>=1.21.1 from https://files.pythonhosted.org/packages/88/75/311454fd3317aefe18415f04568edc20218453b709c63c58b9292c71be17/urllib3-2.2.0-py3-none-any.whl.metadata
  Downloading urllib3-2.2.0-py3-none-any.whl.metadata (6.4 kB)
Collecting certifi>=2017.4.17 (from requests)
  Obtaining dependency information for certifi>=2017.4.17 from https://files.pythonhosted.org/packages/ba/06/a07f096c664aeb9f01624f858c3add0a4e913d6c96257acb4fce61e7de14/certifi-2024.2.2-py3-none-any.whl.metadata
  Downloading certifi-2024.2.2-py3-none-any.whl.metadata (2.2 kB)
Collecting soupsieve>1.2 (from beautifulsoup4)
  Obtaining dependency information for soupsieve>1.2 from https://files.pythonhosted.org/packages/4c/f3/038b302fdfbe3be7da016777069f26ceefe11a681055ea1f7817546508e3/soupsieve-2.5-py3-none-any.whl.metadata
  Downloading soupsieve-2.5-py3-none-any.whl.metadata (4.7 kB)
Downloading requests-2.31.0-py3-none-any.whl (62 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.6/62.6 kB 807.1 kB/s eta 0:00:00
Downloading beautifulsoup4-4.12.3-py3-none-any.whl (147 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 147.9/147.9 kB 848.6 kB/s eta 0:00:00
Downloading certifi-2024.2.2-py3-none-any.whl (163 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 163.8/163.8 kB 2.2 MB/s eta 0:00:00
Downloading charset_normalizer-3.3.2-cp312-cp312-macosx_11_0_arm64.whl (119 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 119.4/119.4 kB 10.8 MB/s eta 0:00:00
Downloading idna-3.6-py3-none-any.whl (61 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.6/61.6 kB 1.8 MB/s eta 0:00:00
Downloading soupsieve-2.5-py3-none-any.whl (36 kB)
Downloading urllib3-2.2.0-py3-none-any.whl (120 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 120.9/120.9 kB 1.6 MB/s eta 0:00:00
Installing collected packages: urllib3, soupsieve, idna, charset-normalizer, certifi, requests, beautifulsoup4
Successfully installed beautifulsoup4-4.12.3 certifi-2024.2.2 charset-normalizer-3.3.2 idna-3.6 requests-2.31.0 soupsieve-2.5 urllib3-2.2.0

[notice] A new release of pip is available: 23.2.1 -> 24.0
[notice] To update, run: pip install --upgrade pip
(.env) mounishvatti@Mounishs-MacBook-Air amazon % ls
amazon.py	main.py
(.env) mounishvatti@Mounishs-MacBook-Air amazon % python3 -m pip install lxml
WARNING: Retrying (Retry(total=4, connect=None, read=None, redirect=None, status=None)) after connection broken by 'ReadTimeoutError("HTTPSConnectionPool(host='pypi.org', port=443): Read timed out. (read timeout=15)")': /simple/lxml/
Collecting lxml
  Obtaining dependency information for lxml from https://files.pythonhosted.org/packages/56/75/aa934ccbc158d181dcdc32e087a0c37d437f39466489ee395a7aa44e4884/lxml-5.1.0-cp312-cp312-macosx_11_0_arm64.whl.metadata
  Downloading lxml-5.1.0-cp312-cp312-macosx_11_0_arm64.whl.metadata (3.5 kB)
Downloading lxml-5.1.0-cp312-cp312-macosx_11_0_arm64.whl (4.5 MB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 4.5/4.5 MB 204.5 kB/s eta 0:00:00
Installing collected packages: lxml
Successfully installed lxml-5.1.0

[notice] A new release of pip is available: 23.2.1 -> 24.0
[notice] To update, run: pip install --upgrade pip
(.env) mounishvatti@Mounishs-MacBook-Air amazon % pip install --upgrade pip
Requirement already satisfied: pip in ./.env/lib/python3.12/site-packages (23.2.1)
Collecting pip
  Obtaining dependency information for pip from https://files.pythonhosted.org/packages/8a/6a/19e9fe04fca059ccf770861c7d5721ab4c2aebc539889e97c7977528a53b/pip-24.0-py3-none-any.whl.metadata
  Downloading pip-24.0-py3-none-any.whl.metadata (3.6 kB)
Downloading pip-24.0-py3-none-any.whl (2.1 MB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 1.8 MB/s eta 0:00:00
Installing collected packages: pip
  Attempting uninstall: pip
    Found existing installation: pip 23.2.1
    Uninstalling pip-23.2.1:
      Successfully uninstalled pip-23.2.1
Successfully installed pip-24.0
(.env) mounishvatti@Mounishs-MacBook-Air amazon % python3 -m pip install pandas
Requirement already satisfied: pandas in ./.env/lib/python3.12/site-packages (2.2.0)
Requirement already satisfied: numpy<2,>=1.26.0 in ./.env/lib/python3.12/site-packages (from pandas) (1.26.3)
Requirement already satisfied: python-dateutil>=2.8.2 in ./.env/lib/python3.12/site-packages (from pandas) (2.8.2)
Requirement already satisfied: pytz>=2020.1 in ./.env/lib/python3.12/site-packages (from pandas) (2024.1)
Requirement already satisfied: tzdata>=2022.7 in ./.env/lib/python3.12/site-packages (from pandas) (2023.4)
Requirement already satisfied: six>=1.5 in ./.env/lib/python3.12/site-packages (from python-dateutil>=2.8.2->pandas) (1.16.0)
(.env) mounishvatti@Mounishs-MacBook-Air amazon % pip install pyarrow
Collecting pyarrow
  Downloading pyarrow-15.0.0-cp312-cp312-macosx_11_0_arm64.whl.metadata (3.0 kB)
Requirement already satisfied: numpy<2,>=1.16.6 in ./.env/lib/python3.12/site-packages (from pyarrow) (1.26.3)
Downloading pyarrow-15.0.0-cp312-cp312-macosx_11_0_arm64.whl (24.2 MB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 24.2/24.2 MB 710.5 kB/s eta 0:00:00
Installing collected packages: pyarrow
Successfully installed pyarrow-15.0.0
(.env) mounishvatti@Mounishs-MacBook-Air amazon % 
