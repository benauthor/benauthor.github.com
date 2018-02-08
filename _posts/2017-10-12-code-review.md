---
layout: post
title: Constructive Code Review
---

# Rules of thumb for useful code review

- Tone matters. Even constructive criticism can sting if presented in
  an overly curt manner. Consider using words like 'consider'. Be
  polite. And be aware that jokes sometimes don't land well in this
  medium.

- This isn't a copy-editing session. If a reviewer notices whitespace,
  indentation, or minor code style issues, the author may benefit from
  using a linting and/or autoformatting tool. A reviewer should point
  the way to some good tools and move on. Even better, make automated
  linting a part of the build, so robots can take care of the small
  stuff.

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
  encourage best practices but be vigilant against premature
  optimization.

- Use programmatic proofs. Code authors should write tests for
  important behaviors, run benchmarks and profiling and load testing
  when performance is relevant... and document the results. Reviewers
  should encourage the author to add tests where important behavior is
  untested, and encourage benchmarking where it may be useful.

- This isn't a gatekeeping exercise. Authors are ultimately
  responsible for their code and should feel free to accept and reject
  what they will of the reviewer's suggestions. That said, it's a
  learning session, and if a reviewer feels compelled to talk about
  something, it's probably significant to them. So don't reject
  suggestions lightly.

- In other words, the relationship between author and reviewer is that
  of artist and critic, novelist and editor. Not student and teacher
  or worker and foreman -- even if such a mentorship or heirarchic
  relationship exists between the participants. We are all adults
  here, and even the most experienced programmer benefits from a
  another set of eyes (or several). Well-executed code review is a
  collective knowledge-sharing exercise that improves the result and
  opens a window for discussion in the realms of fact and aesthetics.
