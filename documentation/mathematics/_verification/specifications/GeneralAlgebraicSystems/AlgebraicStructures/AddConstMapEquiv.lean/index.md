# Verification target: Add Const Map Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "754428fdd0f20d2a8eef8bff84fde082d96b96e6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `754428fdd0f20d2a8eef8bff84fde082d96b96e6`.

Source path: `GRWTSK/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddConstMap.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddConstEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/addconstequiv.md) | 24 | `declaration-track:6ed7b9cccf492dc9549f1275da08c8c4d10f404f8b37af143f6f33c798d764ce` |
| 2 | `lemma` | [toEquiv_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/toequiv-injective.md) | 40 | `result-track:211a349b553f79826979c086e748b02f2041c211876a9a138ffebb7d4bb203d9` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:262e0e51f5486b8e23d94d2d890a3d322020ee969ecbf30e85bab35764054dba` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instance.md) | 51 | `declaration-track:087e2fb354baa00750f0ceb32097f7cdc2994cb8e18b775b2705263d15979adf` |
| 5 | `lemma` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/ext.md) | 55 | `result-track:bc00ca38042872a36e71a6c5a22e00211910a3c3cd00792f5780c8a9ba74ea91` |
| 6 | `lemma` | [toEquiv_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/toequiv-inj.md) | 58 | `result-track:13e938a8da017f2f3e6792d07c0a6f670afb7e445d6ac7f9fb4de4c7ea8986a0` |
| 7 | `lemma` | [coe_toEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/coe-toequiv.md) | 61 | `result-track:fc8a264945440c5a3eddcf9e0c305cb7d8e3d54b9c8fad297f5ba53c5c55ee0e` |
| 8 | `def` | [symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/symm.md) | 64 | `declaration-track:3d3e7590275276704a3c62f242e7c74471081b998b763479ee860e291fe8b9f9` |
| 9 | `def` | [Simps.symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/simps-symm-apply.md) | 69 | `declaration-track:2bd60f803aa788a9161116d6efdaef479fda594aeac919f2ef93fb9e9740f27b` |
| 10 | `lemma` | [symm_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/symm-symm.md) | 73 | `result-track:7edcc5899d1a8ccb3ab2dde7f4f66ff2e79937a233569c4f9e655ab5170e1c98` |
| 11 | `def` | [refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/refl.md) | 77 | `declaration-track:badebbefd393d796a9617cf988bdba691a9a21298e1e6489eb93a008df811e2f` |
| 12 | `lemma` | [symm_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/symm-refl.md) | 81 | `result-track:7cf89f9dbe1bd154d96decc525e3b5a8f500f1e2b0a8a324fcfb39f9c2d9977d` |
| 13 | `def` | [trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/trans.md) | 85 | `declaration-track:d2769e5def4dc19a48c8735f80b3a62968c3c028015291d66e33c420c259ea96` |
| 14 | `lemma` | [trans_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/trans-refl.md) | 89 | `result-track:f155b567f8eb7bc88da69fd0ee62979df7fe07ac97d3fd178507288c8e901ad8` |
| 15 | `lemma` | [refl_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/refl-trans.md) | 90 | `result-track:20c34ab5382f3055ec68a0d4d688767c020a909b32dfa3aa61235a9ed819ea79` |
| 16 | `lemma` | [self_trans_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/self-trans-symm.md) | 93 | `result-track:e0bb3517a3eb5da4958b45db350e2fbb8e5690c6e564d99d84b1c94dd40430fb` |
| 17 | `lemma` | [symm_trans_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/symm-trans-self.md) | 97 | `result-track:07e644ff130a863de41805812b54047ff7149fc62f494eac85deecfcad4810cf` |
| 18 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instone.md) | 100 | `declaration-track:6b295f208c62ce9d318dd266c82790482bcc93741a7bbfeb3ca1bb3eef6e4bf1` |
| 19 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instmul.md) | 101 | `declaration-track:71c0db3d3eee1bc2e7f6910fec3b60ae897d9cb32f370ad9264fca9a887ad168` |
| 20 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instinv.md) | 102 | `declaration-track:6cd16f6b4b34bb414fcc4b9d9de67fece348abaf17f41e1aa6b6f1dd77b084b3` |
| 21 | `instance` | [instDiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instdiv.md) | 103 | `declaration-track:86cb45c0ca22b65db6e5f0bf87db500fa9e8c1d89592183fafe2260527886927` |
| 22 | `instance` | [instPowNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instpownat.md) | 105 | `declaration-track:5b10d150fd5609d4345d4b7abea71fd726baf39b9300157665a588a6ad944d44` |
| 23 | `instance` | [instPowInt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instpowint.md) | 108 | `declaration-track:1d8310031541d9d413f81636bc51ec5d85030759679951f78f5ea3a913c8e31f` |
| 24 | `instance` | [instGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/instgroup.md) | 114 | `declaration-track:6a1a93b6eddd9f02463ed40de2120605b6e4758fcb47a300095414028c256213` |
| 25 | `def` | [toPerm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/toperm.md) | 120 | `declaration-track:43a60b1c0f17d4b768f804fa1bd2cf681a161134732aa640891429c1ce95f9b7` |
| 26 | `def` | [toAddConstMapHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/toaddconstmaphom.md) | 125 | `declaration-track:a2771fbc9d711449feffc4ff14d6e871034287df5ba300632928ad1ffa03b605` |
| 27 | `def` | [equivUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquiv.lean/declarations/equivunits.md) | 132 | `declaration-track:12f78fcd9f432882c1a3c5b9d53259c7f57999c2b2ed7a1d227d37bdf661c663` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2da0836e417e30b356b17614c9aec0e1b5fe26a78fbde40489022a672afff12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean","GRWTSK/_verification/specifications/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
