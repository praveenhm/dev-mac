


from setuptools import setup, find_packages

def read(file_name):
    with open(file_name, 'r', encoding='utf-8') as f:
        return f.read()

setup(
    name="svlearn-bootcamp",
    version="1.0.0",
    description="Text-extraction from given file.",
    long_description=read('README.md'),  # assuming your README file is named README.md
    long_description_content_type='text/markdown',  # specify the type of markup used in your README
    classifiers=[
        "Operating System :: OS Independent",
        "Programming Language :: Python",
        "License :: OSI Approved :: MIT License",
        # Add additional classifiers
    ],
    packages=find_packages(),  # automatically discover and include all packages
    install_requires=[
        # List your dependencies here, for example:
        # 'numpy>=1.21.0',
        # 'pandas>=1.3.0',
    ],
)


pip intall -e ,
