# Verification target: Hom Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8ce3eaafc83f855a5e72a446254f7a183d0eca4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomBasic.lean/index.md) · [Full source](../../../../GeneralTopology/HomBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8ce3eaafc83f855a5e72a446254f7a183d0eca4`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Continuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOrderHom](../../../../GeneralTopology/HomBasic.lean/declarations/continuousorderhom.md) | 34 | `declaration-track:25597a6ac1be7fd54c49905ede3c2d6ba09d5913aacaba426fd304f806325539` |
| 2 | `class` | [ContinuousOrderHomClass](../../../../GeneralTopology/HomBasic.lean/declarations/continuousorderhomclass.md) | 45 | `declaration-track:c693ceafb2a9708e3efe2f55afa7f8134a8696bd58c213231d1c4baf4ba8ac26` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasic.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:50f7f796f05a928d6f7493842d106382c5691c6f3d6076742711a556e77cf8fd` |
| 4 | `def` | [toContinuousOrderHom](../../../../GeneralTopology/HomBasic.lean/declarations/tocontinuousorderhom.md) | 64 | `declaration-track:87ceea3004732c18e986316b0abf59ea2759659282a0af083d05c6b6e6722736` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasic.lean/declarations/instance-source-edition-5.md) | 69 | `declaration-track:a8eba93c710c6acc74f1b8d7232a66bc3d668f6303b12d8e1076dd7fd4c22d6a` |
| 6 | `def` | [toContinuousMap](../../../../GeneralTopology/HomBasic.lean/declarations/tocontinuousmap.md) | 85 | `declaration-track:da4fcd1d1ab0edca2bce331fc06b536d74cb7c942ca117902eac447a910e38f9` |
| 7 | `instance` | [instFunLike](../../../../GeneralTopology/HomBasic.lean/declarations/instfunlike.md) | 88 | `declaration-track:0d5a40f5953f29f4aac59b5beb977b560136398e10ffa352630b62f25011a687` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasic.lean/declarations/instance-source-edition-6.md) | 95 | `declaration-track:f8311b8c28a8fb068dca7eabf7aa9b0a0fc310d7e8c9e3640e627def2458fe82` |
| 9 | `theorem` | [coe_toOrderHom](../../../../GeneralTopology/HomBasic.lean/declarations/coe-toorderhom.md) | 99 | `result-track:dd749dd572492bc1b91d306bc3431c131d01a78f45f1fa338a9c2c6b7722305c` |
| 10 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/HomBasic.lean/declarations/tofun-eq-coe.md) | 101 | `result-track:abb4b627a6e249077d2f1516e19b6e6770216c8576bb72c71aa64416c432d2da` |
| 11 | `theorem` | [ext](../../../../GeneralTopology/HomBasic.lean/declarations/ext.md) | 104 | `result-track:fd29636390ef4b085a4ca5870973a4875478b2c711e70902751cd4413b7cd02c` |
| 12 | `def` | [copy](../../../../GeneralTopology/HomBasic.lean/declarations/copy.md) | 109 | `declaration-track:588246eabf89eb51a0570327531ccac04b83fb029de473fce5fc886310311417` |
| 13 | `theorem` | [coe_copy](../../../../GeneralTopology/HomBasic.lean/declarations/coe-copy.md) | 113 | `result-track:fb44b2fc6b2ef685ee00665ca4dbcb8f37620b57e8bcae95015815e6a9c41240` |
| 14 | `theorem` | [copy_eq](../../../../GeneralTopology/HomBasic.lean/declarations/copy-eq.md) | 116 | `result-track:18d6b0582067db50c6d698e799154f25d41b3d055e46b91a673277556a2a18ef` |
| 15 | `def` | [id](../../../../GeneralTopology/HomBasic.lean/declarations/id.md) | 122 | `declaration-track:b303568cecbada8f6fcebc254e3f29744b8fb97d02d08ebb08bab959deead084` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasic.lean/declarations/instance-source-edition-3.md) | 125 | `declaration-track:953e74ab9a0c05b40730790bc3fc0f59cb810dabe6dc82224da96c16bbd53cb5` |
| 17 | `theorem` | [coe_id](../../../../GeneralTopology/HomBasic.lean/declarations/coe-id.md) | 129 | `result-track:14e15a7aefc112e57877ad117af13943bbab600e5935c8db62e49eef28b733c7` |
| 18 | `theorem` | [id_apply](../../../../GeneralTopology/HomBasic.lean/declarations/id-apply.md) | 135 | `result-track:0bb574a23164cd0846a58483617130ad2eea9a0dbe667a307cbcaaa30d6b3603` |
| 19 | `def` | [comp](../../../../GeneralTopology/HomBasic.lean/declarations/comp.md) | 139 | `declaration-track:a0ee1a4394f39da0155d879239e883331fdce4e69657707e005618569ef8f0c8` |
| 20 | `theorem` | [coe_comp](../../../../GeneralTopology/HomBasic.lean/declarations/coe-comp.md) | 143 | `result-track:b13cb84755043bfc5670e7aa631c5b4e7cd079fb6d6072dd53b1bb2e3d313e7e` |
| 21 | `theorem` | [comp_apply](../../../../GeneralTopology/HomBasic.lean/declarations/comp-apply.md) | 147 | `result-track:e9e5d75d8df72f17e73a82d96074466bcbf1374fc6f2a6408ad0a1124aa3d73b` |
| 22 | `theorem` | [comp_assoc](../../../../GeneralTopology/HomBasic.lean/declarations/comp-assoc.md) | 151 | `result-track:3c6d9e0257b580d5d74e0c0928c1f0f231523285e1fef96de48a064d99d9a2e6` |
| 23 | `theorem` | [comp_id](../../../../GeneralTopology/HomBasic.lean/declarations/comp-id.md) | 156 | `result-track:aa9529322cb74bbe2f2b0a4928e7164506fed38d05b0072bcaacca9e74245dd3` |
| 24 | `theorem` | [id_comp](../../../../GeneralTopology/HomBasic.lean/declarations/id-comp.md) | 160 | `result-track:dbfa764d6102b561ababfdc2070daecd6202985793bf408b315e08bdb8698e83` |
| 25 | `theorem` | [cancel_right](../../../../GeneralTopology/HomBasic.lean/declarations/cancel-right.md) | 164 | `result-track:31e2bf2a0acc6dac853ca1f01afac21345e33fa800983647aef4e1fd70bec095` |
| 26 | `theorem` | [cancel_left](../../../../GeneralTopology/HomBasic.lean/declarations/cancel-left.md) | 169 | `result-track:3ce467d899fced12edd8d411325fd6362ffecc8cbbf7c9c5593f30e23cb2343b` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasic.lean/declarations/instance.md) | 173 | `declaration-track:1a3669deadbce8d6379872eb3d6a00aea94960e239250015a3300ec6281afdbf` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasic.lean/declarations/instance-source-edition-4.md) | 178 | `declaration-track:9c164215a13a15212e88fbbbdcdaa97161fbb3f7e95ec73dda15a7063fd9c678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=824a5ecb0bb98c0da8ac9f78bc48f5ab6e3e34803e6a3bdf749ef4d9d6ba23e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
