# Spotifyd
Here are a few things to consider when you're trying to set this up on your machine.
## Compile the package yourself for the pulseaudio backend and mpris support
If you want both these features you have to compile from source. The guide is on their website or just yse this md if you're lazy
```git clone https://github.com/Spotifyd/spotifyd.git```

Then

```cargo build --release --no-default-features --features pulseaudio_backend,dbus_keyring,dbus_mpris```


I think you'd also benefit from changing the backend in the Cargo.toml file in the repo you clone.
>Keep in mind you'll need cargo for this! ChatGPT is your friend when you're too lazy or too busy to read a manual.

## Spotifyd might crash in the background if you haven't been playing music for a while
To beat thus problem either write a script to check if its on before spotify-tui runs and run it if its not working or just run spotifyd in your terminal before you run spt in it.

 █████╗ ██╗     ██╗         ██╗  ██╗███████╗██╗██╗         ████████╗██╗  ██╗███████╗    ██████╗ ██╗  ██╗ █████╗ ██████╗  █████╗  ██████╗ ██╗  ██╗
██╔══██╗██║     ██║         ██║  ██║██╔════╝██║██║         ╚══██╔══╝██║  ██║██╔════╝    ██╔══██╗██║  ██║██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██║  ██║
███████║██║     ██║         ███████║█████╗  ██║██║            ██║   ███████║█████╗      ██████╔╝███████║███████║██████╔╝███████║██║   ██║███████║
██╔══██║██║     ██║         ██╔══██║██╔══╝  ██║██║            ██║   ██╔══██║██╔══╝      ██╔═══╝ ██╔══██║██╔══██║██╔══██╗██╔══██║██║   ██║██╔══██║
██║  ██║███████╗███████╗    ██║  ██║███████╗██║███████╗       ██║   ██║  ██║███████╗    ██║     ██║  ██║██║  ██║██║  ██║██║  ██║╚██████╔╝██║  ██║
╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝  ╚═╝╚══════╝╚═╝╚══════╝       ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝
                                                                                                                                                 