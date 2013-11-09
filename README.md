Illustrates a bug in rails 3. This has been [fixed in rails 4](https://github.com/rails/rails/commit/448381593edf0b87e3afd4945bd13650a7483b17#commitcomment-4554860).

The bug is illustrated by a spec:

1. `bundle install`

2. `rake db:migrate`

3. `rake test:prepare`

4. `rspec` should result in one failure
