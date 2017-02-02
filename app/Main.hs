{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty

main :: IO ()
main = do
  putStrLn "Starting Server..."
  scotty 3000 routes

routes :: ScottyM ()
routes = do
  get "/hello" hello

hello :: ActionM ()
hello = do
  text "hello world!"
