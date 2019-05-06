echo "> Initialization of mirror repo"
repo init -u https://github.com/iaroslavpavlynskyi/mirror-test.git -b github-test --mirror

echo "> Sync repo"
repo sync

echo "> Add remotes for each ADIT-JV project"

git -C github/ADIT-JV/optee_client.git remote add gl_a ssh://git@github.com/AleksandrBulyshchenko/optee_client --mirror=fetch

git -C github/ADIT-JV/linux-v4.14.git remote add gl_a ssh://git@github.com/AleksandrBulyshchenko/linux-v4.14 --mirror=fetch
git -C github/ADIT-JV/linux-v4.14.git remote add gl_s ssh://git@github.com/StanislavGoncharovGL/linux-v4.14 --mirror=fetch

git -C github/ADIT-JV/android-rcar3-bsp.git remote add gl_a ssh://git@github.com/AleksandrBulyshchenko/android-rcar3-bsp --mirror=fetch
git -C github/ADIT-JV/android-rcar3-bsp.git remote add gl_s ssh://git@github.com/StanislavGoncharovGL/android-rcar3-bsp --mirror=fetch

git -C github/ADIT-JV/optee_client.git remote add gl_a ssh://git@github.com/AleksandrBulyshchenko/optee_client --mirror=fetch
git -C github/ADIT-JV/optee_client.git remote add gl_s ssh://git@github.com/StanislavGoncharovGL/optee_client --mirror=fetch

git -C github/ADIT-JV/android-rcar3-vendor.git remote add gl_a ssh://git@github.com/AleksandrBulyshchenko/android-rcar3-vendor --mirror=fetch
git -C github/ADIT-JV/android-rcar3-vendor.git remote add gl_s ssh://git@github.com/StanislavGoncharovGL/android-rcar3-vendor --mirror=fetch

echo "> Fetch all remotes"

repo forall -g github -c 'git fetch --all'
