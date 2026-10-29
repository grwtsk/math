# Verification target: Bivariate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24c235d81e5bb533c751644af1da1003af9177ea",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bivariate/Variantace26c8bafc7efb65da16ced90ddd232cd1cfff50ae02209592369221ba5ec15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24c235d81e5bb533c751644af1da1003af9177ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bivariate/Variantace26c8bafc7efb65da16ced90ddd232cd1cfff50ae02209592369221ba5ec15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bivariate/Variantace26c8bafc7efb65da16ced90ddd232cd1cfff50ae02209592369221ba5ec15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [evalEval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval.md) | 46 | `declaration-track:bffb6d6d61eb20eb1ac88d42836b9d8ffca4086e7852036a4eceefe43ae0b7b0` |
| 2 | `abbrev` | [CC](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/cc.md) | 49 | `declaration-track:039f020bc0e6160fa86cf9220252cf1136d060cef70742ee7c1363a5f2c2b3ab` |
| 3 | `lemma` | [evalEval_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-c.md) | 51 | `result-track:61cab74c84ce9fbfe3a97b1a1abc047fa63504736c4f92d675c7739a117f6ddc` |
| 4 | `lemma` | [evalEval_CC](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-cc.md) | 55 | `result-track:c682146853da72830c151ba9a6ca4d55f882dba6658d4afdaf47f00567e16756` |
| 5 | `lemma` | [evalEval_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-zero.md) | 59 | `result-track:f9c17ec46729388bcb2d6f525e10080c1d5d7bda33334a69ffa343dd4d9c656f` |
| 6 | `lemma` | [evalEval_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-one.md) | 63 | `result-track:410b5dcefe4647424d3664016bb8ef7bbc30c64a5e63bf4fbbb3e455aabb0f06` |
| 7 | `lemma` | [evalEval_natCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-natcast.md) | 67 | `result-track:d07ce316c4c537d600e41c377355624a3852825cb3cd7dfce7740d1ca5da77a0` |
| 8 | `lemma` | [evalEval_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-x.md) | 71 | `result-track:7169558e041c7b3065b6efe2ddb94da39a2204c792a6b10c54615d64b43ef8bc` |
| 9 | `lemma` | [evalEval_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-add.md) | 75 | `result-track:9d90110953e8fe15d2762b329f8b026e2d75616ba34fb5f5b2f4d2467a319828` |
| 10 | `lemma` | [evalEval_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-sum.md) | 79 | `result-track:99330c5872195aec63931d9333e5c2af81f1ed62e88dc708f997570b50d810eb` |
| 11 | `lemma` | [evalEval_finset_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-finset-sum.md) | 83 | `result-track:044b13d21acf5413f9b2e45a95bf1b97fbe5b4a4222df33897fc8c12ad180aab` |
| 12 | `lemma` | [evalEval_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-smul.md) | 88 | `result-track:0799c4517868c5cf52edc82251f57302258e0918790464c2df7f78e7c7c35629` |
| 13 | `lemma` | [evalEval_surjective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-surjective.md) | 92 | `result-track:20be767c987295fbd7721349dc00acf19abec6362d1ea455a471a5551ec926d1` |
| 14 | `lemma` | [evalEval_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-neg.md) | 102 | `result-track:663621aa3f067b98bc4003272c4351981bdb1c0ab2460ae4b6548004e787686c` |
| 15 | `lemma` | [evalEval_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-sub.md) | 106 | `result-track:09a522c9860615d088e4818f024973f89f425c9a2dcf364f3c2fd49f23916374` |
| 16 | `lemma` | [evalEval_intCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-intcast.md) | 111 | `result-track:92e1094cdaa1fbad8175f041a08aaf694072bfaf8a709900a1e76186aa59b1cc` |
| 17 | `lemma` | [evalEval_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-mul.md) | 121 | `result-track:45b67f5e4410aea1f35a8db77df40424d07f10649cb7a1d9e25dbba2d986537b` |
| 18 | `lemma` | [evalEval_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-prod.md) | 125 | `result-track:15870b7661d614fb7b658a3ce53f654678cea44108e63c60e27d574da77d1d58` |
| 19 | `lemma` | [evalEval_list_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-list-prod.md) | 129 | `result-track:5227cb3e4e8c0cc4148a7b6f15aead49c21f0553f791153f80e185d6056a4baf` |
| 20 | `lemma` | [evalEval_multiset_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-multiset-prod.md) | 133 | `result-track:27fba883b2779a9e23ba77604f2f97e404f982a4ff13dd90c7d94fadc71bf130` |
| 21 | `lemma` | [evalEval_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-pow.md) | 138 | `result-track:0b96e2730259659744064dc2aa9ea78be7a8c41225f24b9f2841de56e8482b8c` |
| 22 | `lemma` | [evalEval_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-dvd.md) | 141 | `result-track:31d3ea7711dfd0783dc9c1328f360f19a07c87a11e61edc03d3816c396ef29ca` |
| 23 | `lemma` | [coe_algebraMap_eq_CC](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/coe-algebramap-eq-cc.md) | 144 | `result-track:5f9a0863e45f35518cf47a1425d862f4fa57d5f96872c924f6f697fb92f899a1` |
| 24 | `abbrev` | [evalEvalRingHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evalevalringhom.md) | 147 | `declaration-track:83eb849d6b5f3e8e034ff5fcc8fa0a0372f8e5c5d77936e23f2b43fde17fb7e4` |
| 25 | `lemma` | [coe_evalEvalRingHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/coe-evalevalringhom.md) | 150 | `result-track:0165e7a955b34c2120141d4f52144acff3279262e3541f3ce99adbee580c3631` |
| 26 | `lemma` | [evalEvalRingHom_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evalevalringhom-eq.md) | 152 | `result-track:495d9a9ed02f4e8a6ecfaef7e7f7e82ee7dfdef6c386fab08a0cccdec497d41c` |
| 27 | `lemma` | [eval₂_evalRingHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/eval-evalringhom.md) | 155 | `result-track:fcfcbcf09f898d7851a7dbf824f5137da55989da7ed44530b3edf0c8d925e384` |
| 28 | `lemma` | [map_evalRingHom_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/map-evalringhom-eval.md) | 158 | `result-track:90b381e1719363d6a1565b1e00df217783e368978cb54e949b76264e139c5acd` |
| 29 | `lemma` | [map_mapRingHom_eval_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/map-mapringhom-eval-map.md) | 168 | `result-track:e7d246df6b8635823d4154a9287497f5d2e8c76a43b62263a6843fe19090967b` |
| 30 | `lemma` | [map_mapRingHom_eval_map_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/map-mapringhom-eval-map-eval.md) | 171 | `result-track:f4744acc9422627ca809d635fee3eb3549f8b7b8f0e494135d4e36c415fdf867` |
| 31 | `lemma` | [map_mapRingHom_evalEval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/map-mapringhom-evaleval.md) | 175 | `result-track:d6705ae27795de5add2658a09aca68a718a507e76162ae607f077ced5a7d15f9` |
| 32 | `lemma` | [eval₂RingHom_eval₂RingHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/eval-ringhom-eval-ringhom.md) | 185 | `result-track:6a54aff6b7fca7455cadd97d2a7f74d903978691c8c01e5b546c33376ea1fd88` |
| 33 | `lemma` | [eval₂_eval₂RingHom_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/eval-eval-ringhom-apply.md) | 190 | `result-track:e166e9fa5db404f4638492b9ed00571ca2d0dbaa13913a80bc7e56c3c64d86e6` |
| 34 | `lemma` | [eval_C_X_comp_eval₂_map_C_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/eval-c-x-comp-eval-map-c-x.md) | 194 | `result-track:28b470ea6c4c1643fa0564425dfd1e589462111d7b8c64bd2ea1e29462c05250` |
| 35 | `lemma` | [eval_C_X_eval₂_map_C_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/eval-c-x-eval-map-c-x.md) | 202 | `result-track:62ba7be86f58c9a99f318dab6ecfca3ad4b0dc975b0db71f5854ae3def0da3ec` |
| 36 | `def` | [evalEval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-source-edition-2.md) | 219 | `declaration-track:c58cde02c7d026db058f7a10daf270e461cfef49d154fcb786301b69742996c2` |
| 37 | `lemma` | [evalEval_mk](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/BivariateNamespaced.lean/declarations/evaleval-mk.md) | 222 | `result-track:19f6eb49b3229ed79e949fb1e39dbe9ce5b572b7aa60432ff7308098d67ee9c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef06410d62f27c4a5f6eec813c2739519f546eb8f62ed9764d661ebfbe2d7ae8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Bivariate/Variantace26c8bafc7efb65da16ced90ddd232cd1cfff50ae02209592369221ba5ec15.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Bivariate/Variantace26c8bafc7efb65da16ced90ddd232cd1cfff50ae02209592369221ba5ec15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
