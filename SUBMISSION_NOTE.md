# Public evidence and submission note

## Related problem or entry

`JSP-000301` — the first yes/no subquestion of Erdős Problem 365:

> If two consecutive positive integers are powerful, must at least one be a
> perfect square?

This submission concerns only that first subquestion.

## Formal statement

The primary Lean theorem is:

```lean
theorem golomb_counterexample :
    ∃ n : ℕ, 0 < n ∧
      Nat.Powerful n ∧ Nat.Powerful (n + 1) ∧
      ¬ IsSquare n ∧ ¬ IsSquare (n + 1)
```

The project also proves the direct negation of the corresponding universal
assertion and provides an `answer(False)`-formatted theorem.

## Mathematical evidence

The witness is `n = 12167`.

- `12167 = 23^3`;
- `12168 = 2^3 * 3^2 * 13^2`;
- therefore both integers are powerful;
- `110^2 < 12167 < 12168 < 111^2`, so neither integer is a square.

The mathematical counterexample is attributed to Solomon W. Golomb. No claim
of mathematical discovery is made for the formalization contributor.

## Pinned formal evidence

- Public repository:
  `https://github.com/KevinXia69/jsp-000301-erdos365-counterexample`
- Pinned proof source:
  `https://github.com/KevinXia69/jsp-000301-erdos365-counterexample/blob/baff7ee8040997028a79508b69d2f2ef35e5f8d3/Erdos365Counterexample.lean`
- Verified commit:
  `baff7ee8040997028a79508b69d2f2ef35e5f8d3`
- Successful GitHub Actions run:
  `https://github.com/KevinXia69/jsp-000301-erdos365-counterexample/actions/runs/35127973485`
- Workflow: `Lean CI`
- Workflow run number: `5`
- Workflow result: `success`
- Lean toolchain: `leanprover/lean4:v4.33.1`
- Formal Conjectures revision:
  `40e7c98697de6f66b8cbdbf641749ab39ed9c152`
- Reproduction command: `lake build`
- Proof file contains no `sorry`, `admit`, or user-declared axioms.

The verified build log reports:

```text
Built Erdos365Counterexample
Build completed successfully (8909 jobs).
```

Later documentation-only commits do not alter the pinned Lean proof or the
successful verification record above.

## Statement alignment and scope limitation

The formal theorem gives an explicit pair of consecutive positive powerful
integers for which neither member is a square. It therefore proves the negative
answer to the first universal yes/no subquestion.

This evidence does not address the separate quantitative counting question in
Erdős Problem 365, and it does not claim to solve that full problem.

## Attribution and contribution record

### Mathematical contribution

- Solomon W. Golomb: the mathematical counterexample `12167, 12168`.

### Formalization, operation, and public submission

- Confirmed public ID: `KevinXia69`.
- KevinXia69 initiated the project, maintained the public repository, operated
  the GitHub Actions verification workflow, and prepared the public submission.

### AI assistance

- The Lean code and related documentation were prepared with assistance from
  OpenAI GPT-5.6 Sol Pro.
- AI assistance is disclosed and is not presented as independent human
  mathematical discovery or independent human review.

## Existing overlap

The Formal Conjectures repository already contains a proof in
`FormalConjectures/ErdosProblems/366.lean` using the same pair to establish that
`12167` is 3-full and `12168` is 2-full.

The present project adds explicit non-square certificates and packages the
result as the exact negative answer to the first question described above.
Reviewers should independently determine whether this incremental
formalization satisfies the prize's originality, attribution, and eligibility
requirements.

## Public identity confirmation and privacy

On 2026-09-17, KevinXia69 authorized public use of the GitHub ID `KevinXia69`
and the contribution description stated above.

That authorization does not extend to private contact information, identity
documents, payment information, or other private personal data.

## Review status

- Public repository: complete.
- Pinned source: complete.
- Reproducible Lean build: complete.
- Public contributor identity confirmation: complete.
- Independent mathematical and formal review: pending.
- Prize eligibility and any award decision: pending determination by the
  relevant reviewers or organizers.

A successful build verifies that Lean accepts the stated theorem in the pinned
environment. It does not by itself establish prize eligibility, recipient
allocation, or payment entitlement.
