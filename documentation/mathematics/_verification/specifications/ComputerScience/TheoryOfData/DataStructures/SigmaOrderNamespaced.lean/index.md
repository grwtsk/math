# Verification target: Sigma Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "066d8dc25cd143224d57cdf6ad87f250dc9d3dce",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `066d8dc25cd143224d57cdf6ad87f250dc9d3dce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LE](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/le-source-edition-2.md) | 60 | `declaration-track:e8ee8dd39b15802ecd18372a10ec3b39ff05538b412006af20b08fb815c5d28e` |
| 2 | `inductive` | [LT](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/lt-source-edition-2.md) | 64 | `declaration-track:e9575b58bbae8ed5c73d78226d421750ad24eb0d2afff50bbc03660707ffde29` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/instance.md) | 67 | `declaration-track:2a35520e21e28374947127a33c23f181036cd5646b71270a32eaf058a4be2bea` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/instance-source-edition-4.md) | 70 | `declaration-track:ed2ae522929e4b15eae83c077075aa5c5792e289f631b7fc379d83a6fa9ed9af` |
| 5 | `theorem` | [mk_le_mk_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/mk-le-mk-iff.md) | 74 | `result-track:82dc208aee741b2b4c27646f30ffc84bf975de27de8433c25dcdd311daa26379` |
| 6 | `theorem` | [mk_lt_mk_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/mk-lt-mk-iff.md) | 78 | `result-track:38036de6de4b3b2b1349b8d21c76a6882b4c45623883ff929c771295a4026d92` |
| 7 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/le-def.md) | 81 | `result-track:c8e051fb8dc841e5554bcb8c235565c9a56571286740e46755054c72e3a7dd40` |
| 8 | `theorem` | [lt_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/lt-def.md) | 90 | `result-track:b8165c90c7a756091886205086c9db605c6846e73821525e9909cab208c962a2` |
| 9 | `instance` | [preorder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/preorder.md) | 99 | `declaration-track:397f2b2abcec8c12f085320ded43c2198797b4d1c76647e7f7238936848f44df` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:4712b3633cb3b22535aa0e45b1cd289ac83e286df00c0bab923b370f440af867` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/instance-source-edition-3.md) | 118 | `declaration-track:e17b4f7d0a35edd40c32fee714cb0ba328a8e632437467a5d601b5e7632afe28` |
| 12 | `instance` | [LE](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/le.md) | 132 | `declaration-track:35291d8fb910db5f9a07a4157c6377298c10e0b5b06d2dddcbd670efbf0b8685` |
| 13 | `instance` | [LT](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/lt.md) | 136 | `declaration-track:7baa7e95312e2c8a69a43f0c78dff7de082e247c175e26797e04a41a8e5e21c0` |
| 14 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/le-def-source-edition-2.md) | 139 | `result-track:e12b9da920f3b5aace296f10b79e35e632839a8d66d2e87ba7c6a4804646174e` |
| 15 | `theorem` | [lt_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/lt-def-source-edition-2.md) | 143 | `result-track:d386f4788ae019c6c628b74bb54822ad65c6da1d58b89943611f34293f3461d0` |
| 16 | `instance` | [preorder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/preorder-source-edition-2.md) | 148 | `declaration-track:5f72c9dade8f7fc55f4672d7de3f0420a7e3114b793528e12a3a7bfb368627b3` |
| 17 | `instance` | [partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/partialorder.md) | 164 | `declaration-track:e7bce652f56d1c3a2d85b0dc99b3f530a8df852ef652a3ae9657479da12e86da` |
| 18 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/linearorder.md) | 172 | `declaration-track:5e4d8d92f706a6f85400ba031c5f0cef16e3d2cf5ca67b8bb31411d78244a178` |
| 19 | `instance` | [orderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/orderbot.md) | 181 | `declaration-track:3a1eb829f8de0aba9c23809175def606b5020d3f095152e196fc49bf3b9969f9` |
| 20 | `instance` | [orderTop](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/ordertop.md) | 190 | `declaration-track:93bf6f831fd9168c5d9e1ee98649c6a7b86e4f73efad3791287785124606092f` |
| 21 | `instance` | [boundedOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/boundedorder.md) | 199 | `declaration-track:ed1e1f563a91bc31351744f5d608e8b9502a9077fc0a9b2fb527daca9981f905` |
| 22 | `instance` | [denselyOrdered](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/denselyordered.md) | 203 | `declaration-track:c5c314ca4811d134318e556eea5ae9dc6062df12402687b42045767bc44497a2` |
| 23 | `instance` | [denselyOrdered_of_noMaxOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/denselyordered-of-nomaxorder.md) | 213 | `declaration-track:86ddb959abe171778a01a76c6fbe1c33f931eb3c162afdc97bab60b88be3e078` |
| 24 | `instance` | [denselyOrdered_of_noMinOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/denselyordered-of-nominorder.md) | 223 | `declaration-track:7da5d8d4828e37eaa08436544721ecc0dcc20cb539390a0d932f44922be24331` |
| 25 | `instance` | [noMaxOrder_of_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/nomaxorder-of-nonempty.md) | 233 | `declaration-track:e13d19cb6462da0b176cf3310662bee70f88c48ba0dcefef635f52f91926e487` |
| 26 | `instance` | [noMinOrder_of_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/nominorder-of-nonempty.md) | 241 | `declaration-track:5dbee840aa9ce54fbe8beaddcf0cfb0b401edb408e045981cf869f7d17670a09` |
| 27 | `instance` | [noMaxOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/nomaxorder.md) | 249 | `declaration-track:9135d851d1ca6d37c62949e840b1ef2159ab059d9aecb5df5eb1c5d832070d55` |
| 28 | `instance` | [noMinOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaOrderNamespaced.lean/declarations/nominorder.md) | 256 | `declaration-track:844a7dd461ec5fdea3d8f3cae9545fc4b16a6cdf63b8d3afef968cf5d78cf7aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=013fd97bba5a157756bb1af02ac9a2647e25e55f16b57a847b181fb252685a8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
