#!/usr/bin/perl

# $Id: /Devel-Modlist/local/Build.PL 518 2006-09-15T02:22:06.942952Z rjray  $

use Module::Build;

my $build = Module::Build->new(
    module_name       => 'Devel::Modlist',
    license           => 'artistic',
    requires          => { perl => '5.6.0',
                           CPAN => '1.8' },
    build_requires    => { Test::More => 0 },
    dist_author       => 'Randy J. Ray <rjray@blackperl.com>',
    dist_abstract     =>
    'Create lists of modules used by applications or other modules',
    dist_version_from => 'lib/Devel/Modlist.pm',
    sign              => 'here',
);

$build->add_to_cleanup(qw(META.yml Devel-Modlist-* *.html *.log t/*.log));
$build->create_build_script;
