# Verification target: GRWTSK.Topology.GeneralTopology.Quotient.Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3348d2a4068c7336738a5f5144d377e4ea0847dd",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3348d2a4068c7336738a5f5144d377e4ea0847dd`.

Source path: `GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddQuotientCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isaddquotientcoveringmap--8c579177ccbae36cad9dceb7.md) | 36 | `declaration-track:8c579177ccbae36cad9dceb73f97957f56827856c90a3e2fae6d42135b1a93b6` |
| 2 | `structure` | [IsQuotientCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isquotientcoveringmap--33b4ef2b07d0a9b790f4df62.md) | 46 | `declaration-track:33b4ef2b07d0a9b790f4df6233f6103f3f9076141463e5fd85b866ce4b314edf` |
| 3 | `lemma` | [IsAddQuotientCoveringMap.toMultiplicative](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isaddquotientcoveringmap-tomultiplicative--2bac7e1dab527910034f8483.md) | 52 | `result-track:2bac7e1dab527910034f84839457bf4183193c3b5909773065d047ce098cacb0` |
| 4 | `lemma` | [IsQuotientCoveringMap.toAdditive](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isquotientcoveringmap-toadditive--2196f6c1a680358eed86fb1e.md) | 62 | `result-track:2196f6c1a680358eed86fb1eeec0e323d7ae8f84dd8df926c25bc2c6265421ac` |
| 5 | `theorem` | [subgroup_congr](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/subgroup-congr--f4cf97d10399a61d2653bab4.md) | 74 | `result-track:f4cf97d10399a61d2653bab48f9934aea38b958d0edc71a05819c7d20fe6e7fe` |
| 6 | `theorem` | [map_smul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/map-smul--46bae8734bf4852092fc69cb.md) | 80 | `result-track:46bae8734bf4852092fc69cbf116e452ca46a89db2cf18f3b38f3f9606fd3685` |
| 7 | `theorem` | [isCancelSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/iscancelsmul--5389d889fc3052c654344afa.md) | 85 | `result-track:5389d889fc3052c654344afaadb5a484df179e1583e23f4b59cd8c75ad304cc7` |
| 8 | `theorem` | [homeomorph_comp](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/homeomorph-comp--355bccdca9dc5804005775a2.md) | 91 | `result-track:355bccdca9dc5804005775a2642bb6beb5856a2e867759dae20eea6eb98560ea` |
| 9 | `theorem` | [homeomorph_comp_iff](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/homeomorph-comp-iff--4ade5e9bc8ce0acf046395e7.md) | 99 | `result-track:4ade5e9bc8ce0acf046395e7774164d50154215582e36a845965c2f93d26c1ff` |
| 10 | `def` | [fiberEquivGroup](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/fiberequivgroup--045f1b0b3679d428fa0a317d.md) | 106 | `declaration-track:045f1b0b3679d428fa0a317da32ef47171749d9efe636e3b7d5aa0033c41b535` |
| 11 | `theorem` | [fiberEquivGroup_self](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/fiberequivgroup-self--f389801c203bbf4a5992aef5.md) | 112 | `result-track:f389801c203bbf4a5992aef591fd3e44a9694ea2dec3cbffad21b2a175240b37` |
| 12 | `theorem` | [fiberEquivGroup_eq_iff](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/fiberequivgroup-eq-iff--c2e5eef53ae8b3ae73ba3e0e.md) | 116 | `result-track:c2e5eef53ae8b3ae73ba3e0ec607ffa9ab62d0d9801c5da9a1bd080433b76840` |
| 13 | `theorem` | [fiberEquivGroup_smul_self](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/fiberequivgroup-smul-self--65f395af80efc38e3cfa81b3.md) | 120 | `result-track:65f395af80efc38e3cfa81b3af70117a4fcdcd2c711490708a1140198af83c8d` |
| 14 | `def` | [mulActionFiber](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/mulactionfiber--7bd45dbe85633867b062cec2.md) | 125 | `declaration-track:7bd45dbe85633867b062cec25dbc34eab94f8293a0ecd7498d975cc06f1a101a` |
| 15 | `lemma` | [coe_mulActionFiber_smul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/coe-mulactionfiber-smul--1655a6f61e87f30f2354a020.md) | 128 | `result-track:1655a6f61e87f30f2354a020b3c6a338617c6c5a9ac9ed82649c164cba0136fa` |
| 16 | `lemma` | [mulActionFiber_isPretransitive](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/mulactionfiber-ispretransitive--362fc690fc8ff53289f80824.md) | 133 | `result-track:362fc690fc8ff53289f80824225d1c00c6f5f148bc8735b9af97675d315ca21e` |
| 17 | `def` | [toPermFiber](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/topermfiber--54f9c7538e53f33a1ce890ac.md) | 143 | `declaration-track:54f9c7538e53f33a1ce890ac97e4704d562f936a7fd2abbc4f0b2b35b927432d` |
| 18 | `theorem` | [toPermFiber_ext](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/topermfiber-ext--73de3ce138491b7cf471c20e.md) | 146 | `result-track:73de3ce138491b7cf471c20e629f464a3862561e218cfa49ee21eaf7e636898d` |
| 19 | `theorem` | [toPermFiber_injective](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/topermfiber-injective--0ebd4f9c6c5aab2a6bcaa3aa.md) | 151 | `result-track:0ebd4f9c6c5aab2a6bcaa3aaa4ea23a72270e895518b13b1a518550281e885a1` |
| 20 | `theorem` | [exists_toPermFiber_eq](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/exists-topermfiber-eq--5d01eddd08c0b1c507287d33.md) | 155 | `result-track:5d01eddd08c0b1c507287d33f3e96a10a5fc5d0f7560a43808921e118cee372d` |
| 21 | `def` | [trivializationOfSMulDisjoint](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/trivializationofsmuldisjoint--6e3225731c7c567dccb84b22.md) | 185 | `declaration-track:6e3225731c7c567dccb84b22fda3226966851664cef4ef8a565403861b7d42cc` |
| 22 | `lemma` | [isCoveringMapOn_of_smul_disjoint](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/iscoveringmapon-of-smul-disjoint--594b03b5c0340edccd61bb52.md) | 216 | `result-track:594b03b5c0340edccd61bb521221c0faa889256740f4fa49a64a331c471bc9e3` |
| 23 | `lemma` | [isCoveringMapOn_of_properlyDiscontinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/iscoveringmapon-of-properlydiscontinuoussmul--54e422d43d000c1f288558e3.md) | 233 | `result-track:54e422d43d000c1f288558e37d16de0b14476518be8064813120bf3cd3611b7a` |
| 24 | `lemma` | [isQuotientCoveringMap_of_properlyDiscontinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isquotientcoveringmap-of-properlydiscontinuoussmul--51e079826d13be955b2abdc4.md) | 238 | `result-track:51e079826d13be955b2abdc42add3481b1c92974e646e37f245ee7fd370ec797` |
| 25 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsAddQuotientCoveringMap.Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.isCoveringMapOn_quotientMk_of_properlyDiscontinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/root-grwtsk-topology-generaltopology-isaddquotientcoveringmap-variant726--c4247c15e1481195ce07a3e5.md) | 248 | `result-track:c4247c15e1481195ce07a3e51349bd27255ab0880d2cf4d41ef698117f4058f2` |
| 26 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsAddQuotientCoveringMap.Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.isQuotientCoveringMap_quotientMk_of_properlyDiscontinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/root-grwtsk-topology-generaltopology-isaddquotientcoveringmap-variant726--94206400c60ca8a06974cd8d.md) | 253 | `result-track:94206400c60ca8a06974cd8d435aa840ffd3e12b4f28e501ce844626b81c1de2` |
| 27 | `lemma` | [isQuotientCoveringMap_of_subgroup](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isquotientcoveringmap-of-subgroup--ef9417abb0aca9b16a729ac9.md) | 261 | `result-track:ef9417abb0aca9b16a729ac939fde5fb3d84bba040ca7bbf0fb75cf8be40669e` |
| 28 | `lemma` | [isQuotientCoveringMap_of_subgroupOp](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isquotientcoveringmap-of-subgroupop--39a8c2f4cce6ce01d7d010e9.md) | 271 | `result-track:39a8c2f4cce6ce01d7d010e9624325839f6b5b9fa190123486b8e8c66bfd604f` |
| 29 | `lemma` | [isQuotientCoveringMap_of_isDiscrete_ker_monoidHom](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isquotientcoveringmap-of-isdiscrete-ker-monoidhom--d0745bd2ef185ea334e02cd2.md) | 283 | `result-track:d0745bd2ef185ea334e02cd2a09b0f375c632b62666c74834e4a87ded9220af0` |
| 30 | `lemma` | [Subgroup.isQuotientCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/subgroup-isquotientcoveringmap--210c3621c5bf31f953edd3bf.md) | 292 | `result-track:210c3621c5bf31f953edd3bf134c8a308da61f334f7cfd865cc91bd4217dcce4` |
| 31 | `lemma` | [Subgroup.isQuotientCoveringMap_of_comm](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/subgroup-isquotientcoveringmap-of-comm--8646c8699b3330030ce69d0d.md) | 298 | `result-track:8646c8699b3330030ce69d0d6f2b605a3773dde5b171488d1b86fcfa3381947a` |
| 32 | `lemma` | [isCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/iscoveringmap--238ff41844bc0db5ac0a2de4.md) | 306 | `result-track:238ff41844bc0db5ac0a2de413cc627852c7c4144cf2cc6805314914e6ddf859` |
| 33 | `theorem` | [isOpenQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isopenquotientmap--4026fc7456c985a46a065ca0.md) | 319 | `result-track:4026fc7456c985a46a065ca03ce2a98e69ad747617cb1a61ded63fe587c53e56` |
| 34 | `theorem` | [isQuotientCoveringMap_iff_isCoveringMap_and](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/declarations/isquotientcoveringmap-iff-iscoveringmap-and--390d04ea6058ed7dc94e2e9a.md) | 327 | `result-track:390d04ea6058ed7dc94e2e9a0606d7c66d399677ebaf91922bb1670df71e4e47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
