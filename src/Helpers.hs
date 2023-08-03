module Helpers where

import Data.Text (Text)
import Data.UUID (UUID)
import System.Random (mkStdGen, random)
import TextShow (fromString, toText)

tshow :: (Show a) => a -> Text
tshow = toText . fromString . show

-- Use this to generate a registration ID from an unregistered patron's idNumber to create their registration ID when they sign up
-- Is Idempotent
randomUUID :: Word -> UUID
randomUUID = fst . random . mkStdGen . fromInteger . toInteger
