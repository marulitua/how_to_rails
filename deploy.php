<?php

namespace Deployer;

use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Input\InputArgument;

require 'recipe/laravel.php';

// Configuration

set('ssh_type', 'native');
set('ssh_multiplexing', true);
set('keep_releases', 5);
set('repository', 'git@github.com:marulitua/how_to_rails.git');
//set('default_stage', 'staging');
add('shared_files', []);
add('shared_dirs', [
    'storage'
]);

// Servers
host('maruli.ga')
    ->user('maruli')
    ->forwardAgent(true)
    ->set('branch', 'master')
    ->set('stage', 'staging')
    ->set('deploy_path', '/home/maruli/rails');

// [Optional] if deploy fails automatically unlock.
after('deploy:failed', 'deploy:unlock');

task('dependency', function () {
    //run('cd {{release_path}} && rake exec bundler');
});

task('deploy', [
    'deploy:prepare',
    'deploy:release',
    'deploy:update_code',
    'deploy:shared',
    'dependency',
    'deploy:symlink',
    'cleanup',
])->desc('Deploy the app');
