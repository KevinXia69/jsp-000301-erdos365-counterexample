# Build status

## Prepared target

- Lean toolchain: `leanprover/lean4:v4.33.1`
- Formal Conjectures revision:
  `40e7c98697de6f66b8cbdbf641749ab39ed9c152`
- Source proof: `Erdos365Counterexample.lean`

## Evidence available before a fresh build

The pinned Formal Conjectures source already kernel-checks the same numerical
pair with:

```lean
norm_num +contextual [Nat.Full, Nat.primeFactors, Nat.primeFactorsList]
```

to establish that `12167` is 3-full and `12168` is 2-full. Mathlib v4.33.1
contains a `norm_num` extension that decides `IsSquare` for natural numerals.

## Fresh build

A fresh Lean build was not executed in the artifact-generation sandbox because
that environment did not contain a Lean toolchain and could not fetch one.
The included GitHub Actions workflow is the authoritative next verification
step. Do not state that this package is independently build-verified until that
workflow passes.
