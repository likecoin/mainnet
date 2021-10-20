#!/bin/sh -e
rly light init likecoin-mainnet-2 -f
rly light init osmosis-1 -f
rly light init cosmoshub-4 -f
while true
do
  rly tx relay-packets likeosmos
  rly tx relay-acknowledgements likeosmos
  sleep 5
  rly tx relay-packets osmoslike
  rly tx relay-acknowledgements osmoslike
  sleep 5
  rly tx relay-packets likehub
  rly tx relay-acknowledgements likehub
  sleep 5
  rly tx relay-packets hublike
  rly tx relay-acknowledgements hublike
  sleep 5
done
