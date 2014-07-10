# riffraffle

A quick Ember app for picking raffle winners at ~~Snow*Mobile Conf 2013~~ ALL THE CONFERENCES. Uses Ember-Data and active_model_serializers (on top of Rails) to provide database data to tiny JSMVC app.

## TODO:

- [x] Add ActiveAdmin for model data
- [x] Wrap routes in Devise so only organizers can "pick" and mark winners.
- [ ] Add a convenient place to change conf title, other data.
- [ ] Allow uploading the background image and ticket image through S3
- [x] Allow uploading CSV file of attendees/ticket counts.

## Uploading CSVs:

Currently, it only supports uploading a Tito Master Orders CSV. Nothing else will work.

**Warning**: Uploading a new CSV will wipe out all Ticket data!

Navigate to http://riffraffle-staging.herokuapp.com/import (log in required), and upload the Tito Master Orders CSV.

## License

Copyright (c) 2013 Matt Gauger

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
