# Verification target: Cast Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afcb5e9125054425b80df98fa917aa7fa39fcbe7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afcb5e9125054425b80df98fa917aa7fa39fcbe7`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_sub](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-sub.md) | 40 | `result-track:4fee7b96b3eb7feacc6ac9bf2520c509d0fe863709bd94bfcd9b3061dc662597` |
| 2 | `theorem` | [cast_pred](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-pred.md) | 46 | `result-track:bc5d1a326beda84871a6797b485249ed4fc4dc7db2256869e7ad96899b2664ab` |
| 3 | `theorem` | [cast_negSucc](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-negsucc.md) | 60 | `result-track:a8fb1c6a7fd65705a24f5badbe95b09f02b4fc2137f6d692102847678ddbba8d` |
| 4 | `theorem` | [cast_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-zero.md) | 66 | `result-track:a6458201be1ee9b775cbdb12a24e6516df67b1278eb3e243cef216fc2180b8a9` |
| 5 | `theorem` | [cast_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-ofnat.md) | 72 | `result-track:4e1ba86640367a042b8a6abc20eff99a89c33acabec141850f170a07ca3a97f7` |
| 6 | `theorem` | [int_cast_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/int-cast-ofnat.md) | 79 | `result-track:2d252c1c99d9acdf9dc5a4c8c2edfc3b3d6719011b03ad2f985ecce45d440337` |
| 7 | `theorem` | [cast_one](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-one.md) | 84 | `result-track:3062e4ca80afcb45c962370ba0354c2e0ab7fee7a126389ea9dcf05cd7752f7d` |
| 8 | `theorem` | [cast_neg](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-neg.md) | 90 | `result-track:ebe763cf8f434d57d55d70c1bb82682f7b4ff3beee146a07f24703803f929946` |
| 9 | `theorem` | [cast_subNatNat](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-subnatnat.md) | 98 | `result-track:830d1e866314c353d3456ee34e0315d893f07ccb9183608f9d1de4a6383b4c06` |
| 10 | `theorem` | [cast_negOfNat](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-negofnat.md) | 111 | `result-track:0bc11bfb5ddc9cdd3e81cd1b9943e20b5d74604ba6bab3bbfb8d6c74767a1f13` |
| 11 | `theorem` | [cast_add](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-add.md) | 115 | `result-track:b8f0cc2cd606c3a12e9456f5f322c65cba70913f4a31ec623614ba81fb61d2c0` |
| 12 | `theorem` | [cast_sub](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-sub-source-edition-2.md) | 129 | `result-track:972e96870a446318e4915005c42c1b05e8251b93516300b01791411fbe2bf62d` |
| 13 | `theorem` | [ofNat_bit0](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/ofnat-bit0.md) | 138 | `result-track:ebdf587c84b8ee21f65608a10d337bb94253a4c473b34969c7790541aac97b6a` |
| 14 | `theorem` | [ofNat_bit1](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/ofnat-bit1.md) | 143 | `result-track:ded7b86c7e75c1285357d5fbb73d44391da0aa013cb41bbf4720c7772c640495` |
| 15 | `theorem` | [cast_bit0](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-bit0.md) | 148 | `result-track:35c7abda1cd97ce976891bbd74277d4d579d365f6d1a616376fd2c4d3d0fd1e9` |
| 16 | `theorem` | [cast_bit1](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-bit1.md) | 153 | `result-track:903eba56677e91143b4f15328e3885ca963b76a7984b50efacfa95fb2d9fe5f4` |
| 17 | `theorem` | [cast_two](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-two.md) | 159 | `result-track:972495602926136bdffc031c2030f7001a61b26b890b6f91e7120bbad9317c74` |
| 18 | `theorem` | [cast_three](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-three.md) | 163 | `result-track:a05a81902371a663b8290af49c421ffb4775f7a45740b2db46eab3ee6d3d29a4` |
| 19 | `theorem` | [cast_four](../../../../../NumberTheory/ElementaryNumberTheory/CastBasicNamespacedSourceEdition2.lean/declarations/cast-four.md) | 167 | `result-track:07d9a9267491a1f365581655bed728504d7ddc19e2ba5859c4707dc8eb5b564f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bc8d39967aeddfca917d0ffc7f30969f67dcd48aa105e1b9b903a9d78168387 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
