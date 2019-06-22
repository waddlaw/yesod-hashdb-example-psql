{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE QuasiQuotes #-}
module Handler.Protect where

import Import

getProtectedR :: Handler Html
getProtectedR = defaultLayout
  [whamlet| $newline never
      <p>OK, you are logged in so you are allowed to see this!
      <p><a href=@{HomeR}>Go to home page
  |]