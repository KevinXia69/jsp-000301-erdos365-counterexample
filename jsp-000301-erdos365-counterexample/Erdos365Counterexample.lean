/-
Copyright (c) 2026.
Released under Apache 2.0 license as described in the file LICENSE.
Formalization record: RECIPIENT-JSP-000301-A.
AI assistance: OpenAI GPT-5.6 Sol Pro.
-/

import FormalConjecturesUtil

/-!
# JSP-000301 / Erdős Problem 365: Golomb's counterexample

This file formalizes the already-known negative answer to the first yes/no
question in Erdős Problem 365:

> Must one member of every consecutive pair of positive powerful integers be a
> perfect square?

The witness is the pair `12167`, `12168`, observed by Solomon W. Golomb:

* `12167 = 23^3`;
* `12168 = 2^3 * 3^2 * 13^2`.

Both numbers are powerful and neither is a square.

This file does **not** address the separate quantitative counting question in
Erdős Problem 365.
-/

open Nat

namespace Erdos365Counterexample

/-- The first member of Golomb's pair has the advertised factorization. -/
lemma factorization_12167 : (12167 : ℕ) = 23 ^ 3 := by
  norm_num

/-- The second member of Golomb's pair has the advertised factorization. -/
lemma factorization_12168 : (12168 : ℕ) = 2 ^ 3 * 3 ^ 2 * 13 ^ 2 := by
  norm_num

/--
Golomb's explicit counterexample: two consecutive positive powerful natural
numbers, neither of which is a square.
-/
theorem golomb_counterexample :
    ∃ n : ℕ, 0 < n ∧
      Powerful n ∧ Powerful (n + 1) ∧
      ¬ IsSquare n ∧ ¬ IsSquare (n + 1) := by
  use 12167
  norm_num +contextual [Nat.Full, Nat.primeFactors, Nat.primeFactorsList]

/--
The universal assertion in the first question of Erdős Problem 365 is false.
-/
theorem first_question_false :
    ¬ ∀ n : ℕ, 0 < n →
      Powerful n ∧ Powerful (n + 1) →
      IsSquare n ∨ IsSquare (n + 1) := by
  intro h
  rcases golomb_counterexample with ⟨n, hnpos, hn, hn1, hnsq, hn1nsq⟩
  rcases h n hnpos ⟨hn, hn1⟩ with hs | hs
  · exact hnsq hs
  · exact hn1nsq hs

/--
The same result packaged with the `answer(False)` convention used by the
Formal Conjectures project.
-/
theorem formal_conjectures_answer_false :
    answer(False) ↔
      ∀ n : ℕ, 0 < n →
        Powerful n ∧ Powerful (n + 1) →
        IsSquare n ∨ IsSquare (n + 1) := by
  constructor
  · intro h
    exact h.elim
  · intro h
    exact first_question_false h

end Erdos365Counterexample
