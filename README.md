Overview
--------

toggl-cli is a command-line interface for toggl.com.

It certainly does not implement the full toggl API, but rather some core
functions. The goal is to make using toggl quicker and more efficient for those
already familiar with command-line tools.

toggl-cli is written in Python and uses version 8 of the [toggl
API](https://github.com/toggl/toggl_api_docs) (thanks to beauraines for the
help).


Requirements
------------

* iso8601 module
* pytz module
* requests
* dateutil

Configuration
-------------

Upon first running the program, a configuration file `~/.togglrc` will be
automatically created. 

1. Update that file with your toggl username and password.
2. Update the timezone entry (e.g. US/Pacific).

####Continue Behaviour####

Setting `continue_creates` to false will cause `continue` to continue already existing same-day entries as a duration continuation, rather than create a new entry.  `continue_creates` defaults to false for toggl-cli users where `.togglrc` already exists, and to true for new users as per the default of the toggl web UI.

Limitations
-----------

* When creating a time entry for a given project, the project must already
  exist.
* Project users, tasks, tags, and users aren't supported.
* Only the default workspace is supported.

Roadmap
-------

See the [issues tracker](https://github.com/drobertadams/toggl-cli/issues)

Usage
-----
    Usage: toggl.py [OPTIONS] [ACTION]
    
    Options:
      -h, --help     show this help message and exit
      -q, --quiet    don't print anything
      -v, --verbose  print additional info
      -d, --debug    print debugging output
    
    Actions:
      add DESCR [:WORKSPACE] [@PROJECT] START_DATETIME ('d'DURATION | END_DATETIME)
            creates a completed time entry
      add DESCR [:WORKSPACE] [@PROJECT] 'd'DURATION
            creates a completed time entry, with start time DURATION ago
      clients
            lists all clients
      continue [from DATETIME | 'd'DURATION]
            restarts the last entry
      continue DESCR [from DATETIME | 'd'DURATION]
            restarts the last entry matching DESCR
      ls [starttime endtime]
            list (recent) time entries
      ical [starttime endtime]
            dump iCal list of (recent) time entries
      now
            print what you're working on now
      workspaces
            lists all workspaces
      projects [:WORKSPACE]
            lists all projects
      rm ID
            delete a time entry by id
      start DESCR [:WORKSPACE] [@PROJECT] ['d'DURATION | DATETIME]
            starts a new entry
      stop [DATETIME]
            stops the current entry
      www
            visits toggl.com
    
      DURATION = [[Hours:]Minutes:]Seconds
      starttime/endtime = YYYY-MM-DDThh:mm:ss+TZ:00
      e.g. starttime = 2015-10-15T00:00:00+02:00
      
      Nothing new
