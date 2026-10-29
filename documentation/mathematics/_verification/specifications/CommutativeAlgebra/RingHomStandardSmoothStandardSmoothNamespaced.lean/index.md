# Verification target: Ring Hom Standard Smooth Standard Smooth Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1488d16ca6a3815cd0b0a3bf3a8c644758feb8b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1488d16ca6a3815cd0b0a3bf3a8c644758feb8b`.

Source path: `GRWTSK/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.StandardSmooth` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Algebraize` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsStandardSmooth](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth.md) | 42 | `declaration-track:d15cc9a1e5b5e7c5ad02cf56f8914c59b642efd51541d535f889b21a4c65516f` |
| 2 | `lemma` | [IsStandardSmooth.toAlgebra](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth-toalgebra.md) | 46 | `result-track:1ea02fb7ad9d3efbf46452ebedb4fa33ce775910e4b203961780d5d6a4d0c055` |
| 3 | `def` | [IsStandardSmoothOfRelativeDimension](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension.md) | 52 | `declaration-track:83f672b22af65cf876a87f7deb2d1d064febfb215d3dbbfd79481778268060be` |
| 4 | `lemma` | [IsStandardSmoothOfRelativeDimension.toAlgebra](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-toalgebra.md) | 56 | `result-track:5cd30cd0ee62027ff4541d0d51b9c7bb3876794eb6f107e5eb3e3146b9bc9f82` |
| 5 | `lemma` | [IsStandardSmoothOfRelativeDimension.isStandardSmooth](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-isstandardsmooth.md) | 60 | `result-track:3dc3f78dd7826cc1d6609c3e9a3873bb2c3473b06c8548b771b9cc49d4d4b9ac` |
| 6 | `lemma` | [IsStandardSmoothOfRelativeDimension.id](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-id.md) | 69 | `result-track:bd6eb589acb910fb3766d88d9a25949ca0527cec5147a480bbd280d5c51ee2be` |
| 7 | `lemma` | [IsStandardSmoothOfRelativeDimension.equiv](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-equiv.md) | 73 | `result-track:8ab2af9eaa14392bd2a3628711a87b054188cac8a171c838ef17692a8e9f0238` |
| 8 | `lemma` | [IsStandardSmooth.comp](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth-comp.md) | 80 | `result-track:e4c33bf575c68622f271ee432850faea5afbbb9ff535bcd4f2dc930976c2bdb7` |
| 9 | `lemma` | [IsStandardSmoothOfRelativeDimension.comp](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-comp.md) | 87 | `result-track:a14d00b2d2ba50968a5fad0ae08fc0984b1b79bb70a3c47d3ff034037ac247cf` |
| 10 | `lemma` | [isStandardSmooth_stableUnderComposition](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth-stableundercomposition.md) | 95 | `result-track:288a5c69446554e7db8eb0234070cd6fab8d25073629bae635322df0911bbed2` |
| 11 | `lemma` | [isStandardSmooth_respectsIso](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth-respectsiso.md) | 99 | `result-track:0a26a9bbd8e09943b10f246bff259defb70cacce74870997b095a98432bb6c0b` |
| 12 | `lemma` | [isStandardSmoothOfRelativeDimension_respectsIso](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-respectsiso.md) | 104 | `result-track:c72e30c83cd9a2ee7ac8426cf141d1824e9bde038f9c6aefd687019051280ea9` |
| 13 | `lemma` | [isStandardSmooth_isStableUnderBaseChange](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth-isstableunderbasechange.md) | 113 | `result-track:6b759da388915c7670c57df3f9046c7833d53d96e6ff2992fcae206034db9f23` |
| 14 | `lemma` | [isStandardSmoothOfRelativeDimension_isStableUnderBaseChange](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-isstableunderbasechange.md) | 126 | `result-track:4f47604c05ff5c52b49af708098c539a60a3688c29e82ec437c0599c75c17f66` |
| 15 | `lemma` | [IsStandardSmoothOfRelativeDimension.algebraMap_isLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-algebramap-islocalizationaway.md) | 139 | `result-track:9dc4c34938eb9d69a42122e7600a1c34ca3cc0019dc83904eb07d0920d7a7f2d` |
| 16 | `lemma` | [isStandardSmooth_localizationPreserves](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth-localizationpreserves.md) | 149 | `result-track:87216c25e19c693d1028e2219660d3d51e5238ca1179818e9c2e4e666a2059ce` |
| 17 | `lemma` | [isStandardSmoothOfRelativeDimension_localizationPreserves](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-localizationpreserves.md) | 152 | `result-track:afb9b6f5c31b9ee6ade2f5f8f545113caccd89ad8a69c38451954fe00f92f63f` |
| 18 | `lemma` | [isStandardSmooth_holdsForLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth-holdsforlocalizationaway.md) | 156 | `result-track:6e7ae6d6c42105fd042c9eac067dab6e26dd241384401dac0937c61646944927` |
| 19 | `lemma` | [isStandardSmoothOfRelativeDimension_holdsForLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-holdsforlocalizationaway.md) | 161 | `result-track:61c03ee8a6f07e8e34d8a00172ccd14021cf5aa197d75595affa553fa6f8937d` |
| 20 | `lemma` | [isStandardSmooth_stableUnderCompositionWithLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmooth-stableundercompositionwithlocalizationaway.md) | 166 | `result-track:8f68848325a96998b44ce15ab5bb3d755d5a875e2b803f6b64ec2a5fe4970358` |
| 21 | `lemma` | [isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmoothNamespaced.lean/declarations/isstandardsmoothofrelativedimension-stableundercompositionwithlocalizati.md) | 171 | `result-track:01a42c26cf2e913a6c8efabf3121b616d5963a41d9cc40c72c823997feeea499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4f895e9bd3b9dc6ac24d4a73a8e8de503aa43f7cc212f07051c783657c30df7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean","GRWTSK/_verification/specifications/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
