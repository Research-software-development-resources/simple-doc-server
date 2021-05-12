Hosting documentation
=====================

In the documentation server, there are two environments, 1. the ``group`` environment and 2. the ``user`` environment, where the documentation can be hosted on.
The group environment can be used as the production environment, the user environment can be used as the test environment, and your local environment is the development environment.

.. _Hosting on the user environment:

Hosting on the user environment
-------------------------------

#. Navigate to ``<server_root>/users``

   * ``<server_root>``: the folder where the server is running from.

#. Copy and paste the ``template`` folder in the current folder. Then rename it with any name you want (this will be your ``username``)
#. Edit the ``index.html`` in the current folder - ``<server_root>/documentation/users``.

   #. Open the ``index.html`` file
   #. Search for the ``userList`` block
   #. Append a html list item to ``userList``. Append something similar to

      .. code-block:: html

         <li><a href="./username/index.html">Username</a></li>

      .. figure:: ./images/users_index.PNG
         :name: index.html
         :align: left
         :alt: index.html

         index.html

#. Navigate to your user folder ``<server_root>/documentation/users/<username>``
#. Copy and paste the ``template-documentation`` folder in the current folder. Then rename it with the name of the documentation you are going to upload.
#. Edit the ``index.html`` in the current folder - ``<server_root>/documentation/users/<username>``.

   #. Open the ``index.html`` file
   #. Search for the ``documentationList`` block
   #. Append a html list item to ``documentationList``. Append something similar to

      .. code-block:: html

         <li><a href="./documentation_name/docs/build/index.html">documentation_name</a></li>

      .. figure:: ./images/user_index.PNG
         :name: index.html
         :align: left
         :alt: index.html

         index.html

.. _Hosting on the group environment:

Hosting on the group environment
-------------------------------

#. Navigate to the ``group`` folder ``<server_root>/documentation/users/<username>``
#. Copy and paste the ``template-documentation`` folder in the current folder. Then rename it with the name of the documentation you are going to upload.
#. Edit the ``index.html`` in the current folder - ``<server_root>/documentation/users/<username>``.

   #. Open the ``index.html`` file
   #. Search for the ``documentationList`` block
   #. Append a list item to the list inside the ``container`` block. Append something similar to

      .. code-block:: html

         <li><a href="./documentation_name/docs/build/index.html">documentation_name</a></li>

      .. figure:: ./images/group_index.PNG
         :name: index.html
         :align: left
         :alt: index.html

         index.html

#. You are now ready to upload your documentation! See :ref:`Upload your build`

.. _Upload your build:

Uploading your build
--------------------

#. Locally build your Sphinx documentation. See the `Sphinx documentation <https://www.sphinx-doc.org/en/master/usage/quickstart.html>`_ to learn more about Sphinx

   .. note::

      A build here is a process of converting your Sphinx documentation to HTML files

#. Upload the entire build folder

   * Upload to the user environment: ``<server_root>/documentation/users/<username>/<documentation_name>/docs/``
   * Upload to the group environment: ``<server_root>/documentation/group/<documentation_name>/docs/``

   .. note::

      If you had uploaded the build folder before, you might be asked whether your want to replace or ship the existing files. It is OK to replace them with the new build.

   * Done! the updated version is now hosted! Refresh the web page.





