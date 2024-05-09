#! /usr/bin/env false

use v6.c;

unit package Pod::To::Anything::Subsets;

subset Pod::Block::Named::Author of Pod::Block::Named where *.name eq 'AUTHOR';
subset Pod::Block::Named::Name of Pod::Block::Named where *.name eq 'NAME';
subset Pod::Block::Named::Pod of Pod::Block::Named where *.name eq 'pod';
subset Pod::Block::Named::Subtitle of Pod::Block::Named where *.name eq 'SUBTITLE';
subset Pod::Block::Named::Title of Pod::Block::Named where *.name eq 'TITLE';
subset Pod::Block::Named::Version of Pod::Block::Named where *.name eq 'VERSION';
subset Pod::FormattingCode::B of Pod::FormattingCode where *.type eq 'B';
subset Pod::FormattingCode::C of Pod::FormattingCode where *.type eq 'C';
subset Pod::FormattingCode::E of Pod::FormattingCode where *.type eq 'E';
subset Pod::FormattingCode::I of Pod::FormattingCode where *.type eq 'I';
subset Pod::FormattingCode::K of Pod::FormattingCode where *.type eq 'K';
subset Pod::FormattingCode::L of Pod::FormattingCode where *.type eq 'L';
subset Pod::FormattingCode::N of Pod::FormattingCode where *.type eq 'N';
subset Pod::FormattingCode::P of Pod::FormattingCode where *.type eq 'P';
subset Pod::FormattingCode::R of Pod::FormattingCode where *.type eq 'R';
subset Pod::FormattingCode::T of Pod::FormattingCode where *.type eq 'T';
subset Pod::FormattingCode::U of Pod::FormattingCode where *.type eq 'U';
subset Pod::FormattingCode::V of Pod::FormattingCode where *.type eq 'V';
subset Pod::FormattingCode::X of Pod::FormattingCode where *.type eq 'X';
subset Pod::FormattingCode::Z of Pod::FormattingCode where *.type eq 'Z';

=begin pod

=NAME    Pod::To::Anything::Subsets
=AUTHOR  Patrick Spek <p.spek@tyil.work>
=VERSION 0.1.0

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 EXAMPLES

=head1 SEE ALSO

=end pod

# vim: ft=perl6 noet
