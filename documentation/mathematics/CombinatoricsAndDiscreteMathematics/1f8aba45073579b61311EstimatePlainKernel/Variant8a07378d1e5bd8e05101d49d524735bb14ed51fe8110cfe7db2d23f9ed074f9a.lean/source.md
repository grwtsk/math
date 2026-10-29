# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.1f8aba45073579b61311EstimatePlainKernel.Variant8a07378d1e5bd8e05101d49d524735bb14ed51fe8110cfe7db2d23f9ed074f9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3b31c23ff2e47f586fd13c615d4dbee74cc88d7` · SHA-256 `b5c45f10ae5e3bbfdbbfcac7a4d71b7777bb7e44ccf857417088f56733c9871f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SourcePlainWeight.Variant1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SourcePlainWeight.Variant1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/1f8aba45073579b61311-EstimatePlainKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

/-!
# Literal plain weights for the finite signed Vaughan decomposition

This module keeps only the two source definitions from the candidate plain
sampling module. No sampling estimate is imported into the finite identity.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SourcePlainWeight.Variant1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePlainKernel

open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateSourceMobiusKernel

noncomputable section

/-- The unchanged source weight at a positive multiplicative argument. -/
def sourcePlainWeight (A x : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log x) / Real.sqrt x

/-- The fixed plain sampling inventory, with no logarithmic coefficient. -/
def sourcePlainKernel (A x : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), sourcePlainWeight A (x*k)

end

end EstimatePlainKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d1bd4aa16d0df5c63cde768a2db8928e8437a315f081490f133efb427fb36ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/1f8aba45073579b61311EstimatePlainKernel/Variant8a07378d1e5bd8e05101d49d524735bb14ed51fe8110cfe7db2d23f9ed074f9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
