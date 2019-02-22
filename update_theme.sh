sudo -H -u edxapp bash << EOF
source /edx/app/edxapp/edxapp_env
rm -rf /edx/app/edxapp/edx-platform/themes/cmeonline-theme
mkdir /edx/app/edxapp/edx-platform/themes/cmeonline-theme
cp -r /home/ubuntu/edx-theme.cmeonline.com/cmeonline-theme/* /edx/app/edxapp/edx-platform/themes/cmeonline-theme

cd /edx/app/edxapp/edx-platform
paver update_assets lms --settings=aws | tee ~/custom-theme-lms.log
paver update_assets cms --settings=aws | tee ~/custom-theme-cms.log
EOF
