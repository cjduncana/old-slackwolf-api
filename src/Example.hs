{-# LANGUAGE OverloadedStrings #-}

module Example (runApp, app) where

import Data.Aeson (Value(..), object, (.=))
import Network.Wai (Application)
import Web.Scotty

app' :: ScottyM ()
app' = do
  get "/" $
    text "Hello World!"

  get "/some-json" $
    json $ object ["foo" .= Number 23, "bar" .= Number 42]

app :: IO Application
app = scottyApp app'

runApp :: IO ()
runApp = scotty 3000 app'
