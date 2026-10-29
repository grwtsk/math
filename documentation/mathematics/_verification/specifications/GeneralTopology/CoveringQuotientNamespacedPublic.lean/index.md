# Verification target: Covering Quotient Namespaced Public

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

[Module and every result](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddQuotientCoveringMap](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isaddquotientcoveringmap.md) | 36 | `declaration-track:8c579177ccbae36cad9dceb73f97957f56827856c90a3e2fae6d42135b1a93b6` |
| 2 | `structure` | [IsQuotientCoveringMap](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isquotientcoveringmap.md) | 46 | `declaration-track:33b4ef2b07d0a9b790f4df6233f6103f3f9076141463e5fd85b866ce4b314edf` |
| 3 | `lemma` | [IsAddQuotientCoveringMap.toMultiplicative](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isaddquotientcoveringmap-tomultiplicative.md) | 52 | `result-track:2bac7e1dab527910034f84839457bf4183193c3b5909773065d047ce098cacb0` |
| 4 | `lemma` | [IsQuotientCoveringMap.toAdditive](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isquotientcoveringmap-toadditive.md) | 62 | `result-track:2196f6c1a680358eed86fb1eeec0e323d7ae8f84dd8df926c25bc2c6265421ac` |
| 5 | `theorem` | [subgroup_congr](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/subgroup-congr.md) | 74 | `result-track:f4cf97d10399a61d2653bab48f9934aea38b958d0edc71a05819c7d20fe6e7fe` |
| 6 | `theorem` | [map_smul](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/map-smul.md) | 80 | `result-track:46bae8734bf4852092fc69cbf116e452ca46a89db2cf18f3b38f3f9606fd3685` |
| 7 | `theorem` | [isCancelSMul](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/iscancelsmul.md) | 85 | `result-track:5389d889fc3052c654344afaadb5a484df179e1583e23f4b59cd8c75ad304cc7` |
| 8 | `theorem` | [homeomorph_comp](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/homeomorph-comp.md) | 91 | `result-track:355bccdca9dc5804005775a2642bb6beb5856a2e867759dae20eea6eb98560ea` |
| 9 | `theorem` | [homeomorph_comp_iff](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/homeomorph-comp-iff.md) | 99 | `result-track:4ade5e9bc8ce0acf046395e7774164d50154215582e36a845965c2f93d26c1ff` |
| 10 | `def` | [fiberEquivGroup](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/fiberequivgroup.md) | 106 | `declaration-track:045f1b0b3679d428fa0a317da32ef47171749d9efe636e3b7d5aa0033c41b535` |
| 11 | `theorem` | [fiberEquivGroup_self](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/fiberequivgroup-self.md) | 112 | `result-track:f389801c203bbf4a5992aef591fd3e44a9694ea2dec3cbffad21b2a175240b37` |
| 12 | `theorem` | [fiberEquivGroup_eq_iff](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/fiberequivgroup-eq-iff.md) | 116 | `result-track:c2e5eef53ae8b3ae73ba3e0ec607ffa9ab62d0d9801c5da9a1bd080433b76840` |
| 13 | `theorem` | [fiberEquivGroup_smul_self](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/fiberequivgroup-smul-self.md) | 120 | `result-track:65f395af80efc38e3cfa81b3af70117a4fcdcd2c711490708a1140198af83c8d` |
| 14 | `def` | [mulActionFiber](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/mulactionfiber.md) | 125 | `declaration-track:7bd45dbe85633867b062cec25dbc34eab94f8293a0ecd7498d975cc06f1a101a` |
| 15 | `lemma` | [coe_mulActionFiber_smul](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/coe-mulactionfiber-smul.md) | 128 | `result-track:1655a6f61e87f30f2354a020b3c6a338617c6c5a9ac9ed82649c164cba0136fa` |
| 16 | `lemma` | [mulActionFiber_isPretransitive](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/mulactionfiber-ispretransitive.md) | 133 | `result-track:362fc690fc8ff53289f80824225d1c00c6f5f148bc8735b9af97675d315ca21e` |
| 17 | `def` | [toPermFiber](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/topermfiber.md) | 143 | `declaration-track:54f9c7538e53f33a1ce890ac97e4704d562f936a7fd2abbc4f0b2b35b927432d` |
| 18 | `theorem` | [toPermFiber_ext](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/topermfiber-ext.md) | 146 | `result-track:73de3ce138491b7cf471c20e629f464a3862561e218cfa49ee21eaf7e636898d` |
| 19 | `theorem` | [toPermFiber_injective](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/topermfiber-injective.md) | 151 | `result-track:0ebd4f9c6c5aab2a6bcaa3aaa4ea23a72270e895518b13b1a518550281e885a1` |
| 20 | `theorem` | [exists_toPermFiber_eq](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/exists-topermfiber-eq.md) | 155 | `result-track:5d01eddd08c0b1c507287d33f3e96a10a5fc5d0f7560a43808921e118cee372d` |
| 21 | `def` | [trivializationOfSMulDisjoint](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/trivializationofsmuldisjoint.md) | 185 | `declaration-track:6e3225731c7c567dccb84b22fda3226966851664cef4ef8a565403861b7d42cc` |
| 22 | `lemma` | [isCoveringMapOn_of_smul_disjoint](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/iscoveringmapon-of-smul-disjoint.md) | 216 | `result-track:594b03b5c0340edccd61bb521221c0faa889256740f4fa49a64a331c471bc9e3` |
| 23 | `lemma` | [isCoveringMapOn_of_properlyDiscontinuousSMul](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/iscoveringmapon-of-properlydiscontinuoussmul.md) | 233 | `result-track:54e422d43d000c1f288558e37d16de0b14476518be8064813120bf3cd3611b7a` |
| 24 | `lemma` | [isQuotientCoveringMap_of_properlyDiscontinuousSMul](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isquotientcoveringmap-of-properlydiscontinuoussmul.md) | 238 | `result-track:51e079826d13be955b2abdc42add3481b1c92974e646e37f245ee7fd370ec797` |
| 25 | `lemma` | [Covering Quotient Namespaced Public](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/iscoveringmapon-quotientmk-of-properlydiscontinuoussmul.md) | 248 | `result-track:c4247c15e1481195ce07a3e51349bd27255ab0880d2cf4d41ef698117f4058f2` |
| 26 | `lemma` | [Covering Quotient Namespaced Public](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isquotientcoveringmap-quotientmk-of-properlydiscontinuoussmul.md) | 253 | `result-track:94206400c60ca8a06974cd8d435aa840ffd3e12b4f28e501ce844626b81c1de2` |
| 27 | `lemma` | [isQuotientCoveringMap_of_subgroup](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isquotientcoveringmap-of-subgroup.md) | 261 | `result-track:ef9417abb0aca9b16a729ac939fde5fb3d84bba040ca7bbf0fb75cf8be40669e` |
| 28 | `lemma` | [isQuotientCoveringMap_of_subgroupOp](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isquotientcoveringmap-of-subgroupop.md) | 271 | `result-track:39a8c2f4cce6ce01d7d010e9624325839f6b5b9fa190123486b8e8c66bfd604f` |
| 29 | `lemma` | [isQuotientCoveringMap_of_isDiscrete_ker_monoidHom](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isquotientcoveringmap-of-isdiscrete-ker-monoidhom.md) | 283 | `result-track:d0745bd2ef185ea334e02cd2a09b0f375c632b62666c74834e4a87ded9220af0` |
| 30 | `lemma` | [Subgroup.isQuotientCoveringMap](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/subgroup-isquotientcoveringmap.md) | 292 | `result-track:210c3621c5bf31f953edd3bf134c8a308da61f334f7cfd865cc91bd4217dcce4` |
| 31 | `lemma` | [Subgroup.isQuotientCoveringMap_of_comm](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/subgroup-isquotientcoveringmap-of-comm.md) | 298 | `result-track:8646c8699b3330030ce69d0d6f2b605a3773dde5b171488d1b86fcfa3381947a` |
| 32 | `lemma` | [isCoveringMap](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/iscoveringmap.md) | 306 | `result-track:238ff41844bc0db5ac0a2de413cc627852c7c4144cf2cc6805314914e6ddf859` |
| 33 | `theorem` | [isOpenQuotientMap](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isopenquotientmap.md) | 319 | `result-track:4026fc7456c985a46a065ca03ce2a98e69ad747617cb1a61ded63fe587c53e56` |
| 34 | `theorem` | [isQuotientCoveringMap_iff_isCoveringMap_and](../../../../GeneralTopology/CoveringQuotientNamespacedPublic.lean/declarations/isquotientcoveringmap-iff-iscoveringmap-and.md) | 327 | `result-track:390d04ea6058ed7dc94e2e9a0606d7c66d399677ebaf91922bb1670df71e4e47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=187fde27d95edff8479a03f857f12fec1c641c1f9638852402e8a09c219377f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
