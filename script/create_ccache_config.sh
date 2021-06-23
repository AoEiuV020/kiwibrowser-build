#!/bin/sh
mkdir -p $HOME/.ccache/
echo 'compiler_check = none' >> $HOME/.ccache/ccache.conf
echo "stats = false" >> $HOME/.ccache/ccache.conf
echo 'max_size = 20G' >> $HOME/.ccache/ccache.conf
echo "base_dir = $HOME" >> $HOME/.ccache/ccache.conf
echo "cache_dir = $HOME/cache" >> $HOME/.ccache/ccache.conf
echo "hash_dir = false" >> $HOME/.ccache/ccache.conf
