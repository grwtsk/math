/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 0. -/
theorem coefficients0 : ∀ j : Fin 4, compose recover0 encode0 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip0_exact (x : Four) : roundTrip0 x = x := by
  unfold roundTrip0
  rw [transform_compose]
  have h : compose recover0 encode0 = identityMatrix := funext coefficients0
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
