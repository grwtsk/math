# Verification target: Picard Lindelof Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/index.md) · [Full source](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcd2276d677e667f58c96e09126c3cafb8bb4506`.

Source path: `GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean.json)

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
| 1 | `structure` | [IsPicardLindelof](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/ispicardlindelof.md) | 79 | `declaration-track:3353ebd924a917500806341ac49b2574607c058cf6f8bcf59de64d4ce230e84f` |
| 2 | `def` | [picard](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/picard.md) | 105 | `declaration-track:4c5b2a8905d2c52cc6f1298e2ac431a066754197bda249951ad2ee88da632993` |
| 3 | `lemma` | [picard_apply](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/picard-apply-source-edition-2.md) | 109 | `result-track:6b55f8895d527e6214b230896dbff38adad24126d003944934d723b8490c2fca` |
| 4 | `lemma` | [picard_apply₀](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/picard-apply.md) | 111 | `result-track:18e6ff3dc913f30699fff83061e5c7696e4ae6aefaa8ef44a8932a5e85aa30fb` |
| 5 | `lemma` | [contDiffOn_comp](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/contdiffon-comp.md) | 115 | `result-track:55d27290b22eee101634451b2bfd2570bbbab8c6129efa63451e17319f35569a` |
| 6 | `lemma` | [continuousOn_comp](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/continuouson-comp.md) | 123 | `result-track:f59a5fd43dba20e37b5a1c256c4645233a752919349a7cc1c45e489470122544` |
| 7 | `structure` | [FunSpace](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/funspace.md) | 143 | `declaration-track:c218e843f72d56141c59f1fb04197c8d62863557ebf82e4fc516cb36cdade561` |
| 8 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/instance.md) | 158 | `declaration-track:28f0d6ba3b25dd87bca15a57e61d4a4fdcce8a96108793584b0c98d30d740503` |
| 9 | `lemma` | [ext](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/ext.md) | 161 | `result-track:a00b351745b81a2e0630095a744761d72668c6355604cb4d3afd6c3bdd528876` |
| 10 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/instance-source-edition-3.md) | 165 | `declaration-track:cb40164b904a2c8909f546fb858884dd1e0faf596dd79cbe2463cffdd7b4ad49` |
| 11 | `lemma` | [continuous](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/continuous.md) | 168 | `result-track:042ed84647d6753aaf399ed992c7838a36a6a1562d696605b30246c45e89b575` |
| 12 | `def` | [toContinuousMap](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/tocontinuousmap.md) | 171 | `declaration-track:cb646ff7f0a862cba5211e30c70793abfa91eb198ea13d92f143bc2b33573820` |
| 13 | `lemma` | [toContinuousMap_apply_eq_apply](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/tocontinuousmap-apply-eq-apply.md) | 175 | `result-track:508c713d6b69594c49a8e69e8e7e6745a2a2eb5f2219eb0b27af327ebe005437` |
| 14 | `lemma` | [apply_of_zero](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/apply-of-zero.md) | 179 | `result-track:e3c759f6acc2ad81938c892055d099f7ef1cfccfa2e4857d63ad393162ebdeaa` |
| 15 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/instance-source-edition-4.md) | 185 | `declaration-track:d2605e834a6d41516ba0ce0f148ea2d7373e75cba265ea0e39de0d5aa66a983b` |
| 16 | `lemma` | [isUniformInducing_toContinuousMap](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/isuniforminducing-tocontinuousmap.md) | 188 | `result-track:f2a451ffb80b6acaa91f4417f6fa374654315c022ed7b95de2306f21a66bf38e` |
| 17 | `lemma` | [range_toContinuousMap](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/range-tocontinuousmap.md) | 191 | `result-track:6334f5f468e1c5667f57af95ba09e6a7fdb947fb6622949aadefc95abe6ffd0b` |
| 18 | `instance` | [(anonymous)](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/instance-source-edition-2.md) | 202 | `declaration-track:9a463eead9945b30487d366812273952389f09e4d1eb3b004059141458d19873` |
| 19 | `def` | [compProj](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/compproj.md) | 212 | `declaration-track:dfb087563cad8cc46b766380f4905bffde8bdf94458a0b4ebd9d766804f1799a` |
| 20 | `lemma` | [compProj_apply](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/compproj-apply.md) | 216 | `result-track:b1942cf6d1557df64a46684910b77488757996eb2099474d06f1200ceb73a2f5` |
| 21 | `lemma` | [compProj_val](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/compproj-val.md) | 219 | `result-track:bea0e2177e2ccf7969eca91bd718923fbba38ff59356ff2a9a11d2d60e82d1fa` |
| 22 | `lemma` | [compProj_of_mem](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/compproj-of-mem.md) | 222 | `result-track:c36343bdbf69b4f4239fe55c6480b83b85d9f7dd5bf2e13da1b1c5382df9687f` |
| 23 | `lemma` | [continuous_compProj](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/continuous-compproj.md) | 226 | `result-track:9bc776b3b138dcafc5bfa6a15fddbe0ab3a468008046dfc7dfa429b09f14c6c9` |
| 24 | `lemma` | [mem_closedBall](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/mem-closedball.md) | 230 | `result-track:82a2b44dcdc40cdf34659cc117ef7f88312a5fbb517af41119baaabe82d780d3` |
| 25 | `lemma` | [compProj_mem_closedBall](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/compproj-mem-closedball.md) | 246 | `result-track:77ceaadd6877ae743f9cf316944bc7cde49390274650c12f12c43c4ba3777c0a` |
| 26 | `lemma` | [continuousOn_comp_compProj](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/continuouson-comp-compproj.md) | 261 | `result-track:75ad9825c85a11de52c306fcff70065462807134f74409b1cea3651fcae442cb` |
| 27 | `lemma` | [intervalIntegrable_comp_compProj](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/intervalintegrable-comp-compproj.md) | 270 | `result-track:7d7423affdba011cf45e7c6981b5e7a139fe2b7d02eaac33984920eced683c9d` |
| 28 | `def` | [next](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/next.md) | 279 | `declaration-track:7d459d051e51a85551224ca212f215f215499f6feb16603fb14abd1b925c0345` |
| 29 | `lemma` | [next_apply](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/next-apply-source-edition-2.md) | 294 | `result-track:ed77aea46357c8ed82bf7b5926e1b7be957e3bae1b05f59175c30e6939415713` |
| 30 | `lemma` | [next_apply₀](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/next-apply.md) | 298 | `result-track:53f7dc6a53ae5318151527f2f115b1763abe5af5d4da9ee39968fde49042e877` |
| 31 | `lemma` | [isFixedPt_next_iff](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/isfixedpt-next-iff.md) | 303 | `result-track:4aa94c78cebc9e492074760f086e0cc1a0dc5b5e103e5c4c280a5abceeb02d14` |
| 32 | `lemma` | [dist_comp_iterate_next_le](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/dist-comp-iterate-next-le.md) | 313 | `result-track:19a9b86afa76ee1c024558041541088741b9036f3a191c4de83803dcc1858617` |
| 33 | `lemma` | [dist_iterate_next_apply_le](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/dist-iterate-next-apply-le.md) | 330 | `result-track:596d32ddc18b41d99a053a16462edfff3714bf9a996240647d9bda095561885c` |
| 34 | `lemma` | [dist_iterate_next_iterate_next_le](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/dist-iterate-next-iterate-next-le.md) | 364 | `result-track:1e02c35ec01322436c648e613e66478611fee00385a95262104f38091fcf2f25` |
| 35 | `lemma` | [exists_contractingWith_iterate_next](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/exists-contractingwith-iterate-next.md) | 379 | `result-track:5e743a5e2f680e92e19b22fc0ed41510d5c3defd805ff42d1f3770a23a6ebef8` |
| 36 | `lemma` | [exists_isFixedPt_next](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/exists-isfixedpt-next.md) | 392 | `result-track:6ddda23b16fac37b8bfda90871c6c61d79f18ac0d684be03832930e136479693` |
| 37 | `lemma` | [dist_next_next](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/dist-next-next.md) | 407 | `result-track:7124b81fb2ff2586bf82fe04e9ff7d8f19ee5b255919132513ccc3b5f6605ac2` |
| 38 | `lemma` | [dist_iterate_next_le](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/dist-iterate-next-le.md) | 415 | `result-track:5ae0cbbfc8e17a30d090a55c620fb5611830102e170577d7f64bdf11d30cfc4d` |
| 39 | `lemma` | [dist_iterate_iterate_next_le_of_lipschitzWith](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/dist-iterate-iterate-next-le-of-lipschitzwith.md) | 427 | `result-track:114246c03e5470e9cb89bdab4082db8f25f0abfb5d3f6e41a5998421842a5b58` |
| 40 | `lemma` | [exists_forall_closedBall_funSpace_dist_le_mul](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/exists-forall-closedball-funspace-dist-le-mul.md) | 447 | `result-track:4dff61728cccb55d4b775d72ac9aa00aa19889273dfc6a8eaeed445a8c9a5769` |
| 41 | `lemma` | [hasDerivWithinAt_picard_Icc](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/hasderivwithinat-picard-icc.md) | 484 | `result-track:7be939dcf3bc9d9627b6be849859bdd379ecc212ac039687e15ceba9cea87a3e` |
| 42 | `lemma` | [picard_eq_of_hasDerivAt](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/picard-eq-of-hasderivat.md) | 502 | `result-track:13fbe9b3092c3f46d11fcb089bf3af6e7be46ad7a3abb1f97caa423d3483a619` |
| 43 | `lemma` | [contDiffOn_nat_picard_Icc](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/contdiffon-nat-picard-icc.md) | 516 | `result-track:ee4eb27f140c093a34c7d8e0f1ddf4592b2cd75af8b6de50d0f76ddf4947d070` |
| 44 | `lemma` | [contDiffOn_enat_picard_Icc](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/contdiffon-enat-picard-icc.md) | 546 | `result-track:ce2e3db610a541d0d20be01d4ea60d8e395d8ce6118b54a7e570956bfb840ecf` |
| 45 | `theorem` | [contDiffOn_enat_Icc_of_hasDerivWithinAt](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/contdiffon-enat-icc-of-hasderivwithinat.md) | 560 | `result-track:52024ee01b1b7434ea2a13d30c901dfe17e744c66a1a15bef052ee13606b64ff` |
| 46 | `lemma` | [continuousOn_uncurry](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/continuouson-uncurry.md) | 601 | `result-track:69d1f22b51e861ff98a7c526400187122714b7647604f785da42f1b5430d3ee3` |
| 47 | `lemma` | [shrink](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/shrink.md) | 608 | `result-track:840466e9e5f2476454e4aead1f2cc8a93733918e70db19d278d1ef1c8d2934c7` |
| 48 | `lemma` | [shrink_time](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/shrink-time.md) | 623 | `result-track:8f55a55beb1b4fe87e3022aec5cc7cbd4c07c8df9520b2203fb2a0bec5662973` |
| 49 | `lemma` | [weaken_lipschitz](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/weaken-lipschitz.md) | 633 | `result-track:b3bc429313750e7565f09b6cc2d3c6aeaff7707e37dee32365604800c79ad03d` |
| 50 | `lemma` | [exists_shrink_radius](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/exists-shrink-radius.md) | 643 | `result-track:bccb44f5b561c7f65de1107212f73d87f285ba80a1e4d0ee0146fab5a55104b0` |
| 51 | `lemma` | [of_time_independent](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/of-time-independent.md) | 662 | `result-track:e53d797c112644d22564e1607bce8158652bca382550254f24b0cb6204d84f5c` |
| 52 | `lemma` | [of_contDiffAt_one](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/of-contdiffat-one.md) | 675 | `result-track:569fa07fe0ab7b7c97562556cbabdbcd54df0a3fe92e8082729c9d13984813f2` |
| 53 | `theorem` | [exists_eq_forall_mem_Icc_eq_picard](../../../../OrdinaryDifferentialEquations/PicardLindelofPublic.lean/declarations/exists-eq-forall-mem-icc-eq-picard.md) | 720 | `result-track:0caeee1c35386ddfb960eaf4b46c6fd62b8fd70b92f976aebadf7f9f9d50a661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3dc49de0a210536d13352c9f706147dc6eabbb60fea88770ce4cc0ed5feb591 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
