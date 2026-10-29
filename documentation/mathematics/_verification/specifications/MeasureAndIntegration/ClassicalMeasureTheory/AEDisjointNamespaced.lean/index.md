# Verification target: AEDisjoint Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db3662ff9c0c065a326d50fb95489644bdedd6ac",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db3662ff9c0c065a326d50fb95489644bdedd6ac`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AEDisjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/aedisjoint.md) | 32 | `declaration-track:c2691f512db290345112288793e119f9a7affd88c4b18fc9a83a3a026440f59d` |
| 2 | `theorem` | [exists_null_pairwise_disjoint_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/exists-null-pairwise-disjoint-diff.md) | 39 | `result-track:f97d20c4d8b842f75d4c4a0c9528a9da5d55f0ecca5467ddc339346a644ab1c4` |
| 3 | `theorem` | [eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/eq.md) | 55 | `result-track:7543c24d89251288c9fdb26b44382e2231dc9c6e0426f73cd5a0e33c47ea5f64` |
| 4 | `theorem` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/symm.md) | 59 | `result-track:a0394ccc96e89f249a8c83625569e5db8922cbb3ba9476714234316a42c42c98` |
| 5 | `theorem` | [symmetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/symmetric.md) | 61 | `result-track:ff56bbffae1272afa304a6eedeef7fd3c957ee777c622443a0b7b5472cb6383f` |
| 6 | `theorem` | [comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/comm.md) | 63 | `result-track:117df15416ee468cba8e9c64650d03d322512638d8e4d8d0a79ba393e73ae9b9` |
| 7 | `theorem` | [AEDisjoint Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/aedisjoint-source-line-66-occurrence-2.md) | 66 | `result-track:b5e7d33847b3b51703834e05fc2fdc6d84c1e8ec01f5052dddc674911d9b241a` |
| 8 | `theorem` | [AEDisjoint Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/aedisjoint-source-line-69-occurrence-2.md) | 69 | `result-track:7865a95f3a2e0b72fa1f16eaa86da551b9732c530e17d5fca3f24f6850dea7a5` |
| 9 | `theorem` | [AEDisjoint Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/aedisjoint-source-line-73-occurrence-2.md) | 73 | `result-track:ce909b47c3e762cc0da4efec005db53d0e410404136c5ff708462cab7f499770` |
| 10 | `theorem` | [mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/mono-ae.md) | 77 | `result-track:42874a751dadb76b832cb1c9d22f0638bcbf94cd78d07a46d31294c5f05dfa40` |
| 11 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/mono.md) | 80 | `result-track:39beb26a02e02452d2f652e014875adc807d17de43d9070c633215a353ef66ad` |
| 12 | `theorem` | [congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/congr.md) | 83 | `result-track:f7951e2bf2fa3c28622174868fbde4cffeff84e4f273385c756bc8baa9a250c9` |
| 13 | `theorem` | [iUnion_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/iunion-left-iff.md) | 88 | `result-track:95fdda387dceb2f31776fcfc407e5a44fda73c7b382c68b2b860ac3792d668c8` |
| 14 | `theorem` | [iUnion_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/iunion-right-iff.md) | 93 | `result-track:31c67cfa10a4005aea555df0cde9ec08b8e5df6675f4f5e37c7e44580e3edb64` |
| 15 | `theorem` | [union_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/union-left-iff.md) | 98 | `result-track:844082d88a00d4e0527bd7374a56c1eff6df1dabce4c5052a47019828760723b` |
| 16 | `theorem` | [union_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/union-right-iff.md) | 102 | `result-track:a5d1b8037018546e568fcf96929df9021299345ea6631d4da1daac8976c0d3b5` |
| 17 | `theorem` | [union_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/union-left.md) | 105 | `result-track:9b5e115309f5013d444c7d4c8f1034b651ccac2a47210c1692329c6e07c9023d` |
| 18 | `theorem` | [union_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/union-right.md) | 108 | `result-track:d3e6e9e919dc0115b6252d2a3a3dd8f6c2ce08748dbfd2897cb703d0269cf7be` |
| 19 | `theorem` | [diff_ae_eq_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/diff-ae-eq-left.md) | 111 | `result-track:b64964cb3aed180c8621733aa5217b2f0209be6ec7a18e0917abca6320263cfa` |
| 20 | `theorem` | [diff_ae_eq_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/diff-ae-eq-right.md) | 114 | `result-track:47f4bfb876fde19b0bb58ae07e8f8871241a4f4d6a342de77405783993ce2954` |
| 21 | `theorem` | [measure_diff_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/measure-diff-left.md) | 117 | `result-track:5686a6f5b32e6fb2ee55d08c6f1eb342ed792d190fa8589c805f642ec3f12ae1` |
| 22 | `theorem` | [measure_diff_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/measure-diff-right.md) | 120 | `result-track:f68d83287f889dd71e19d513a684652ed64faf80c771bfc41afa05d3a93ce327` |
| 23 | `theorem` | [exists_disjoint_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/exists-disjoint-diff.md) | 125 | `result-track:e8af591cd6f1e00d059192b76c41220b022f83534c6be49a4952a97c23426bc7` |
| 24 | `theorem` | [of_null_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/of-null-right.md) | 131 | `result-track:16e3b3a0034f48bc933941ed5cfc7425b82926373db37594e7485e301d68feca` |
| 25 | `theorem` | [of_null_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/of-null-left.md) | 134 | `result-track:355dfb0e4aca396877377d74e8c7969a93c40a7b5036c39cb983671c22f7586a` |
| 26 | `theorem` | [aedisjoint_compl_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/aedisjoint-compl-left.md) | 139 | `result-track:52247e51fe070aa0dde2390536ff2a502ec56e067384a86d4d39549df0b80e16` |
| 27 | `theorem` | [aedisjoint_compl_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEDisjointNamespaced.lean/declarations/aedisjoint-compl-right.md) | 142 | `result-track:44f4eeb719a2d1ee9a6fbde0c39803ab22d9d0f38a4136ae6743620049bc90f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce430c9506936b797c3ab539090b443fc26070478a304256a1e995242ecd15de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
