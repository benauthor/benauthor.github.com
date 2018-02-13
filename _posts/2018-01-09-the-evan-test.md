---
title: The {{ your_name }} test
---
# The \{\{ your_name \}\} test

Bet you've heard of the Joel test. It's not new.
It's a set of criteria written by
[Joel Spolsky](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)
quite a few years ago. He proposeed a set of questions for
quickly evaluating the health of a software organization:

    1.  Do you use source control?
    2.  Can you make a build in one step?
    3.  Do you make daily builds?
    4.  Do you have a bug database?
    5.  Do you fix bugs before writing new code?
    6.  Do you have an up-to-date schedule?
    7.  Do you have a spec?
    8.  Do programmers have quiet working conditions?
    9.  Do you use the best tools money can buy?
    10. Do you have testers?
    11. Do new candidates write code during their interview?
    12. Do you do hallway usability testing?

Nearly 20 years on, this is still a useful list, but I'm not sure it
covers all the ground I'm interested in covering. As a member of
software organizations, observing successes and failures over a few
years, I've gathered a few more questions of my own. In the spirit of
the Joel test, they are phrased in the binary, and "Yes" is the right
answer. These are leading indicators of successful technical
organizations, according to my opinion and subjective experience. They
have evolved over time, but here's my test as it stands today:


- **Do you have 'pushbutton' deploy and rollback of your software?**

  A natural extension of 'builds in one step', this indicates seriousness about
  tooling and automation. If you can't automate it, you're wasting a
  lot of time every deploy, and your time to recovery when things go
  wrong is going to be high.

- **Do your products have explicit service level objectives?**

  Indicates mature thinking around tradeoffs at the organizational
  level. Aspiring to 100% uptime makes everybody feel like a failure,
  because it's almost never practical. On the other hand, avoiding
  goals altogether makes you a
  slob. [Reliability is just a feature](https://landing.google.com/sre/book/chapters/embracing-risk.html),
  but it's an important one, so you should have thought about it.

- **Do you restrict write access in the production environment?**

  With great power comes great responsibility... and the temptation
  to cowboy-fix-it 'just this once'. And apathy on eat-your-veggies
  work like building QA/staging infra. And poor migration
  discipline. And concerns over private user data. And so on and so
  forth. Almost nobody should need, want, or have sudo access in
  production, or write privileges on your databases. Any routine tasks
  requiring SSH to prod machines is a smell. This isn't about
  gatekeeping, it's about not letting ourselves eat candy for
  breakfast.

- **Are your application logs durable, centralized, and searchable?**

  Your infra is [cattle, not pets](http://cloudscaling.com/blog/cloud-computing/the-history-of-pets-vs-cattle/).
  And see above on production access. There are several great
  solutions out there, use one.

- **Does your QA team think of themselves as toolbuilders and
  consultants to the dev team?**

  There will always be some rote QA work in the world, just like there
  will always be some tedious sysadmin work, but if the staff
  responsible for QA think of their work in terms of checklists and
  mouse clicks, something is wrong: this stuff never scales well, and
  is low-hanging fruit for automation.

- **Do you maintain open source projects?**

  I want to know if there is both time and cultural support to think
  big picture about the software you write, find good
  generalizations and good abstractions, and avoid reinventing the
  wheel.

- **Do you practice estimation?**

  You can't plan if you don't estimate. Nobody estimates right, but
  some estimate less badly than others. It's a skill that can be
  developed, and it doesn't appear without cultivation... If your org
  has no formal estimation process, your estimates are worse than they
  need to be.

- **Do your dev managers spend less than 25% of their time writing code?**

  It may not be a popular opinion, but managing dev teams is real
  work, and it's not at all like writing code. Unless your team is
  really small, your managers probably have plenty to keep them
  busy. If they are spending significant time writing code, they are
  dropping something elsewhere.

- **After failures and emergencies, do you do blameless postmortems?**

  Everybody has broken production at least once. The question is: were
  you able to learn from it, as an individual or as an organization?
  Some of the most profound lessons come from failure: we may have
  tested a boundaries, unearthed a bad assumption. But we can only
  learn from failures if we are open and honest about them.  Shaming
  people for mistakes is not only mean and morale-killing, it
  incentivizes people to learn to shift blame. Not talking at all
  is just as bad: a missed opportunity.


Use Joel's, use mine if you think they are useful, or don't. Either
way, write some of your own.
