NAME
====

Pod::To::Anything

AUTHOR
======

Patrick Spek <p.spek@tyil.work>

VERSION
=======

0.0.0

Synopsis
========

    use Pod::To::Anything;
    use Pot::To::Anything::Subsets;

Description
===========

A base class to easily build RakuFormerly known as Perl 6 Pod converters with.

Installation
============

Through `zef`
-------------

[zef](https://github.com/ugexe/zef) is the standard distribution manager for [Raku](https://raku.org). If you're using an end-user distribution like [Rakudo Star](https://rakudo.org/files/star), it will be installed for you by default.

`zef` will install the latest available version from [CPAN](http://www.cpan.org/modules/index.html).

```sh
zef install Pod::To::Anything
```

Usage
=====

You will need to include the two packages exposed by this module.

    use Pod::To::Anything;
    use Pot::To::Anything::Subsets;

Now you can make a new class that implements the `Pod::To::Anything` role.

    class Foo does Pod::To::Anything { }

You will need to implement all the supported [Pod6 elements](https://docs.raku.org/language/pod#Block_types). Don't worry too much about missing one, as the compiler will complain about any you missed. For reference, you will need to implement the following methods.

    multi method render (Pod::Block::Code:D $ --> Str) { … }
    multi method render (Pod::Block::Declarator:D $ --> Str) { … }
    multi method render (Pod::Block::Named::Author:D $ --> Str) { … }
    multi method render (Pod::Block::Named::Name:D $ --> Str) { … }
    multi method render (Pod::Block::Named::Subtitle:D $ --> Str) { … }
    multi method render (Pod::Block::Named::Title:D $ --> Str) { … }
    multi method render (Pod::Block::Named::Version:D $ --> Str) { … }
    multi method render (Pod::Block::Named::Pod:D $ --> Str) { … }
    multi method render (Pod::Block::Para:D $ --> Str) { … }
    multi method render (Pod::Block::Table:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::B:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::C:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::E:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::I:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::K:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::L:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::N:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::P:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::R:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::T:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::U:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::V:D $ --> Str) { … }
    multi method render (Pod::FormattingCode::X:D $ --> Str) { … }
    multi method render (Pod::Heading:D $ --> Str) { … }
    multi method render (Pod::Item:D $ --> Str) { … }

There are two convenience methods exposed by `Pod::To::Anything`: `.traverse` and `.unpod`. The former will traverse all the Pod6 elements contained in a given Pod6 element. The latter will do almost the same, except it will turn everything into plain strings, losing all markup value from Pod6 elements.

Examples
--------

  * [`Pod::To::HTML::Section`](https://home.tyil.nl/git/raku/Pod::To::HTML::Section/)

Contributing
============

Reporting bugs or other feedback
--------------------------------

Any bugs or other feedback can be sent to my email address. I generally try to respond to all mail within 24 hours.

Proposing code patches
----------------------

Code patches can also be sent in through email. If you need help to send git patches through email, you may want to read up on [git-send-email.io](https://git-send-email.io/).

License
=======

This module is distributed under the terms of the GNU AGPL, version 3.0.

