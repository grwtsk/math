/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 2. -/
theorem coefficients2 : ∀ j : Fin 4, compose recover2 encode2 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip2_exact (x : Four) : roundTrip2 x = x := by
  unfold roundTrip2
  rw [transform_compose]
  have h : compose recover2 encode2 = identityMatrix := funext coefficients2
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
