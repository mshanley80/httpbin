from setuptools import setup, find_packages
import os

with open(os.path.join(os.path.realpath(os.path.dirname(__file__)), 'httpbin2022', 'VERSION')) as version_file:
    version = version_file.read().strip()

setup(
    name="httpbin2022",
    version=version,
    description="HTTP Request and Response Service",
    long_description="A simple HTTP Request & Response Service, written in Python + Flask.",

    # The project URL.
    url='https://github.com/mshanley80/httpbin',

    # Author details
    author='Kenneth Reitz',
    author_email='me@kennethreitz.org',

    # Choose your license
    license='MIT',

    classifiers=[
         'Development Status :: 5 - Production/Stable',
         'Intended Audience :: Developers',
         'Natural Language :: English',
         'License :: OSI Approved :: MIT License',
         'Programming Language :: Python',
         'Programming Language :: Python :: 3.8',
         'Programming Language :: Python :: 3.10',
    ],
    test_suite="test_httpbin",
    packages=find_packages(),
    include_package_data = True, # include files listed in MANIFEST.in
    install_requires=[
        'Flask', 'MarkupSafe', 'decorator', 'itsdangerous', 'brotlipy',
        'raven[flask]', 'werkzeug', 'gevent', 'flasgger'
    ],
)
