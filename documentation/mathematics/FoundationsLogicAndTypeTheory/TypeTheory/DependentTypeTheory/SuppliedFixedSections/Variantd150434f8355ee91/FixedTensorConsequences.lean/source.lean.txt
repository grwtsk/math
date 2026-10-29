/-
# Individually reviewed mathematical candidate: Consequences of an already supplied fixed horizontal section

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing source notices
remain exact in the archives and copied source documentation.
Original source SHA256: d150434f8355ee91dafc386fba2fec5da9e62d7a010392d5bb3237bf4b8b1a65
Organized source SHA256: c5d7f8b5cecb800af4316c34d57a7a3c0b552994fc24d3a2041e74987b0cd04a
Review: attribution-254-review-000188.
PMD: 510.0.070.020 dependent type theory; editorial navigation only.
Original-provider fixed-section projections only. Both complete C/F/nabla/e/X/T contexts and qualified proof calls remain exact. Horizontal means the predicate supplied by the original connection; fixedness is the actual pointwise endomap equality already required by T. No T, existence/uniqueness theorem, differential characterization, tensor construction or analytic fixed-point result is constructed. The legacy provider remains unresolved and is not replaced by the newly reviewed variant.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.CrystallineTensor.FixedTensor

/-!
# Folder.Theorem.CrystallineTensor.FixedTensor

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports fixed tensor projection facts.
Ontology: proof.crystalline.fixed_tensor
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedFixedSections.Variantd150434f8355ee91

theorem fixed_tensor_is_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.FixedTensor nabla e X) :
    nabla.horizontal X T.tensor.underlyingSection :=
  Folder.CrystallineTensor.fixed_tensor_is_horizontal T

theorem fixed_tensor_is_fixed
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.FixedTensor nabla e X) :
    e.map X T.tensor.underlyingSection =
      T.tensor.underlyingSection :=
  Folder.CrystallineTensor.fixed_tensor_is_fixed T

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedFixedSections.Variantd150434f8355ee91
