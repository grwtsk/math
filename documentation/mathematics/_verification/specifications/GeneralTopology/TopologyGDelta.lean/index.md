# Verification target: Topology GDelta

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d55def4aab338b7a765993d04ea8ad343cd2708a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyGDelta.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyGDelta.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d55def4aab338b7a765993d04ea8ad343cd2708a`.

Source path: `GRWTSK/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGδ](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg.md) | 49 | `declaration-track:d12cbe4f2f25dd686f7fac43a6fa4c065dc53455dc36e0e164d91ee252f5b588` |
| 2 | `theorem` | [IsOpen.isGδ](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isopen-isg.md) | 54 | `result-track:80814298505525ff2b14f30d960a393ff678752471d03de910bb4244384797b8` |
| 3 | `theorem` | [isGδ_empty](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-empty.md) | 59 | `result-track:f46592f7ceb4257d8cdf25fa2342136dc8b876d3c53cbce710f4eb8a8144b6f3` |
| 4 | `theorem` | [isGδ_univ](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-univ.md) | 64 | `result-track:6bf85696d970db2df8cfc25d532f5112082fbfae180e9e47fd484208a8f9b884` |
| 5 | `theorem` | [isGδ_biInter_of_open](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-biinter-of-open.md) | 68 | `result-track:45b4030c88eff6dfbc7ae3e5cbe3ca523aa1d1d879460ed198e5b9e5e197cad2` |
| 6 | `theorem` | [isGδ_iInter_of_open](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-iinter-of-open.md) | 74 | `result-track:e6c3252c924b59db3c1056d21eba66a654bd175ed0fe7002372a78bed22cf7d5` |
| 7 | `theorem` | [isGδ_iInter](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-iinter.md) | 81 | `result-track:56c80fdbd9befebe3eaa2b6387ce417033ece2f5e9157e033e0836b07bf54cf3` |
| 8 | `theorem` | [isGδ_biInter](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-biinter.md) | 88 | `result-track:9a1833326887d3260745a497596800ffe727a435d4ea3154709a453a2fa2791f` |
| 9 | `theorem` | [isGδ_sInter](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-sinter.md) | 96 | `result-track:1e0467da4faeb63b2b272f4d197fb03c6c9af35e2bfd8f7ee9f4a9f4e75dd9dc` |
| 10 | `theorem` | [IsGδ.inter](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-inter.md) | 100 | `result-track:05d3e963becafc9631d95d8d90cdb3fea34fc8f7d7d71e001aba30171bb6d706` |
| 11 | `theorem` | [IsGδ.union](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-union.md) | 106 | `result-track:48e5981bfdb764cd04dcb2b72e7f1030b7863d4933454be7cd320806eba7a639` |
| 12 | `theorem` | [isGδ_biUnion](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-biunion.md) | 117 | `result-track:bdc232a83899d0babecd73087b6c032fd40782f2f2efcd7f2b0e4a20b9d74b9e` |
| 13 | `theorem` | [IsClosed.isGδ](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isclosed-isg.md) | 125 | `result-track:1b8d05d90d38463266553ed308079af5178c3e7c9ee4219982851ec896dc3555` |
| 14 | `theorem` | [isGδ_compl_singleton](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-compl-singleton.md) | 137 | `result-track:040c434d924db7328bdb577b3eb812a146815b17e47a757771b2210879488208` |
| 15 | `theorem` | [Set.Countable.isGδ_compl](../../../../GeneralTopology/TopologyGDelta.lean/declarations/set-countable-isg-compl.md) | 141 | `result-track:5879f28619cf8e671f61056049ac79982ef91d6b8f09a49e687d60b86459978b` |
| 16 | `theorem` | [Set.Finite.isGδ_compl](../../../../GeneralTopology/TopologyGDelta.lean/declarations/set-finite-isg-compl.md) | 146 | `result-track:1afb9a0cf66394fce6ff2056196ad8a7462ef63c002f8d4a0809de0980dd16ef` |
| 17 | `theorem` | [Set.Subsingleton.isGδ_compl](../../../../GeneralTopology/TopologyGDelta.lean/declarations/set-subsingleton-isg-compl.md) | 150 | `result-track:5900c652131ff7cadf3af92cd8c222adfaea67fc2cbfb246342e7ca057529104` |
| 18 | `theorem` | [Finset.isGδ_compl](../../../../GeneralTopology/TopologyGDelta.lean/declarations/finset-isg-compl.md) | 154 | `result-track:fce817fa24c414c188d83fed6df82375a318c32f87948556345de24891e6fccb` |
| 19 | `theorem` | [isGδ_singleton](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-singleton.md) | 160 | `result-track:7baf3facb1f9f7ebdbd12e5387e899f74958235b30d3778e72f32a88088439d8` |
| 20 | `theorem` | [Set.Finite.isGδ](../../../../GeneralTopology/TopologyGDelta.lean/declarations/set-finite-isg.md) | 166 | `result-track:4b6fc91077ce8769d2c555111537546a84aaba77e67ea43394e4683ea7672d90` |
| 21 | `theorem` | [isGδ_setOf_continuousAt](../../../../GeneralTopology/TopologyGDelta.lean/declarations/isg-setof-continuousat.md) | 179 | `result-track:20e5486e9b6c7c2a22f2e4d63a6b92febf73445fa3227f1f8e5120958fa8d1ba` |
| 22 | `def` | [residual](../../../../GeneralTopology/TopologyGDelta.lean/declarations/residual.md) | 197 | `declaration-track:aaca5b5c140b04ee62c7d3ffe3a1f15b10161b7df4410b33e73cdb2737a2783c` |
| 23 | `instance` | [countableInterFilter_residual](../../../../GeneralTopology/TopologyGDelta.lean/declarations/countableinterfilter-residual.md) | 201 | `declaration-track:4523976bc40308b02371847dad43fffc40279ceb72545859c583ad13179e3b08` |
| 24 | `theorem` | [residual_of_dense_open](../../../../GeneralTopology/TopologyGDelta.lean/declarations/residual-of-dense-open.md) | 206 | `result-track:302406468b720dddcab8c85ab1d7d729a0d39bd3799f680c2ef83f97398c0fcc` |
| 25 | `theorem` | [residual_of_dense_Gδ](../../../../GeneralTopology/TopologyGDelta.lean/declarations/residual-of-dense-g.md) | 211 | `result-track:11197e5d24e0b041e2046eb7eb0817692997db25ce908fb87931f53e0e8bbb72` |
| 26 | `theorem` | [mem_residual_iff](../../../../GeneralTopology/TopologyGDelta.lean/declarations/mem-residual-iff.md) | 219 | `result-track:a16373532a3bb1bb0136b761cd9c21bd91eb1842b5b732dad61aba81ebfaa471` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=388fac26477fec6e8dc7d978aeddda693b096892678539a4b4fcd2ebfa417bc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
