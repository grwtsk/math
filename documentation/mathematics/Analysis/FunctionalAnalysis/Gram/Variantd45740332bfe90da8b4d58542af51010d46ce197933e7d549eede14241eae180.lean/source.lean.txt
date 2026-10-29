import Mathematics.Trajectory.Carrier
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-! # Trajectory comparison by Gram data -/

noncomputable section

namespace Mathematics.Trajectory

variable {𝕜 E F Index : Type*}
variable [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]

def gram (trajectory : Index → E) (left right : Index) : 𝕜 :=
  inner 𝕜 (trajectory left) (trajectory right)

theorem gram_equality_of_unitary_transport
    (transport : E ≃ₗᵢ[𝕜] F)
    (trajectory : Index → E)
    (left right : Index) :
    gram (𝕜 := 𝕜) (E := F) (fun index ↦ transport (trajectory index)) left right =
      gram (𝕜 := 𝕜) (E := E) trajectory left right := by
  exact transport.inner_map_map (trajectory left) (trajectory right)

end Mathematics.Trajectory
