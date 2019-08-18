.. _timeseries_workflow:

Typical modeling workflow
=========================

The modeling procedure for time series analysis is a little bit different from that of other ML techniques. There are several ways you can approach your modeling, both of them with their own pros/cons.

Problem setup
-------------

We'll use the following noisy sine wave for our examples:

.. code-block:: python

    import pmdarima as pm
    import numpy as np
    from matplotlib import pyplot as plt

    # just a messy sine wave is all
    rs = np.random.RandomState(141)
    x = np.arange(500)
    y = np.sin(4 * np.pi * (x / x.shape[0])) + 0.5 * (rs.rand(x.shape[0]) - .5)

    # take a gander
    plt.scatter(x, y)
    plt.xlabel('t')
    plt.ylabel('f(t)')


