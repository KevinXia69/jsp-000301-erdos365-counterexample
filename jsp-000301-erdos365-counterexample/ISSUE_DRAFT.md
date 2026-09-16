# Draft: Recommend a recipient

Do not submit this draft until the proof has a public, pinned repository URL
and CI has passed.

## Related problem or entry

JSP-000301

## Recipient placeholder or confirmed public ID

RECIPIENT-JSP-000301-A

## Contributions and evidence

Mathematical contribution:
- The counterexample `12167, 12168` is due to Solomon W. Golomb.
- No claim of mathematical discovery is made for the proposed recipient.

Formalization contribution:
- A Lean 4 certificate proves that `12167` and `12168` are consecutive positive
  powerful integers and that neither is a square.
- It then proves the negation of the universal first-question assertion and an
  `answer(False)`-formatted theorem.
- Public proof URL: PENDING
- Pinned commit: PENDING
- Passing CI run: PENDING
- Lean version: v4.33.1
- Formal Conjectures dependency:
  40e7c98697de6f66b8cbdbf641749ab39ed9c152

Operation and assistance:
- AI-assisted formalization; assistance from OpenAI GPT-5.6 Sol Pro must be
  disclosed.
- Human operator/reviewer identity: PENDING WRITTEN CONFIRMATION.

## Confirmation status

Pending. Do not replace the placeholder with a public identity until written
confirmation authorizes public attribution.

## Attribution questions and conflicts

1. The mathematical counterexample predates this formalization and is credited
   to Solomon W. Golomb.
2. `FormalConjectures/ErdosProblems/366.lean` already uses the same pair to
   certify that `12167` is 3-full and `12168` is 2-full. This package adds the
   non-square certificates and exact first-question packaging; originality and
   recipient allocation therefore require review.
3. The full Erdős Problem 365 remains open because its quantitative counting
   question is not addressed.
4. No award entitlement or payment claim is inferred from compilation or from
   the problem-bank screening status.
