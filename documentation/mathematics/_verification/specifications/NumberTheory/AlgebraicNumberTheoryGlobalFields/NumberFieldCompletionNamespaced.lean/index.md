# Verification target: Number Field Completion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af008840c4c6fdc9fe278e39eb0e42bc8f3abe88",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Completion/Variant677637474c85ca3bc9c33626367fb1f948164af39301d55111574b51af57ced7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af008840c4c6fdc9fe278e39eb0e42bc8f3abe88`.

Source path: `GRWTSK/Topology/MetricTopology/Completion/Variant677637474c85ca3bc9c33626367fb1f948164af39301d55111574b51af57ced7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Completion/Variant677637474c85ca3bc9c33626367fb1f948164af39301d55111574b51af57ced7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Subfield.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.WithAbs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Completion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/completion.md) | 73 | `declaration-track:186d6d9ed37ec590be0612793c650c1b1c8a056412478ace2513bd1a989af768` |
| 2 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/instance.md) | 79 | `declaration-track:225351031a6fc2fce8c72b03c8732db3079fce27112414e1077f2ed972d2323e` |
| 3 | `lemma` | [norm_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/norm-coe.md) | 83 | `result-track:cef9741c01b7d30246ecdc32e8e67d72214e2841772de5ad87620e6f8cb08447` |
| 4 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/instance-source-edition-2.md) | 87 | `declaration-track:67368eacf3767d61a586fbb5ad10aaf4f875864197229404e2d983a167b60f28` |
| 5 | `lemma` | [WithAbs.ratCast_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/withabs-ratcast-equiv.md) | 91 | `result-track:3c607ced34f00465526b58c4425ae9329bd7c94547d17c2da994c07978a0eb49` |
| 6 | `lemma` | [Rat.norm_infinitePlace_completion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/rat-norm-infiniteplace-completion.md) | 96 | `result-track:064f4411287225e8a5459fe9b08fb5273a5143002f930d45d3956d50f7997a3a` |
| 7 | `instance` | [locallyCompactSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/locallycompactspace.md) | 103 | `declaration-track:700310d0f584b529e82ecf1545eb8cc5f070946033b4437913b65dea99141dd6` |
| 8 | `def` | [extensionEmbedding](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/extensionembedding.md) | 107 | `declaration-track:e523af81446431a53c124ed631c600725f64af73fa7d46e9a39c2a97cf995bf3` |
| 9 | `def` | [extensionEmbeddingOfIsReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/extensionembeddingofisreal.md) | 110 | `declaration-track:dd8008a4333b9ec41b94be0e6c161e66e8b3c3389c1dbb3ccb49cd7fe0e7cc9f` |
| 10 | `theorem` | [extensionEmbedding_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/extensionembedding-coe.md) | 117 | `result-track:fe8aaa27a2b5c96ee5f97c1ba5b0f080789f312e7cbfe4aced777d71868ab9ea` |
| 11 | `theorem` | [extensionEmbedding_of_isReal_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/extensionembedding-of-isreal-coe.md) | 121 | `result-track:80638b5119925fc638adfa12b42fc2f56e1300570c3c7547a9bcd7b9d20d4614` |
| 12 | `theorem` | [isometry_extensionEmbedding](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/isometry-extensionembedding.md) | 126 | `result-track:20b3dd9d9819733295d139876fa763e9cb00b7b1982242ea6bf398a616cbadfe` |
| 13 | `theorem` | [isometry_extensionEmbedding_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/isometry-extensionembedding-of-isreal.md) | 130 | `result-track:7c50c689a1732dfa37cbac51a508900e8fa860dfc22b0a1f3f689e7c968252c5` |
| 14 | `theorem` | [isClosed_image_extensionEmbedding](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/isclosed-image-extensionembedding.md) | 135 | `result-track:d02f7c45e4f16ee5d7234cd12217c231546df2497124d8b0f95e13c26877049f` |
| 15 | `theorem` | [isClosed_image_extensionEmbedding_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/isclosed-image-extensionembedding-of-isreal.md) | 140 | `result-track:0dfba6d8259a71ef1b2af61567d48e496a77d8a3b9a90f8ad888ed37a5751c01` |
| 16 | `theorem` | [subfield_ne_real_of_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/subfield-ne-real-of-iscomplex.md) | 144 | `result-track:d8b602d59637d40ce497b29c5dd1e906f8e697cacbe5766bc80fbbeade0b85b8` |
| 17 | `theorem` | [surjective_extensionEmbedding_of_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/surjective-extensionembedding-of-iscomplex.md) | 153 | `result-track:8569ce3beeaabc95c3735dfa0fadf1335def1c6782af9569df4d8e35d9ed4c6a` |
| 18 | `theorem` | [bijective_extensionEmbedding_of_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/bijective-extensionembedding-of-iscomplex.md) | 160 | `result-track:d00bb606f4cf9e69db21da093840bca8fec0c07c116a5d5785fba63402ae8306` |
| 19 | `def` | [ringEquivComplexOfIsComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/ringequivcomplexofiscomplex.md) | 166 | `declaration-track:460dd1bd03c8f7cb516917f187ec96e9df6b8e9df7cc8cc78d248e76b83566ee` |
| 20 | `def` | [isometryEquivComplexOfIsComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/isometryequivcomplexofiscomplex.md) | 174 | `declaration-track:5c18ea8f57159775908ac8d920d01d1eb3e25535d5bf4d466e356b1e78ed477e` |
| 21 | `theorem` | [surjective_extensionEmbedding_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/surjective-extensionembedding-of-isreal.md) | 183 | `result-track:e07353384465e998e7ce2f5477a8dead452da968fb82db8dd6fe0aedd438deb2` |
| 22 | `theorem` | [bijective_extensionEmbedding_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/bijective-extensionembedding-of-isreal.md) | 189 | `result-track:0850f40f7b9ed4d31ca91e465fadfd6f101f70ac7b6d942e1d427946ab92b7f5` |
| 23 | `def` | [ringEquivRealOfIsReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/ringequivrealofisreal.md) | 195 | `declaration-track:e0f9709050cb73d6eb3150b65d11b92dccaf6787477703e2769e78e9a516618f` |
| 24 | `def` | [isometryEquivRealOfIsReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCompletionNamespaced.lean/declarations/isometryequivrealofisreal.md) | 202 | `declaration-track:71a2043c895fb172739c98b10fa132bd0fe8c21c6abb2ca6065a52569914529a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99cbad8a81a50847e634db656d95889311ff90fd6af6517955cd1e81f474c0e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Completion/Variant677637474c85ca3bc9c33626367fb1f948164af39301d55111574b51af57ced7.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Completion/Variant677637474c85ca3bc9c33626367fb1f948164af39301d55111574b51af57ced7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
