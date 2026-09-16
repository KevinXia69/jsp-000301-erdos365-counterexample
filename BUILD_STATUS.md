# Build status

## Verified build

The Lean project has been successfully built by GitHub Actions.

- Workflow: `Lean CI`
- Run number: `2`
- Commit: `0f5f6d97e4f3ead3872cb18e62bb97436302f867`
- Runner: `ubuntu-latest`
- Lean toolchain: `leanprover/lean4:v4.33.1`
- Formal Conjectures revision:
  `40e7c98697de6f66b8cbdbf641749ab39ed9c152`
- Result: `success`

The build log reports:

```text
Built Erdos365Counterexample
Build completed successfully (8909 jobs).
```

## Reproduction

```bash
lake build
```

The project contains no `sorry`, `admit`, or user-declared axioms in
`Erdos365Counterexample.lean`.

## Scope

This build verifies the Lean formalization of Golomb's counterexample to the
first question of Erdős Problem 365 / JSP-000301. It does not settle the
separate quantitative counting question.
