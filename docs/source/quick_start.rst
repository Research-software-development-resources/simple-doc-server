===========
Quick Start
===========

This section shows how to install and start the website server using its Docker or Singularity image.

Prerequisites
=============

* Docker or Singularity
* Document root: the document root is a directory where the website files are stored. It can be a local folder or a folder in a mounted network drive. If you want to host the server from an university eResearch drive, create a folder with the drive as document_root. E.g. ``<eResearch>/documentation``
* (optional) password file: passwords authentication can be added by providing a password file, ``.htpasswd``, in the document root. If not provided, the default username (default) and password (default) will be applied.

   * Create a new password file

      .. code-block:: bash

         htpasswd -c .htpasswd <username>

   * Add or update password

      .. code-block:: bash

         htpasswd .htpasswd <username>

Starting Simple-doc-server
==========================

* `Starting Simple-doc-server using Docker`_
* `Starting Simple-doc-server using Singularity`_

Starting Simple-doc-server using Docker
---------------------------------------

Getting the docker image
^^^^^^^^^^^^^^^^^^^^^^^^

There are two ways to obtain the Docker image: A. Building from Dockerfile. B. Downloading from Dockerhub

A. Building the docker image from Dockerfile

   #. Clone the Github repository

      .. code-block:: bash

         git clone https://github.com/Research-software-development-resources/simple-doc-server.git

   #. Navigate to ``<simple-doc-server>/docker``
   #. Build the image

      .. code-block:: bash

         sudo docker build -f ./Dockerfile -t simple-doc-server .

B. Downloading the image from Dockerhub

   TODO

Running the docker image
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

   sudo docker run -d -p 80:80 -v <document_root>:/usr/share/nginx/html -v <password_file>:/etc/nginx/.htpasswd simple-doc-server

* ``<document_root>``: path to the document root.
* ``<password_file>``: (optional) path to the password file.


Starting Simple-doc-server using Singularity
--------------------------------------------

Getting the Singularity image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Singularity images can be converted from an existing Docker image: A. Converting local docker image to Singularity. B. Pulling Docker image from dockerhub and converting it to Singularity

A. Converting the local Docker image to Singularity

   #. Get the Docker image. See `Getting the docker image`_
   #. Save the Docker image as a .tar file.

      .. code-block:: bash

         sudo docker save simple-doc-server -o simple-doc-server.tar

   #. Convert the Docker image to Singularity

      .. code-block::

         singularity build simple-doc-server.sif docker-archive://simple-doc-server.tar

      where simple-doc-server.sif is the generated Singularity image file.

B. Pulling Docker image from dockerhub and converting it to Singularity

   TODO

Running the Singularity image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block::

   - sudo singularity instance start -B <document_root>:/usr/share/nginx/html -B <password_file>:/etc/nginx/.htpasswd --writable-tmpfs <singularity_image> simple-doc-server

* ``<document_root>``: path to the document root.
* ``<password_file>``: (optional) path to the password file.
* ``<singularity_image>``: path to the singularity image

Customising your website
========================

Static web files and folders will be generated in the document root directory after the first start of the documentation server.

They are nothing more than a template. You can manually edit these HTML files. E.g.

* Website homepage: <document_root>/index.html
* Group page: <document_root>/group/index.html
* Users page: <document_root>/users/index.html




