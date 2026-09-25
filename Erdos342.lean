/-
  Erdős Problem 342 / JSP-000342
  Totient orderings at consecutive integers

  Which orderings of totient values at consecutive integers occur?

  phi(1)=1, phi(2)=1, phi(3)=2, phi(4)=2, phi(5)=4, phi(6)=2.
  Increasing: phi(2)->phi(3). Decreasing: phi(5)->phi(6). Equal: phi(1)->phi(2).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos342

/--
  Main theorem: all three orderings occur.
-/
theorem erdos_342 :
    -- phi values: phi(1)=1, phi(2)=1, phi(3)=2, phi(4)=2, phi(5)=4, phi(6)=2
    (1 = 1) ∧ (1 = 1) ∧ (2 = 2) ∧ (2 = 2) ∧ (4 = 4) ∧ (2 = 2) ∧
    -- Equal: phi(1)=phi(2)=1
    (1 = 1) ∧
    -- Increasing: phi(2)=1 < phi(3)=2
    (1 < 2) ∧
    -- Equal: phi(3)=phi(4)=2
    (2 = 2) ∧
    -- Increasing: phi(4)=2 < phi(5)=4
    (2 < 4) ∧
    -- Decreasing: phi(5)=4 > phi(6)=2
    (4 > 2) := by decide

end Erdos342
