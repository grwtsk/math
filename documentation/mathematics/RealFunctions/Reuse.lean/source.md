# Reuse — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4de46e17a43c16b0e1afd736e61c9f6f516854d1` · SHA-256 `5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative
import FormalResearch.PositiveAtlas.ExplicitSchurMatrix
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur
import FormalResearch.PositiveAtlas.ProvenanceProjection

open FormalResearch.PositiveAtlas
set_option pp.universes true
set_option pp.proofs false
#print CertificateFamily
#print CertificateFamily.Equivalent
#print SufficientRepresentation
#print SufficientRepresentation.FactorsThrough
#print SufficientRepresentation.IsMinimal
#print StructuralQuine
#check StructuralQuine.project_idempotent
#print PositiveForm
#check PositiveForm.pullback
#print ProvenanceProjector
#check ProvenanceProjector.quadratic_decomposition
#check ProvenanceProjector.residual_eq_sub_projected
#print FiniteLogAffineFamily
#check FiniteLogAffineFamily.probability_sum
#check FiniteLogAffineFamily.covarianceForm
#check FiniteLogAffineFamily.iterated_fderiv_logPartition_eq_covariance
#print MatrixBlockRealization
#check MatrixBlockRealization.schurForm_eq_schurMatrix
#print GeneralizedInverseBlockRealization
#check GeneralizedInverseBlockRealization.schurForm_eq_generalizedSchurMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7dc926e3d510370b5debb85f1e6bdf17a05f958fabe80876ff3cc42276d4dec9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577Reuse/Variant5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
