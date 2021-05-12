Adding user documentation
=========================

#. Navigate to your user folder ``<server_root>/users/<username>``
#. Create a folder for the new documentation that you want to add (``<documentation_name>``).

  For example, on Linux, you can use the following command to create this folder.

  .. code-block:: bash

    mkdir -p <server_root>/users/<username>/<documentation_name>

#. Copy the build folder that has been generated from your Sphinx project into the project folder you created in the previous step e.g. ``<server_root>/users/<username>/<documentation_name>/build``

#. Tell the documentation server that you have added a new documentation directory:

  #. Search for the ``documentationList`` html code block.
  #. Append the following line to the ``documentationList`` block:

    .. code-block:: html

      <li><a href="./documentation_name/build/index.html">documentation_name</a></li>

    as shown by the highlighted block of text below:

    .. code-block:: html
      :emphasize-lines: 7

      <div class="container" style="margin-left:0px">
        <ul id="documentationList">
        <!-- TODO. Append a new item to the list -->
        <!-- Example list item
        <li><a href="./template-documentation/docs/build/index.html">template-documentation</a></li>
        -->
        <li><a href="./documentation_name/build/index.html">your documentation name</a></li>
        </ul>
      </div>

  #. Replace ``documentation_name`` in the line you just appended with the name of the folder you created in Step 2.

  #. Replace ``your documentation name`` in the line you just appended with the name of your documentation.

  #. Save and exit the file.
