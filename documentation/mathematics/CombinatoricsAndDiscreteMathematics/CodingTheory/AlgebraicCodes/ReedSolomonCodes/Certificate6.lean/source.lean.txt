/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 6. -/
theorem coefficients6 : ∀ j : Fin 4, compose recover6 encode6 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip6_exact (x : Four) : roundTrip6 x = x := by
  unfold roundTrip6
  rw [transform_compose]
  have h : compose recover6 encode6 = identityMatrix := funext coefficients6
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
