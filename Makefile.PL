use ExtUtils::MakeMaker;

# $Id: Makefile.PL 35 2008-09-01 22:55:49Z rjray $

WriteMakefile(
              (MM->can('signature_target') ? (SIGN => 1) : ()),
              NAME         => 'Devel::Modlist',
              VERSION_FROM => 'lib/Devel/Modlist.pm', # finds $VERSION
              clean        => { FILES =>
                                'pod2html-* *.html blibdirs META.yml' },
             );
