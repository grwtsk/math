import Folder.Shader.BijectiveSplit

/-!
# Folder.Theorem.Shader.BijectiveSplit

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes the arithmetic split proof mirrored by runtime shader code.
Ontology: proof.shader.bijective_split
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: residual
-/

namespace Folder
namespace Theorem
namespace Shader

theorem reconstruct_split
    (raw step : Nat)
    (hstep : 0 < step) :
    Folder.Shader.reconstruct
        (Folder.Shader.split raw step hstep) = raw :=
  Folder.Shader.reconstruct_split raw step hstep

theorem residual_lt_step
    (S : Folder.Shader.QuantizedSplit) :
    S.residual < S.step :=
  Folder.Shader.residual_lt_step S

end Shader
end Theorem
end Folder
