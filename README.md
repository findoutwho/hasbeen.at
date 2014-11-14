#hasbeen.at

Events we have been at. View also [hasbeen.in](http://hasbeen.in).

## develop

```bash
$ bundle
```

For development you need pow:

```bash
$ curl get.pow.cx | sh
$ cd ~/.pow
$ ln -s ~/<directory>/hasbeen.at hasbeenat #important: symlink must not contain dot
```

## I can haz events, too

1. Fork this repo
2. Add attendee file
3. Send a pull request

### Attendee file
Create a new `<attendee>.yaml` file under `config/attendees`. (Note that the filename will be your subdomain):

```yaml
---
name: neinasaservice
web: 'http://unexpected-co.de'
avatar: 'https://secure.gravatar.com/avatar/8fb4c4eea4580647ac37881cec8606aa.png'
twitter: 'neinasaservice'
events:
  - year: 2012
    events:
     - 29c3
  - year: 2013
    events:
      - eurucamp
      - GOTO Conference
  - year: 2014
    events:
      - wroclove.rb
      - republica
      - eurucamp
      - {name: "eurucamp", role: "organizer"}
```

You can also specify a custom role for an event like `organizer`. If no
role was specified, then it defaults to `attendee`.

Before you submit, make sure that validation passes:

```bash
$ rake validate:attendees
```
