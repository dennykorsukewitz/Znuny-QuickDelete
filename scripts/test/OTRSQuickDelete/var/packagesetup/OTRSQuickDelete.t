# --
# Copyright (C) 2019 Denny Bresch (dennybresch@gmail.com) (https://github.com/dennybresch)
# Copyright (C) 2012-2019 Znuny GmbH, http://znuny.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
## nofilter(TidyAll::Plugin::OTRS::Znuny4OTRS::Gitlabci::Missing)

use strict;
use warnings;
use utf8;

use vars (qw($Self));

use Kernel::System::VariableCheck qw(:all);

$Kernel::OM->ObjectParamAdd(
    'Kernel::System::UnitTest::Helper' => {
        RestoreDatabase            => 1,
    },
);

my $PackageSetupObject = $Kernel::OM->Get('var::packagesetup::OTRSQuickDelete');

$Self->True(
    scalar $PackageSetupObject->CodeInstall(),
    'CodeInstall()',
);

$Self->True(
    scalar $PackageSetupObject->CodeReinstall(),
    'CodeReinstall()',
);

$Self->True(
    scalar $PackageSetupObject->CodeUpgrade(),
    'CodeUpgrade()',
);

$Self->True(
    scalar $PackageSetupObject->CodeUninstall(),
    'CodeUninstall',
);

1;
