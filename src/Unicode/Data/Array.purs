module Unicode.Data.Array where

import Control.Alternative (class Alternative)
import Control.Lazy (class Lazy)
import Data.Array (all, any, index, some)
import Data.Foldable (class Foldable)
import Prelude (class HeytingAlgebra, Unit, unit, ($))

thereExists :: forall t1 t2 t3 t4. Foldable t2 => HeytingAlgebra t3 => t1 -> t2 t4 -> (t4 -> t3) -> t3
thereExists _ elements predicate = any predicate elements

-- | ```purescript
-- |  __ ∃ [1, -3] : (_ > 0) -- == true
-- | ```
infixl 10 thereExists as ∃

forAll :: forall t4 t5 t6 t7. Foldable t5 => HeytingAlgebra t6 => t4 -> t5 t7 -> (t7 -> t6) -> t6
forAll _ elements predicate = all predicate elements

-- | ```purescript
-- | __ ∀ [1, -3] : (_ > 0) -- == false
-- | ```
infixr 10 forAll  as ∀
