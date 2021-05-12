Hosting documentation
=====================

In the documentation server, there are two environments, 1. the ``group`` environment and 2. the ``user`` environment, where the documentation can be hosted on.
The group environment can be used as the production environment, the user environment can be used as the test environment, and your local environment is the development environment.

.. _Hosting on the user environment:

Hosting on the user environment
-------------------------------

User setup
^^^^^^^^^^

#. Navigate to ``<server_root>/users``

   * ``<server_root>``: the folder where the server is running from.

#. Copy and paste the ``template`` folder in the current folder. Then rename it with any name you want (this will be your ``username``)
#. Edit the ``index.html`` in the current folder - ``<server_root>/documentation/users``.

   #. Open the ``index.html`` file
   #. Search for the ``userList`` block
   #. Append a html list item to ``userList``. Append something similar to

      .. code-block:: html

         <li><a href="./username/index.html">your full name</a></li>

      .. figure:: ./images/users_index.PNG
         :name: index.html
         :align: left
         :alt: index.html

         index.html

Documentation entrypoint setup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

#. Navigate to your user folder ``<server_root>/users/<username>``
#. Create a folder with the same name of your documentation and a ``docs`` folder inside it.

   .. code-block:: bash

      mkdir -p <server_root>/users/<username>/<docuemntation_name>/docs

#. Edit the ``index.html`` in the current folder - ``<server_root>/users/<username>``.

   #. Open the ``index.html`` file
   #. Search for the ``<h1>`` tag, then change the username to your username
   #. Search for the ``documentationList`` block
   #. Append a html list item to the list. Append something similar to

      .. code-block:: html

         <li><a href="./documentation_name/docs/build/index.html">documentation_name</a></li>

      .. figure:: ./images/user_index.PNG
         :name: index.html
         :align: left
         :alt: index.html

         index.html

Uploading/updating documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You are now ready to upload your documentation to your user environment!
Please upload your built documentation (the ``build`` folder generated from your Sphinx documentation) to ``<server_root>/documentation/users/<username>/<documentation_name>/docs/``

.. _Hosting on the group environment:

Hosting on the group environment
-------------------------------

Documentation entrypoint setup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

#. Navigate to the ``group`` folder ``<server_root>/group/``
#. Create a folder with the same name of your documentation and a ``docs`` folder inside it.

   .. code-block:: bash

      mkdir -p <server_root>/group>/<docuemntation_name>/docs

#. Edit the ``index.html`` in the current folder - ``<server_root>/group``.

   #. Open the ``index.html`` file
   #. Search for the ``documentationList`` block
   #. Append a html list item to the list. Append something similar to

      .. code-block:: html

         <li><a href="./documentation_name/docs/build/index.html">documentation_name</a></li>

      .. figure:: ./images/group_index.PNG
         :name: index.html
         :align: left
         :alt: index.html

         index.html

Uploading/updating documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You are now ready to upload your documentation to the group environment!
Please upload your built documentation (the ``build`` folder generated from your Sphinx documentation) to ``<server_root>/documentation/group/<documentation_name>/docs/``





