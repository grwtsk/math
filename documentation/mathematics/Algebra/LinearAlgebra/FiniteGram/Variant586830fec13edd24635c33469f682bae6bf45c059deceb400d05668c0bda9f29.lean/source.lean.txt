-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.GramFactorCertificate.Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.GramFactorCertificate.Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Kernel/FiniteGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Kernel.Core
import MathDiscovery.Kernel.Regularization
import Mathlib.LinearAlgebra.Matrix.DotProduct

/-!
# Finite active Gram matrices

A Lean environment can be arbitrarily large from the API's point of view, but
one extraction snapshot and one active clustering region are finite.  This
module isolates the exact finite matrix selected from any arbitrary-index
kernel.
-/


namespace GRWTSK.Algebra.LinearAlgebra.GramFactorCertificate.Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a

noncomputable section

namespace MathDiscovery.Kernel

open scoped ComplexOrder

universe u v

/-- Exact Gram matrix selected by an active index family. -/
def finiteGram
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) : Matrix Active Active ℂ :=
  kernel.matrix.submatrix indices indices

@[simp]
theorem finiteGram_apply
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index)
    (p q : Active) :
    finiteGram kernel indices p q = kernel (indices p) (indices q) :=
  rfl

/-- Every selected Gram matrix is Hermitian. -/
theorem finiteGram_hermitian
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) :
    (finiteGram kernel indices).IsHermitian :=
  kernel.isHermitian.submatrix indices

/-- Every selected Gram matrix is positive semidefinite. -/
theorem finiteGram_psd
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) :
    (finiteGram kernel indices).PosSemidef :=
  kernel.positiveSemidefinite.submatrix indices

/-- Exact factor certificate `G = B⁺B`; the factor rank may be smaller than
the active-set cardinality. -/
structure GramFactorCertificate
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index)
    (FactorIndex : Type*) [Fintype FactorIndex] where
  factor : Matrix FactorIndex Active ℂ
  reconstructs : factor.conjTranspose * factor = finiteGram kernel indices

namespace GramFactorCertificate

variable
    {Index : Type u}
    {kernel : PositiveKernel Index}
    {Active : Type v}
    {indices : Active → Index}
    {FactorIndex : Type*}
    [Fintype FactorIndex]

/-- Certified factor columns realize the kernel entries exactly. -/
theorem column_inner_eq_kernel
    (certificate : GramFactorCertificate kernel indices FactorIndex)
    (p q : Active) :
    (∑ k, star (certificate.factor k p) * certificate.factor k q) =
      kernel (indices p) (indices q) := by
  have entry := congrFun (congrFun certificate.reconstructs p) q
  simpa [Matrix.mul_apply] using entry

end GramFactorCertificate

end MathDiscovery.Kernel
