Adding new users
================

1. Navigate to ``<server_root>/users``, where ``<server_root>``: the folder where the files used by the documentation server are stored.

2. Copy and paste the ``template`` folder in the ``<server_root>/users``. Then rename the folder with your username (this will be your ``username`` in the remainder of these instructions).

3. Add the new user to the existing list of users on the documentation server.

  #. Open ``<server_root>/users/index.html`` with a text editor (e.g. Notepad++ on Windows).
  #. Search for the ``userList`` code block (highlighted in the screenshot below).

    .. figure:: ../images/users_index.PNG
       :name: index.html
       :align: left
       :alt: index.html

       index.html

  #. Append the following new line under the  ``userList``.

    .. code-block:: html

      <li><a href="./username/index.html">your full name</a></li>

    #. Replace ``username`` with the folder name from step 2.
    #. Replace ``your full name`` with your full name.

4. Customise the new user's documentation page:

  #. Open ``<server_root>/users/<username>/index.html`` with a text editor (e.g. Notepad++ on Windows).
  #. Search for the ``<h1>`` tag in this file. The line corresponding to this tag shows:

    .. code-block:: html

      <h1>Username's documentation</h1>

    Replace ``Username`` with your username.

  #. Save and exit the file.
