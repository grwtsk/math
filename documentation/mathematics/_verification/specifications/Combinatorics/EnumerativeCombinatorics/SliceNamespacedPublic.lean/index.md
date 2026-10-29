# Verification target: Slice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3938a0059c64cfa699642425de4ad3495ec93b22",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3938a0059c64cfa699642425de4ad3495ec93b22`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sized](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized.md) | 54 | `declaration-track:b9bafc20d88e03ce226bd4b8a2596d8cd094d62fc4fb6d0b76c664a6537be883` |
| 2 | `theorem` | [Sized.mono](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-mono.md) | 56 | `result-track:390541054fe44f48821c25fec2bde31be31b6891b38d4fead87dc0891e4fd8a6` |
| 3 | `lemma` | [sized_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-empty.md) | 58 | `result-track:1e556259f78b6809b497a74ae69e0911d2d822db244f76bc4be3a2e026d89179` |
| 4 | `lemma` | [sized_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-singleton.md) | 59 | `result-track:3c1f97651ffd0d62e4043da5653c621b6dcc8bb9edf08c29373750ef78ce1eb3` |
| 5 | `theorem` | [sized_union](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-union.md) | 61 | `result-track:636d35844c5af0e665d82be76812fea8dfe4b22640183cf46b33740c75ba3b35` |
| 6 | `theorem` | [sized_iUnion](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-iunion.md) | 69 | `result-track:59ca66d4e8faab90fbabaa0ef3c0c110d3db2025b987ec54173ef1c89eacc3b0` |
| 7 | `theorem` | [sized_iUnion₂](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-iunion-source-edition-2.md) | 74 | `result-track:bba3761004b39f32738a916c88fbb492eda9891cd212afbfe42915001a5fc504` |
| 8 | `theorem` | [Sized.isAntichain](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-isantichain.md) | 78 | `result-track:100a689c8fc09800657209f8a6921e3a367c0eee192bb92fbc32720a80891a25` |
| 9 | `theorem` | [Sized.subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-subsingleton.md) | 81 | `result-track:145de726def62d4a2d7e44a21f4d776a24fe312605b7889553e4cd42e7c9a9ad` |
| 10 | `theorem` | [Sized.subsingleton'](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-subsingleton-source-edition-2.md) | 84 | `result-track:b4e310113687d9e32c21c51c41d5f78211efeb6130381dc08d897dbee8133526` |
| 11 | `theorem` | [Sized.empty_mem_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-empty-mem-iff.md) | 87 | `result-track:e7c6f2aeca9d960d504be5b2c09bcaca9ed6a14f2d572a04bc62281efb4f5b44` |
| 12 | `theorem` | [Sized.univ_mem_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-univ-mem-iff.md) | 90 | `result-track:66d1a4213c467d78d644059ed8e7f09793b0be6d9d052eae5c921e83d8f6afb3` |
| 13 | `theorem` | [sized_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-powersetcard.md) | 93 | `result-track:c48f6f3c6a2f756bbadabd2e4205836fe1ca3efd4b175c34ec84201ec13118cd` |
| 14 | `theorem` | [subset_powersetCard_univ_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/subset-powersetcard-univ-iff.md) | 104 | `result-track:d79133d07b1217d946e13016487546466d93d1df1e93c53b657fed5efba55ac3` |
| 15 | `theorem` | [Slice Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/card-le.md) | 109 | `result-track:0fe5b71adbecead7165bea5d1f2e7bc84b13a78a8a466823fdefd2f70f4003cc` |
| 16 | `def` | [slice](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/slice.md) | 124 | `declaration-track:2f2ec42393df1528106d826d2af72a0682cae864ebeb5f7b09bdc3962dccd1c7` |
| 17 | `theorem` | [mem_slice](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/mem-slice.md) | 130 | `result-track:f53b5bc55cd021e9dbb83b76fe1f03857c1e651ed7e1334ef67454a0b2531c8b` |
| 18 | `theorem` | [slice_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/slice-subset.md) | 134 | `result-track:86ea7c647c7dd93eb53528ece68955681af33790ee8e1ac5c8386092e95c3238` |
| 19 | `theorem` | [sized_slice](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sized-slice.md) | 138 | `result-track:1b324cda8afeed82089a86941857f4f80375c9522638063b929793a30236ebb2` |
| 20 | `theorem` | [eq_of_mem_slice](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/eq-of-mem-slice.md) | 140 | `result-track:bf613d992965796402ae09c00f7f9a38b8fbab7ff8879d83e13dfee83f4cbf11` |
| 21 | `theorem` | [ne_of_mem_slice](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/ne-of-mem-slice.md) | 144 | `result-track:ef705a882ce553b734ae166f129cc863a0f5499534a504be725ae37cac1ff100` |
| 22 | `theorem` | [pairwiseDisjoint_slice](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/pairwisedisjoint-slice.md) | 147 | `result-track:f1656472627ab6676027a22343d4d95fb205b4e1c9fe2e854c7c429502290ceb` |
| 23 | `theorem` | [biUnion_slice](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/biunion-slice.md) | 153 | `result-track:71cb0bb707943c61fe7b73aa13420675bbaaf6e0a96385b8cfc80dc4493a1f5f` |
| 24 | `theorem` | [sum_card_slice](../../../../../Combinatorics/EnumerativeCombinatorics/SliceNamespacedPublic.lean/declarations/sum-card-slice.md) | 158 | `result-track:b96ad9799c83b257ad73e7d19f6a32a275f704b92b80e49c1180265c6680dcfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31f98a41c61b74220c0d854ea69c074c2486a9b98764ae907c2945845e709632 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
