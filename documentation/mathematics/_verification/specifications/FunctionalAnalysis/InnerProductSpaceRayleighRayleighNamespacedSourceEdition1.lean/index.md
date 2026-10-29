# Verification target: Inner Product Space Rayleigh Rayleigh Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c228db133ab6244a51275e1456b5e4ee881e50e3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c228db133ab6244a51275e1456b5e4ee881e50e3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LagrangeMultipliers` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rayleighQuotient](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/rayleighquotient.md) | 62 | `declaration-track:2b5f3a7177e98e0524df319e6ba7c25c3d45276d85deb6a6683c55e32d7becab` |
| 2 | `theorem` | [rayleigh_smul](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/rayleigh-smul.md) | 64 | `result-track:f97d4bf9fe7ec888b86b9d9bc94c48204c9bb9fc93c24acc1152ce8e2c80a9a6` |
| 3 | `theorem` | [image_rayleigh_eq_image_rayleigh_sphere](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/image-rayleigh-eq-image-rayleigh-sphere.md) | 71 | `result-track:07917c797c4524894198fe4ced798fef2f679d18f7da40c082def9e67cef2265` |
| 4 | `theorem` | [iSup_rayleigh_eq_iSup_rayleigh_sphere](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/isup-rayleigh-eq-isup-rayleigh-sphere.md) | 86 | `result-track:6429dbc94d6afede2f086693f25f60987d5341d95aec444c4ae7e6b1d43b9ce6` |
| 5 | `theorem` | [iInf_rayleigh_eq_iInf_rayleigh_sphere](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/iinf-rayleigh-eq-iinf-rayleigh-sphere.md) | 93 | `result-track:7b3f30866e6d936d87a1a710c1a12bf897e1a4673fa7a34cc8192eecb7087ed3` |
| 6 | `theorem` | [Inner Product Space Rayleigh Rayleigh Namespaced Source Edition1](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/hasstrictfderivat-reapplyinnerself.md) | 108 | `result-track:ced99cf19b177105fdebb035674e243085169b35d6863d9c4dfd6a681996f027` |
| 7 | `theorem` | [linearly_dependent_of_isLocalExtrOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/linearly-dependent-of-islocalextron.md) | 119 | `result-track:f46d6d25971f8f49e12d0b4a0e7e19cc4b69e012cfa82d9857adaf7708602bfa` |
| 8 | `theorem` | [eq_smul_self_of_isLocalExtrOn_real](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/eq-smul-self-of-islocalextron-real.md) | 141 | `result-track:c1f55593ce06a6ac421fb07d731e0b5690f416ed650941751b73af83e7386b01` |
| 9 | `theorem` | [eq_smul_self_of_isLocalExtrOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/eq-smul-self-of-islocalextron.md) | 168 | `result-track:c403311a961c98d2c33ba10184b70766cd865b601e61a2a8de1d5381bd4fa747` |
| 10 | `theorem` | [hasEigenvector_of_isLocalExtrOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/haseigenvector-of-islocalextron.md) | 177 | `result-track:d463a4fb8c6973115cd29989b20ec8adec3929103fa4e40df8af19b8c48e04dd` |
| 11 | `theorem` | [hasEigenvector_of_isMaxOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/haseigenvector-of-ismaxon.md) | 187 | `result-track:9457ec51389a55b0fabf813c189995e5db7aa6e708bb6eb93350850a70d7eb5b` |
| 12 | `theorem` | [hasEigenvector_of_isMinOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/haseigenvector-of-isminon.md) | 206 | `result-track:feaba4285d84264ca48a765f0efae648fd94b2c3148a18f5eb9c3f0b0a581c2f` |
| 13 | `theorem` | [hasEigenvalue_iSup_of_finiteDimensional](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/haseigenvalue-isup-of-finitedimensional.md) | 236 | `result-track:8a0f084255f081a8ee0bf00d6322a576ccd949321e2625b08d4a0d5d965aed2a` |
| 14 | `theorem` | [hasEigenvalue_iInf_of_finiteDimensional](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/haseigenvalue-iinf-of-finitedimensional.md) | 255 | `result-track:cd5d81f00e742da4e92af4c3aa5fd71c52f52296f2298d2ccda68934d7303335` |
| 15 | `theorem` | [subsingleton_of_no_eigenvalue_finiteDimensional](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighNamespacedSourceEdition1.lean/declarations/subsingleton-of-no-eigenvalue-finitedimensional.md) | 272 | `result-track:e671e59c8df55a526386c6d5671dcf7176170532eb3ac22dd8221c258358d7f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48f611512c10ef6912a322d4d3dc1da264c80a3e898f305706dad25d7cc5b013 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
