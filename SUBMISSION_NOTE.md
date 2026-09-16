# Public evidence and submission note

## Related problem or entry

`JSP-000301` — “If two consecutive positive integers are powerful, must at
least one be a perfect square?”

Related historical source: Erdős Problem 365, first question only.

## Theorem statement

```lean
theorem golomb_counterexample :
    ∃ n : ℕ, 0 < n ∧
      Nat.Powerful n ∧ Nat.Powerful (n + 1) ∧
      ¬ IsSquare n ∧ ¬ IsSquare (n + 1)
```

The package also proves the direct negation of the corresponding universal
assertion and an `answer(False)` wrapper.

## Mathematical evidence

Witness: `n = 12167`.

- `12167 = 23^3`;
- `12168 = 2^3 * 3^2 * 13^2`;
- hence both are powerful;
- `110^2 < 12167 < 12168 < 111^2`, so neither is a square.

The mathematical counterexample is attributed to Solomon W. Golomb.

## Formal evidence

- Proof file: `Erdos365Counterexample.lean`
- Lean: `v4.33.1`
- Formal Conjectures revision:
  `40e7c98697de6f66b8cbdbf641749ab39ed9c152`
- Canonical definition: `Nat.Powerful := (2).Full`
- No `sorry`, `admit`, or user-declared axioms
- Reproducible command: `lake build`
- CI workflow: `.github/workflows/lean.yml`

## Scope limitation

This evidence settles only the first yes/no subquestion. It does not settle the
separate quantitative counting question in Erdős Problem 365.

## Attribution and priority disclosure

The Formal Conjectures repository already contains a proof in
`FormalConjectures/ErdosProblems/366.lean` using the same pair to show that
`12167` is 3-full and `12168` is 2-full. The present package adds explicit
non-square proofs and the exact first-question theorem. Reviewers should assess
whether that incremental formalization meets the prize's originality and
eligibility rules.

## AI disclosure

The formalization package was prepared with assistance from OpenAI GPT-5.6 Sol
Pro. Human review and written recipient confirmation are pending.
