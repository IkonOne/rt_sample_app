# Ruby on Rails Tutorial sample application

This is the sample application for [*Ruby on Rails Tutorial: Learn Web Development with Rails*](http://www.railstutorial.org/) by [Michael Hartl](http://www.michaelhartl.com/).

## License

All source code it the [Ruby on Rails Tutorial](https://www.railstutorial.org/) is available jointly under the MIT license and the Beerware License.  See [LICENSE.md](LICENSE.md) for details.

## Getting Started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to ensure that everything is working correctly:

```
$ rails test
```

If the test suite passes, you will be ready to run the app in a local server:

```
$ rails server
```

For more information, see the [Ruby on Rails Tutorial](http://www.railstutorial.org/book/).