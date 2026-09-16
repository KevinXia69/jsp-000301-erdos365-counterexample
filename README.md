# JSP-000301 / Erdős Problem 365 — Lean counterexample certificate

This repository formalizes the negative answer to the **first** question of
Erdős Problem 365, corresponding to the scoped statement in JSP-000301:

> Must one member of every consecutive pair of positive powerful integers be a
> perfect square?

It does not claim to solve the separate quantitative counting question that
keeps the full Erdős problem open.

## Formal result

`Erdos365Counterexample.lean` proves three declarations:

1. `golomb_counterexample` — there is a positive natural number `n` such that
   `n` and `n + 1` are powerful and neither is a square;
2. `first_question_false` — the universal yes/no assertion is false;
3. `formal_conjectures_answer_false` — the same conclusion in the
   Formal Conjectures `answer(False)` format.

The witness is Solomon W. Golomb's pair:

```text
12167 = 23^3
12168 = 2^3 * 3^2 * 13^2
```

Both lie strictly between `110^2 = 12100` and `111^2 = 12321`.

## Definition alignment

The proof imports `FormalConjecturesUtil` and uses the project's canonical
predicate:

```lean
abbrev Nat.Powerful : ℕ → Prop := (2).Full
```

where `k.Full n` requires `p^k ∣ n` for every prime factor `p` of `n`.

The dependency is pinned to:

```text
google-deepmind/formal-conjectures
40e7c98697de6f66b8cbdbf641749ab39ed9c152
```

The Lean toolchain is pinned to `v4.33.1`.

## Build

With `elan` installed:

```bash
lake update
lake build
```

The included GitHub Actions workflow runs the same build on every push and pull
request.

## Proof mechanism

The kernel-checkable certificate uses:

```lean
norm_num +contextual [Nat.Full, Nat.primeFactors, Nat.primeFactorsList]
```

to compute the prime-factor sets and divisibility obligations. Mathlib's
`norm_num` extension for `IsSquare` proves that the two explicit numerals are
not squares.

There are no `sorry`, `admit`, or user-declared axioms in the proof file.

## Attribution and overlap

The mathematical counterexample is due to Solomon W. Golomb, not to this
formalization.

The current Formal Conjectures repository already uses the same pair in a
different theorem to certify that `12167` is 3-full and `12168` is 2-full.
This package adds the two non-square certificates and packages the exact
negative answer to the first question. That overlap must be disclosed in any
award or priority claim.

Before public submission, replace `RECIPIENT-JSP-000301-A` only after the
recipient has provided written confirmation, and retain the AI-assistance
disclosure.
