FROM continuumio/miniconda3:4.7.10

LABEL "repository"="https://github.com/ravinpoudel/Github_Action_CondaPackage.git"
LABEL "maintainer"="Ravin Poudel <rp3448@ufl.edu>"

RUN conda install -y anaconda-client conda-build conda-verify

RUN conda config --set anaconda_upload yes

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]