# Draft: Recommend a recipient

This document is a draft for the Justin Sun Prize “Recommend a recipient”
issue form. It does not assert that an award has been made or that the
submission is eligible.

## Related problem or entry

`JSP-000301`

First yes/no subquestion of Erdős Problem 365:

> If two consecutive positive integers are powerful, must at least one be a
> perfect square?

This recommendation concerns only that first subquestion. It does not concern
the separate quantitative counting question in the full Erdős problem.

## Recipient placeholder or confirmed public ID

`KevinXia69`

The public GitHub ID `KevinXia69` has been confirmed and authorized for use in
this recommendation.

## Contributions and evidence

### Mathematical contribution

The mathematical counterexample is due to Solomon W. Golomb:

```text
12167 = 23^3
12168 = 2^3 * 3^2 * 13^2
```

Both integers are powerful, and both lie strictly between `110^2` and `111^2`.
Therefore neither is a perfect square.

No claim of mathematical discovery is made for KevinXia69.

### Formal statement

The primary Lean theorem is:

```lean
theorem golomb_counterexample :
    ∃ n : ℕ, 0 < n ∧
      Nat.Powerful n ∧ Nat.Powerful (n + 1) ∧
      ¬ IsSquare n ∧ ¬ IsSquare (n + 1)
```

The project also proves:

- the direct negation of the corresponding universal assertion; and
- an `answer(False)`-formatted version using the Formal Conjectures convention.

### KevinXia69 contribution

KevinXia69:

- initiated the formalization project;
- created and maintained the public repository;
- operated and reviewed the GitHub Actions verification process;
- published the pinned Lean source and reproducible build configuration; and
- prepared the public recommendation materials.

### AI assistance

The Lean code and related project documentation were prepared with assistance
from OpenAI GPT-5.6 Sol Pro.

This AI assistance is disclosed. It is not presented as independent human
mathematical discovery or independent human review.

### Public repository

```text
https://github.com/KevinXia69/jsp-000301-erdos365-counterexample
```

### Pinned proof source

```text
https://github.com/KevinXia69/jsp-000301-erdos365-counterexample/blob/baff7ee8040997028a79508b69d2f2ef35e5f8d3/Erdos365Counterexample.lean
```

### Verified commit

```text
baff7ee8040997028a79508b69d2f2ef35e5f8d3
```

### Successful verification run

```text
https://github.com/KevinXia69/jsp-000301-erdos365-counterexample/actions/runs/35127973485
```

Verification details:

- Workflow: `Lean CI`
- Run number: `5`
- Result: `success`
- Runner: `ubuntu-latest`
- Lean toolchain: `leanprover/lean4:v4.33.1`
- Formal Conjectures revision:
  `40e7c98697de6f66b8cbdbf641749ab39ed9c152`
- Reproduction command: `lake build`
- The proof file contains no `sorry`, `admit`, or user-declared axioms.

The build log reports:

```text
Built Erdos365Counterexample
Build completed successfully (8909 jobs).
```

Later documentation-only commits do not alter the pinned proof source or the
verification record above.

### Statement alignment

The theorem supplies an explicit positive integer `n` such that:

- `n` is powerful;
- `n + 1` is powerful;
- `n` is not a square; and
- `n + 1` is not a square.

It therefore proves that the answer to the stated first universal yes/no
subquestion is negative.

It does not prove or claim anything about the separate quantitative counting
question in Erdős Problem 365.

## Confirmation status

Confirmed.

On 2026-09-17, KevinXia69 authorized:

- public use of the GitHub identity `KevinXia69`;
- public description of the contribution scope stated above; and
- public disclosure of the OpenAI GPT-5.6 Sol Pro assistance.

The authorization expressly excludes publication of private contact
information, identity documents, payment information, or other private
personal data.

## Attribution questions and conflicts

1. The mathematical counterexample predates this project and is attributed to
   Solomon W. Golomb.

2. The Formal Conjectures repository already contains a proof in
   `FormalConjectures/ErdosProblems/366.lean` using the same numerical pair to
   establish that `12167` is 3-full and `12168` is 2-full.

3. The present project adds explicit non-square certificates and packages the
   facts as the exact negative answer to the first question stated above.
   Reviewers should independently determine whether this incremental
   formalization satisfies the prize’s originality and eligibility
   requirements.

4. The full Erdős Problem 365 remains open because its separate quantitative
   counting question is not addressed by this submission.

5. A successful Lean build establishes that Lean accepts the stated theorem in
   the pinned environment. It does not by itself establish mathematical
   statement alignment, prize eligibility, recipient allocation, an award
   decision, or payment entitlement.

6. Independent mathematical and formal review remains pending.
