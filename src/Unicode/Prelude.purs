module Unicode.Prelude where

import Control.Semigroupoid (composeFlipped)
import Data.Function (apply, applyFlipped, id)
import Data.HeytingAlgebra (class HeytingAlgebra, conj, disj)
import Data.NaturalTransformation (NaturalTransformation)
import Data.Ord (lessThanOrEq, greaterThanOrEq)
import Data.Semigroup (append)
import Prelude (Unit, compose, mul, not, notEq, unit)

__ :: Unit
__ = unit

-- | `\verymuchless`
infixr 9 compose as ⋘

-- | `\ggg`
infixr 9 composeFlipped as ⋙

-- | `\ne`
infix 4 notEq as ≠

infixr 0 apply as <|
infixl 0 apply as :
infixl 1 applyFlipped as |>

notIgnore ∷ ∀d a. HeytingAlgebra a => d → a → a
notIgnore _ = not

-- | `\neg`
-- | use as:
-- | ```purescript
-- | __ ¬ false
-- | ```
infixr 7 notIgnore as ¬

-- | `\vee`
infixr 2 disj as ∨
-- | `\wedge`
infixr 3 conj as ∧

-- | `\rightsquigarrow`
infixr 4 type NaturalTransformation as ⇝

-- | `\ge`
infixl 4 greaterThanOrEq as ≥

-- | `\le`
infixl 4 lessThanOrEq as ≤

-- | `\diamond`
infixr 5 append as ⋄

-- | `\cdot`
infixl 7 mul as ⋅

-- | `\BbbR`
type ℝ = Number

-- | `\BbbN`
type ℕ = Int
