# Verification target: GRWTSK.Topology.GeneralTopology.Profinite.Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71abbfe0e8a5c17c7230711a10848b07eb8b9af8",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71abbfe0e8a5c17c7230711a10848b07eb8b9af8`.

Source path: `GRWTSK/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean.json)

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
| 1 | `def` | [FiniteGaloisIntermediateField.finGaloisGroup](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/finitegaloisintermediatefield-fingaloisgroup--e041b9a004dae71baa3c9c3f.md) | 66 | `declaration-track:e041b9a004dae71baa3c9c3f3cb27632492ac257c43f3f181f79bda48de81815` |
| 2 | `def` | [finGaloisGroupMap](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/fingaloisgroupmap--23f6da0e8174cd3da399a999.md) | 73 | `declaration-track:23f6da0e8174cd3da399a999321931e8354bcf34217fb0c20b281993ed280b95` |
| 3 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/map-id--145ecf736f114869c1638d0f.md) | 83 | `result-track:145ecf736f114869c1638d0fcb407f1047050cddd2497937c2c3b05da182a829` |
| 4 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/map-comp--8135cbfb68ed0d7909e215ac.md) | 88 | `result-track:8135cbfb68ed0d7909e215ac9149f72f8335538f225190bb815dfa06f16112c1` |
| 5 | `def` | [finGaloisGroupFunctor](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/fingaloisgroupfunctor--c8bb57a478b6dd5dab6eac11.md) | 108 | `declaration-track:c8bb57a478b6dd5dab6eac112f94a0f8f7621848ae0b08a09e8b1fd827a84126` |
| 6 | `abbrev` | [asProfiniteGaloisGroupFunctor](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/asprofinitegaloisgroupfunctor--474d75ee26daf197924d07b1.md) | 123 | `declaration-track:474d75ee26daf197924d07b11babb2c03481672e5864a525a38fd02adcfbd073` |
| 7 | `def` | [algEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/algequivtolimit--336b9dc88eadae096643c0ad.md) | 133 | `declaration-track:336b9dc88eadae096643c0ad4bb5739f255a5e74a47b04e64d30a105f489dda2` |
| 8 | `theorem` | [restrictNormalHom_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/restrictnormalhom-continuous--905c03af5de46891ce4ff641.md) | 148 | `result-track:905c03af5de46891ce4ff641bdd54496673ff44d91fc20f769e4bbb9a9a2d100` |
| 9 | `lemma` | [algEquivToLimit_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/algequivtolimit-continuous--70056f63b4ee1c23bc60b6d7.md) | 169 | `result-track:70056f63b4ee1c23bc60b6d7e17a5b3061f3d703fba5500747ca5b5165b0c93b` |
| 10 | `def` | [proj](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/proj--3b91d95d44146bfd7130a3f6.md) | 176 | `declaration-track:3b91d95d44146bfd7130a3f6646a422db6e1fbe4dde6d19f6a9ea06c12e280bd` |
| 11 | `lemma` | [finGaloisGroupFunctor_map_proj_eq_proj](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/fingaloisgroupfunctor-map-proj-eq-proj--0e7206020ab50da796e104ce.md) | 182 | `result-track:0e7206020ab50da796e104ce9301bef24cfaf4ed25efa9a2510e26721e773501` |
| 12 | `lemma` | [proj_of_le](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/proj-of-le--c66f60f624dd4e71ec5e72d9.md) | 187 | `result-track:c66f60f624dd4e71ec5e72d9df92e67cdccb002a5ad2a732096d50f5d48dbe39` |
| 13 | `lemma` | [proj_adjoin_singleton_val](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/proj-adjoin-singleton-val--acb8b5e03fa67629770db44e.md) | 200 | `result-track:acb8b5e03fa67629770db44e3f40d32e8010ced180131203accef10f60678409` |
| 14 | `def` | [toAlgEquivAux](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/toalgequivaux--487618c2cd761c927ee7516b.md) | 209 | `declaration-track:487618c2cd761c927ee7516bb5e341a2eb80c5c9399c5cc879b951b8433a5f14` |
| 15 | `lemma` | [toAlgEquivAux_eq_proj_of_mem](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/toalgequivaux-eq-proj-of-mem--db57b7d89ab7ffd81affbfa5.md) | 215 | `result-track:db57b7d89ab7ffd81affbfa5ca474f18a024156b6c969065ad882c34ad305908` |
| 16 | `lemma` | [mk_toAlgEquivAux](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/mk-toalgequivaux--b04407427e6df80a04d85817.md) | 222 | `result-track:b04407427e6df80a04d85817e0e5ed93763fa8f799714258d2d24d93df27176d` |
| 17 | `lemma` | [toAlgEquivAux_eq_liftNormal](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/toalgequivaux-eq-liftnormal--f5af0f8529312dd217d550d5.md) | 230 | `result-track:f5af0f8529312dd217d550d54b677d8ab9984238caf9a97008148d4e0960f267` |
| 18 | `def` | [limitToAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/limittoalgequiv--390112d0474e429c27db54e0.md) | 241 | `declaration-track:390112d0474e429c27db54e0c5fc756042b6c4a306497ed4c30ed14060005382` |
| 19 | `def` | [mulEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/mulequivtolimit--e2a46bedccc771812fd98fec.md) | 274 | `declaration-track:e2a46bedccc771812fd98fec550317a1baf7dc6c7eb6b30372ae4f4691c3b8e4` |
| 20 | `lemma` | [krullTopology_mem_nhds_one_iff_of_isGalois](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/krulltopology-mem-nhds-one-iff-of-isgalois--f84f8713d00a144cb60dc5e6.md) | 292 | `result-track:f84f8713d00a144cb60dc5e631f28d21025bafeae1774fd82a123e21f7f1b150` |
| 21 | `lemma` | [isOpen_mulEquivToLimit_image_fixingSubgroup](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/isopen-mulequivtolimit-image-fixingsubgroup--81091be1593f43c3d329b654.md) | 298 | `result-track:81091be1593f43c3d329b6546cb11ba05d48fd1bc53377225218e345fdb64bb1` |
| 22 | `lemma` | [mulEquivToLimit_symm_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/mulequivtolimit-symm-continuous--c1f631c24b643f6894b902c0.md) | 308 | `result-track:c1f631c24b643f6894b902c0c0db866e812b5e53129b0cc398f1864a44e19910` |
| 23 | `def` | [continuousMulEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/continuousmulequivtolimit--f974320d10825c3d79164e6b.md) | 323 | `declaration-track:f974320d10825c3d79164e6b2be9576e7bd1711091afe9b1784020f5bf23f0d4` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/instance--0a659329ee055332be407bf5.md) | 329 | `declaration-track:0a659329ee055332be407bf501c872ea4d0c405fd4f975584eea23802c88894a` |
| 25 | `def` | [profiniteGalGrp](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/profinitegalgrp--d0812fd76d7ac11b34af8e88.md) | 334 | `declaration-track:d0812fd76d7ac11b34af8e8802d6ad7a62c0dad85d4394ec3c2471294e737f95` |
| 26 | `def` | [profiniteGalGrpIsoLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/declarations/profinitegalgrpisolimit--26004d15eb4118d2bf16ab37.md) | 339 | `declaration-track:26004d15eb4118d2bf16ab37e6559a4f9bcfc0e8ea9d160fd52ace0f5f4715c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
