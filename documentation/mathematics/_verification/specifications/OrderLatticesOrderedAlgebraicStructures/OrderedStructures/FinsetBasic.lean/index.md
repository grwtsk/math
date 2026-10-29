# Verification target: Finset Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fad44f969a23aa0708165a82848212d9c5ae32f7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fad44f969a23aa0708165a82848212d9c5ae32f7`.

Source path: `GRWTSK/Algebra/Basic/Variant26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Set.Monoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_add_left_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/map-add-left-icc.md) | 24 | `result-track:f40e6db0b447d8497ca8739eaa1d9268145369dfa0ed82644005ba9c25873d11` |
| 2 | `lemma` | [map_add_right_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/map-add-right-icc.md) | 29 | `result-track:f79c5ccf77144d80e5c0a7b2add57358b763c3a41188eb2c99bea8a07aa08fe9` |
| 3 | `lemma` | [map_add_left_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/map-add-left-ico.md) | 34 | `result-track:22f9e2de333a91702c5b369bd371d3d8b4197a38f532d86769d1080f599e9fb7` |
| 4 | `lemma` | [map_add_right_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/map-add-right-ico.md) | 39 | `result-track:c363bb63439f51a30c7f6cbd1e77f8e7796161ee3cd8efc298facf2121a5d235` |
| 5 | `lemma` | [map_add_left_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/map-add-left-ioc.md) | 44 | `result-track:c3992c2b4325719a35bfe4f8a6ddea2dcc7b091e9e88a21dbdcbddec60337fce` |
| 6 | `lemma` | [map_add_right_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/map-add-right-ioc.md) | 49 | `result-track:bab9267e02dfae45f07d33212a055d63aecb9486b62670a79e26ed077ecd2c8d` |
| 7 | `lemma` | [map_add_left_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/map-add-left-ioo.md) | 54 | `result-track:38a2e98948f276c87003f153c0fdaef6f0ce2a7da823ca6950173b5d60773d40` |
| 8 | `lemma` | [map_add_right_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/map-add-right-ioo.md) | 59 | `result-track:fee89c0e216cb8d95dbd5ec15bd2787873832b5249f4466f8c4f323f06e49896` |
| 9 | `lemma` | [image_add_left_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/image-add-left-icc.md) | 66 | `result-track:d73ee580991b6435f141ecc2ded121f726d2d94b0b7791a9860b791782bfaa82` |
| 10 | `lemma` | [image_add_left_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/image-add-left-ico.md) | 69 | `result-track:89335d56d6508294505727726a010897622348d51d3f0fc1c8daae6cd9f0a62e` |
| 11 | `lemma` | [image_add_left_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/image-add-left-ioc.md) | 72 | `result-track:ed8dc478e4f097692b94ed001ea2e5a4f637e035f0a5b2e02cfa1cf1c472e944` |
| 12 | `lemma` | [image_add_left_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/image-add-left-ioo.md) | 75 | `result-track:ea07dfa6e97f7a079f956a45ad14a9ca993ae163a1ba8b0118a05a7e39dba6c1` |
| 13 | `lemma` | [image_add_right_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/image-add-right-icc.md) | 78 | `result-track:c78b37087312ca3ede2742fa97a55c5508aff35732ead6f848eb9bb1d33e1c22` |
| 14 | `lemma` | [image_add_right_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/image-add-right-ico.md) | 81 | `result-track:4e32e9688ea85e8a5088a866bde18b34b484874732d572d77bf209942639f433` |
| 15 | `lemma` | [image_add_right_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/image-add-right-ioc.md) | 84 | `result-track:fb9fb9f3a014863d34607b7bf95bc332dfb41fef47c675f9e0034dc11523455d` |
| 16 | `lemma` | [image_add_right_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FinsetBasic.lean/declarations/image-add-right-ioo.md) | 87 | `result-track:5d406ea81d5c4fc2c511767e3270d5c3a077a81dfde7c2d9ce60c0de0acb6d6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d25fa4bb83792d037f8c98281b4bbdbf2af3e2985cace7be148f61d7cb63822 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
