# Updating AUR

    docker run --rm -it -v $(pwd):/pkg jdxcode/aur-test-docker

    vim PKGBUILD # update version
    updpkgsums
    makepkg --printsrcinfo > .SRCINFO
    makepkg -C -f --noconfirm
    git add PKGBUILD .SRCINFO
    git commit -m "update to vX.Y.Z"
    git push
