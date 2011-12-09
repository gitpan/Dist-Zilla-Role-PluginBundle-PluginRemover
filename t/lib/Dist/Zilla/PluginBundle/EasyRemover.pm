package # no_index
  Dist::Zilla::PluginBundle::EasyRemover;
use Moose;
with qw(
  Dist::Zilla::Role::PluginBundle::Easy
  Dist::Zilla::Role::PluginBundle::PluginRemover
);

sub configure {
  my $self = shift;
  $self->add_plugins(
    # ::Easy takes these name/package in reverse order
    [AutoPrereqs => 'Scan4Prereqs'],
    [PruneCruft  => 'GoodbyeGarbage'],
  );
}

__PACKAGE__->meta->make_immutable;
1;
