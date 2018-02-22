---
title: Constructive Code Review
---

## Some rules of thumb for useful code review

Code review can be a fantastic learning experience, an exercise in
collaboration, and a net benefit for a software organization. Code
review can also be frustrating, an outlet for small-scale tyranny, hot
air, or bikeshedding. Here are some thoughts about how to skew towards
the former rather than the latter. I can't claim to be a paragon of
virtue here... consider this a list of aspirations more than
prescriptions.

- Tone matters. Even constructive criticism can sting if presented in
  an overly curt manner. Consider using words like 'consider'. Be
  polite. And be aware that jokes sometimes don't land well in this
  medium.

- Semantics are more important than syntax. Reviewer, feel free to
  comment on syntax and style if you think correctness or performance
  is at stake *and important in the particular context at hand*. But
  don't miss the application forest for the code tree. Look first at
  *the goals implied in existing code and the changes* and try to
  understand if the goals are being met.

- Interfaces are more important than implementations. Care a whole lot
  about the public face that the code presents to the world (whether
  the user be other programmers, other services, or end users
  directly). Care about the details of implementation when it matters
  in terms of cost, correctness, or performance. A reviewer should
  encourage best practices and look out for potential problems and
  clear improvements, but be wary of premature optimization.

- Use programmatic proofs. Code authors should write tests for
  important behaviors, run benchmarks and profiling and load testing
  when performance is relevant... and document the results. Reviewers
  should encourage the author to add tests where important behavior is
  untested, and encourage benchmarking where it may be useful.

- Code review should flow both ways. More-experienced engineers
  typically bear the burden of code reviews, but less-experienced
  engineers should start taking on review tasks as soon as
  possible. Like many practices in the profession, code review is a
  skill that is acquired through practice. This also has the benefit
  of sharing work more broadly, so senior devs don't become
  bottlenecks for others. Finally, even the most experienced programmer
  benefits from a a second set of eyes.

- This isn't a copy-editing session. If a reviewer notices whitespace,
  indentation, or minor code style issues, the author may benefit from
  using a linting and/or autoformatting tool. A reviewer should point
  the way to some good tools and move on. Even better, make automated
  linting a part of your build process; let automation take care of
  the repetitive stuff, to free up human attention for the creative
  stuff.

- This isn't a gatekeeping exercise. Authors are ultimately
  responsible for their code and should feel free to accept and reject
  what they will of the reviewer's suggestions. That said, it's a
  learning session, and if a reviewer feels compelled to talk about
  something, it's probably significant. Don't reject suggestions
  lightly.

At its best, the code review relationship is that of novelist and
editor. Not student and teacher or worker and foreman -- even if such
a mentorship or hierarchic relationship actually exists between the
participants. And when executed at its best, code review can become a
collective knowledge-sharing exercise that improves the tangible
result and simultaneously opens a window for discussion in the realms
of fact and aesthetics. I have benefited personally from the process
throughout my career, and as I find myself more often on the reviewer
side, I am trying to pass on the favor.
