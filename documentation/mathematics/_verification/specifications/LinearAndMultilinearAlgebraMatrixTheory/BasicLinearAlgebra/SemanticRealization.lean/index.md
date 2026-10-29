# Verification target: Semantic Realization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af7b40521d0282deb04ca1dd27c465b37cf2dca0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af7b40521d0282deb04ca1dd27c465b37cf2dca0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.BanachCompletion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.FeatureMap` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Extend` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [KernelCompatibility](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/kernelcompatibility.md) | 30 | `declaration-track:f28224de93f4f57b46281d4513e39297585d30d110b8c4f44ccc981fd42ac0aa` |
| 2 | `theorem` | [relation_maps_to_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/relation-maps-to-zero.md) | 51 | `result-track:bcb20b19908bab7a5c0ff6777b70c37cc20f4d3976ecc29c5e182f0aeab78ecd` |
| 3 | `def` | [banachToHilbert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/banachtohilbert.md) | 76 | `declaration-track:75ea4acd7a4df46f5cc2f4031aeb0283ec7c52a8e8786860d2feb1c469dc8a9c` |
| 4 | `theorem` | [banachToHilbert_raw](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/banachtohilbert-raw.md) | 86 | `result-track:f12dd872f8b08c30c28ecb822a896abc96f7350cd2a5a1d1dec0882f36df34cc` |
| 5 | `theorem` | [banachToHilbert_atom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/banachtohilbert-atom.md) | 104 | `result-track:a1730b24106f64a1ef9b5b77b4b13ea3dd4959503d0446edacd20312c0832f66` |
| 6 | `theorem` | [norm_banachToHilbert_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/norm-banachtohilbert-le.md) | 117 | `result-track:a4dc1b7fc7f4ca60c69b1768c51bc4131d9f0381fc5602d4837fef8078cbe1c9` |
| 7 | `theorem` | [banachToHilbert_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/banachtohilbert-unique.md) | 138 | `result-track:69ff6561a1108a48b11578974f6fb869585257b3b76d730063b137df28827b39` |
| 8 | `structure` | [CoerciveKernelCompatibility](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/coercivekernelcompatibility.md) | 163 | `declaration-track:1e9229d120e9f30902797b17ef96f452cbac7a998047ce777e6c0347ed9405f3` |
| 9 | `theorem` | [CoerciveKernelCompatibility.lower_bound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/coercivekernelcompatibility-lower-bound.md) | 176 | `result-track:007fcacadbdac81fd0bd7a5bfc85979da219ca2a18c0b856b014305805170fd9` |
| 10 | `theorem` | [CoerciveKernelCompatibility.injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticRealization.lean/declarations/coercivekernelcompatibility-injective.md) | 191 | `result-track:4340eecb220dd4cf608732f5d842500405da8164937123dd55a0902180b63991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df2c37ec513e2af013c49a81299469e6917d85971b74736f562960122cd7415d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
