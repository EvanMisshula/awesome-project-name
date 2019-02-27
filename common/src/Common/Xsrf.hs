{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators     #-}

module Common.Xsrf where

import           Data.Text

headerName :: Text
headerName = "X-XSRF"

cookieName :: Text
cookieName = headerName -- why should this be different
