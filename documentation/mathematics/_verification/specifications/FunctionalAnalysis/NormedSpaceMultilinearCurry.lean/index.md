# Verification target: Normed Space Multilinear Curry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffa2874e81ead4265410d862f7fa58d1d94fb895",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffa2874e81ead4265410d862f7fa58d1d94fb895`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Curry` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.norm_map_removeNth_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-norm-map-removenth-le.md) | 59 | `result-track:aa382cefb7e1f2cf047a8fe884371c7c1b929f09467b6d67b20e3f674835375d` |
| 2 | `theorem` | [ContinuousLinearMap.norm_map_tail_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-norm-map-tail-le.md) | 65 | `result-track:432333ac36376d271cd39a9991601d452feb5b0579cd4eba73f5f8bc569aed67` |
| 3 | `theorem` | [ContinuousMultilinearMap.norm_map_init_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-norm-map-init-le.md) | 70 | `result-track:aab68bc4b5cb53c971271ae9a58e4d61cd0013b38a1cdb91f9436e585bffacfe` |
| 4 | `theorem` | [ContinuousMultilinearMap.norm_map_insertNth_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-norm-map-insertnth-le.md) | 76 | `result-track:6f4a6a02bd006070fbbd3a9fb98d23ffa1c2331a4aaad3c748c6540f13085c0d` |
| 5 | `theorem` | [ContinuousMultilinearMap.norm_map_cons_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-norm-map-cons-le.md) | 81 | `result-track:a9799c0e5fa0208e78fe035ce11b84b15a3d7d0c0b1e528884bf04cce06bae85` |
| 6 | `theorem` | [ContinuousMultilinearMap.norm_map_snoc_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-norm-map-snoc-le.md) | 85 | `result-track:8100a1596074ffbf1c402d0f89ecbbd7fdcee80067fa13e7349db4bf6d85d3e2` |
| 7 | `def` | [ContinuousLinearMap.uncurryLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-uncurryleft.md) | 96 | `declaration-track:012ccbba6da41f118d0fc9f5c9796a64cd6c273ca47b65e502d97e4b78f86ee5` |
| 8 | `theorem` | [ContinuousLinearMap.uncurryLeft_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-uncurryleft-apply.md) | 103 | `result-track:a0d5a2ba30da04f16795d25a594a33bd494b4b0d7cf342727e995d51e827fa04` |
| 9 | `def` | [ContinuousMultilinearMap.curryLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curryleft.md) | 111 | `declaration-track:46051d7ce1bc4bc507024601e670ef83e3ce630833a3d8a212d00500188cb64c` |
| 10 | `theorem` | [ContinuousMultilinearMap.curryLeft_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curryleft-apply.md) | 116 | `result-track:718f775e4ec17842535231b83707899dc3e2ed542e04775c90bb69254c15c9dc` |
| 11 | `theorem` | [ContinuousLinearMap.curry_uncurryLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-curry-uncurryleft.md) | 121 | `result-track:89b479a273eabe8c73cbb753805c643d2b62f7b4116346ef4e27e2ce5880487e` |
| 12 | `theorem` | [ContinuousMultilinearMap.uncurry_curryLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurry-curryleft.md) | 129 | `result-track:a782435dc3548ad6791a015bbdcae18f8d0652d1a81743097f22e5263acc06bb` |
| 13 | `def` | [continuousMultilinearCurryLeftEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryleftequiv.md) | 143 | `declaration-track:db7d184f026bd38023b4b57ed7d24aef4c1e5c418dbd9869193bbc9bccf6a884` |
| 14 | `theorem` | [continuousMultilinearCurryLeftEquiv_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryleftequiv-apply.md) | 161 | `result-track:0dba886b343324dcfd91342b9422b0a65f64d2442939b822675a3ab8cd3729f0` |
| 15 | `theorem` | [continuousMultilinearCurryLeftEquiv_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryleftequiv-symm-apply.md) | 167 | `result-track:d4f003da72bc5ed3ffb314aae2209805ac3e37bf2b6da352a232282b636b57d7` |
| 16 | `theorem` | [ContinuousMultilinearMap.curryLeft_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curryleft-norm.md) | 173 | `result-track:50f5c01a88956d0fd51fed526e38310947f0e625759c157a5dbc04a01464c2e2` |
| 17 | `theorem` | [ContinuousLinearMap.uncurryLeft_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-uncurryleft-norm.md) | 178 | `result-track:007da4d47813fbb2e2c3896e55b57ffad66d074e75169b836368e82c38053732` |
| 18 | `def` | [ContinuousMultilinearMap.uncurryRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurryright.md) | 189 | `declaration-track:c199610abef0b34685f022b0b825b743265d62006fe25799556c8393f2ef249a` |
| 19 | `theorem` | [ContinuousMultilinearMap.uncurryRight_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurryright-apply.md) | 197 | `result-track:ea89993fcf168fb21179953fea7fa9c550454f151e9852146fe607a9bdc1f373` |
| 20 | `def` | [ContinuousMultilinearMap.curryRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curryright.md) | 205 | `declaration-track:2c66fcff662385febbb8a61dd1076247a92c10606bf01488a5a2f9261cfd907c` |
| 21 | `theorem` | [ContinuousMultilinearMap.curryRight_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curryright-apply.md) | 222 | `result-track:2b35344c3b642a98b48c41300eb399958f8f619860632f206dfd87d91426be80` |
| 22 | `theorem` | [ContinuousMultilinearMap.curry_uncurryRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curry-uncurryright.md) | 227 | `result-track:12a05c10dd457104293367ce564dbe2fd111bada7e6fb8d4e3c4d20eb286c72f` |
| 23 | `theorem` | [ContinuousMultilinearMap.uncurry_curryRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurry-curryright.md) | 235 | `result-track:54727254c81c5722be34d0415d0d1c16c8cbfeb78f97b45a87a04a309d0be8a8` |
| 24 | `def` | [continuousMultilinearCurryRightEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryrightequiv-source-edition-2.md) | 252 | `declaration-track:cb46cca739b9c4388dd9489b814cea51468ae410064b6f7260f0002b42cd2ae5` |
| 25 | `def` | [continuousMultilinearCurryRightEquiv'](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryrightequiv.md) | 280 | `declaration-track:6e99545f6ee481ba020e763dc0a10e5cc670cdf9511f95b61a9222896abd297c` |
| 26 | `theorem` | [continuousMultilinearCurryRightEquiv_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryrightequiv-apply.md) | 286 | `result-track:c781938bc55a61e5220959216240fe47052c33bd84565c9223e2794eabcc1e3c` |
| 27 | `theorem` | [continuousMultilinearCurryRightEquiv_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryrightequiv-symm-apply-source-edition-2.md) | 292 | `result-track:bd54a0a1c4f504c37a8a374f10ee7322eeaa0f64bb416928c76ed6e27ebbae67` |
| 28 | `theorem` | [continuousMultilinearCurryRightEquiv_apply'](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryrightequiv-apply-source-edition-2.md) | 299 | `result-track:dd2d052d6c2fb7bb702e43da4c816f91b4cdca0dd4639d5d6c8b7ec486ec499c` |
| 29 | `theorem` | [continuousMultilinearCurryRightEquiv_symm_apply'](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryrightequiv-symm-apply.md) | 305 | `result-track:97ba368711f6e8e05bb171355bde2d7ba09350fc892c2df5509ebfa09fd94e91` |
| 30 | `theorem` | [ContinuousMultilinearMap.curryRight_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curryright-norm.md) | 311 | `result-track:d4494593421460bf6fe08543ced6c569a8c994006cf8e795841d62ef150b8caa` |
| 31 | `theorem` | [ContinuousMultilinearMap.uncurryRight_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurryright-norm.md) | 316 | `result-track:1609a245808f7cf545a8b3d8d8538b2372491a5fba3581a8a3817ba5f2d44b1a` |
| 32 | `def` | [ContinuousLinearMap.uncurryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-uncurrymid.md) | 329 | `declaration-track:360657d1ce3ff51f55d9290313c7d042c95d1c0a161afb5afb0fc85434278793` |
| 33 | `def` | [ContinuousMultilinearMap.curryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-currymid.md) | 338 | `declaration-track:b059bd91d5ab4c03e97e0f1fea1a9815dd1e05495b9e5fd5b2eb4739b78c8071` |
| 34 | `theorem` | [ContinuousMultilinearMap.curryMid_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-currymid-apply.md) | 343 | `result-track:5fa0793ac6b835cd403604305ef90a5e288c4153b25dcb2bd654f99e9f8174d0` |
| 35 | `theorem` | [ContinuousLinearMap.curryMid_uncurryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-currymid-uncurrymid.md) | 349 | `result-track:17a51855a252e3d8118b3d58f11a2ec2447d24b57b3193118792ffaae4d24029` |
| 36 | `theorem` | [ContinuousMultilinearMap.uncurryMid_curryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurrymid-currymid.md) | 354 | `result-track:719ac8c98c06e79b3e7fa85f4d491cd927d27b9ca622e791a8f2231be2e9ddbb` |
| 37 | `def` | [ContinuousMultilinearMap.curryMidEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-currymidequiv.md) | 362 | `declaration-track:4bd8488a2e97cfd67357aa7a5ed81149a87af936b483c95468cfd2b795470cba` |
| 38 | `theorem` | [ContinuousMultilinearMap.norm_curryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-norm-currymid.md) | 380 | `result-track:e0aaaa859e8cc985deb63f2656bec714838f2631e6942b3e0eeb128c15961255` |
| 39 | `theorem` | [ContinuousLinearMap.norm_uncurryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuouslinearmap-norm-uncurrymid.md) | 385 | `result-track:5579670fc47a465fc8420587a3ab3a0a4a87f40cf81721afb21e66c3f8d1df13` |
| 40 | `def` | [ContinuousMultilinearMap.curry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curry0.md) | 403 | `declaration-track:5624e8cef27bfdb477d4b8beec71668aa9bb10591aab5b3346e5ac27e5c6f2a1` |
| 41 | `def` | [ContinuousMultilinearMap.uncurry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurry0.md) | 410 | `declaration-track:06e720ee33e5f382529efa8f0ec3f66d253049d2a6228f4bcc928e24b779a7bf` |
| 42 | `theorem` | [ContinuousMultilinearMap.uncurry0_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurry0-apply.md) | 415 | `result-track:279d1e7a43fb1a47c9784f4dbc6b22358a3906d781b5861d7be6c5523e567eb4` |
| 43 | `theorem` | [ContinuousMultilinearMap.curry0_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curry0-apply.md) | 420 | `result-track:233cc3f8bdfc7ba33d61c609e458db736119ec3341398da339278e0befaacb4b` |
| 44 | `theorem` | [ContinuousMultilinearMap.apply_zero_uncurry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-apply-zero-uncurry0.md) | 424 | `result-track:4aa9c3e394e91b9c1919eb73062c56ab6dbbd6d3acc8167fbf79f79881aab0e0` |
| 45 | `theorem` | [ContinuousMultilinearMap.uncurry0_curry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurry0-curry0.md) | 429 | `result-track:be71bb082d1bf36f2126a04ac5e38cf4a09cda48ca8daec2e8256c5753656214` |
| 46 | `theorem` | [ContinuousMultilinearMap.curry0_uncurry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curry0-uncurry0.md) | 433 | `result-track:82495bab560eb620e68079f9cc0f2b9d6d0d8305758413d1f5e58f9e38bb37a8` |
| 47 | `theorem` | [ContinuousMultilinearMap.uncurry0_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-uncurry0-norm.md) | 439 | `result-track:2031e37aeb6d352314c138dacb2ab2c0ba721ad9ea510f6fcd81ddcbfc9e06ad` |
| 48 | `theorem` | [ContinuousMultilinearMap.fin0_apply_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-fin0-apply-norm.md) | 444 | `result-track:19c5cf2f1130d2460fa706dec843ae614030c259047bd69cff0e9913378dbf33` |
| 49 | `theorem` | [ContinuousMultilinearMap.curry0_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmap-curry0-norm.md) | 453 | `result-track:b193fa804f21d66949ea3d28908051f9f9e47bcd94fe56c564a24e689ad70424` |
| 50 | `def` | [continuousMultilinearCurryFin0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryfin0.md) | 462 | `declaration-track:fbbd8e48339984e6c870c95a55e8b85e38f684db2443b4942f565508214efc53` |
| 51 | `theorem` | [continuousMultilinearCurryFin0_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryfin0-apply.md) | 474 | `result-track:1405b197a98d1075fb858f9f03c065cf31e8fe1f47c1aa69b86f5ed1550eedef` |
| 52 | `theorem` | [continuousMultilinearCurryFin0_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryfin0-symm-apply.md) | 479 | `result-track:909f6a493593c27b892c3f10bb5889bcc6f9bb0737c8e43e39da3038f72f1139` |
| 53 | `def` | [continuousMultilinearCurryFin1](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryfin1.md) | 492 | `declaration-track:eeb1172aa5a61ded76b87616ec60018a7d2eb945aab223dd44cfc7229cddef98` |
| 54 | `theorem` | [continuousMultilinearCurryFin1_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryfin1-apply.md) | 499 | `result-track:127c95534a45ce982c890a936046d7ec49440a04c5b544b6d73f872b6967f48b` |
| 55 | `theorem` | [continuousMultilinearCurryFin1_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearcurryfin1-symm-apply.md) | 504 | `result-track:508b542365dfd79a6c85cdd2d45fa2e0015a3d505d56180faa52a4babb99f090` |
| 56 | `theorem` | [norm_domDomCongr](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/norm-domdomcongr.md) | 513 | `result-track:780087daa6d5091ebd3b83cc006e62e93265b293223af3a2d226bcad06589570` |
| 57 | `def` | [domDomCongrₗᵢ](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/domdomcongr.md) | 521 | `declaration-track:f6a5e2e55c029dc4cb597c2abcd9bedaae3c197f1dc29ba5ab13f27a9392af45` |
| 58 | `def` | [currySum](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/currysum.md) | 536 | `declaration-track:1bc9daec3c12a04483dbdfe62afdb953201388901e3e94505f69cf974e564e10` |
| 59 | `theorem` | [currySum_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/currysum-apply.md) | 542 | `result-track:d21f362730b44c3fbd5495c534706c09fc0b5414fa9825ebd8bdbcf96041a604` |
| 60 | `def` | [uncurrySum](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/uncurrysum.md) | 549 | `declaration-track:6d963f067bc0fbaab24557bda0b8b5426ed59194b9fd40f4c9b99e2b30f0a4ff` |
| 61 | `theorem` | [uncurrySum_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/uncurrysum-apply.md) | 558 | `result-track:8c78f0a6d7efc916c535e83cad1f75c32bd49d101adbfeec4da71a88fc59559e` |
| 62 | `def` | [currySumEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/currysumequiv.md) | 572 | `declaration-track:83181b01091344487acd5849a5f466cf26a7f8d90ef2fd44195c66cb5fa91ab0` |
| 63 | `def` | [curryFinFinset](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/curryfinfinset.md) | 603 | `declaration-track:859a714b90d65a55f5b9267cee67f1afd7d572628f03e7202a8aef7283df5cb3` |
| 64 | `theorem` | [curryFinFinset_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/curryfinfinset-apply.md) | 611 | `result-track:9e81baa2c267be07962b7d994f0be38c7f34ae6b6262fc9ac7b194d1c1bf6129` |
| 65 | `theorem` | [curryFinFinset_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/curryfinfinset-symm-apply.md) | 617 | `result-track:374e01bc472bfd83aaa1519fe1587f29c02e4be774c33765209fc950f07ad380` |
| 66 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/curryfinfinset-symm-apply-piecewise-const.md) | 623 | `result-track:7922dc3d90a7377ce3e4b3defcf040066adf05c501811fd01ce1784e7c75e4a6` |
| 67 | `theorem` | [curryFinFinset_symm_apply_const](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/curryfinfinset-symm-apply-const.md) | 630 | `result-track:5411223ec360c1e4161095400e200151793a8cd73450f073218371bf774ccd47` |
| 68 | `theorem` | [curryFinFinset_apply_const](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/curryfinfinset-apply-const.md) | 635 | `result-track:454528cfd598846acae5eba95cf6f4f50735f7bf5222aa9335249c0ba9d1786a` |
| 69 | `def` | [continuousMultilinearMapOption](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmapoption.md) | 655 | `declaration-track:279f5cbae0a8a6c913aa6a3508ddce030b3a1e2bbefd6d9fe30391e6a7fac314` |
| 70 | `lemma` | [continuousMultilinearMapOption_apply_eq_self](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurry.lean/declarations/continuousmultilinearmapoption-apply-eq-self.md) | 695 | `result-track:1b0a5af9f59494bb51ce262fe93bb77be6c1cdb80f91ce5b7eaff4fa1ec0d363` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90c977b91d6fbab44da819758ba6fd0d9d13db805863adb4d3b5e8ec567110f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
