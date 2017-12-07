## Module Unicode.Data.Array

#### `thereExists`

``` purescript
thereExists :: forall t1 t2 t3 t4. Foldable t2 => HeytingAlgebra t3 => t1 -> t2 t4 -> (t4 -> t3) -> t3
```

#### `(∃)`

``` purescript
infixl 10 thereExists as ∃
```

```purescript
 __ ∃ [1, -3] : (_ > 0) -- == true
```

#### `forAll`

``` purescript
forAll :: forall t4 t5 t6 t7. Foldable t5 => HeytingAlgebra t6 => t4 -> t5 t7 -> (t7 -> t6) -> t6
```

#### `(∀)`

``` purescript
infixr 10 forAll as ∀
```

```purescript
__ ∀ [1, -3] : (_ > 0) -- == false
```


