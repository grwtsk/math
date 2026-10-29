# Verification target: Asymptotic Equivalent Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7af063f85ac5a0b7702308d63f30763c5ad4feed",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7af063f85ac5a0b7702308d63f30763c5ad4feed`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent.md) | 78 | `declaration-track:302237c3f6629389c2fc8a095bac497c83851ff923b398c85ab1588257ada392` |
| 2 | `theorem` | [IsEquivalent.isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-islittleo.md) | 85 | `result-track:eedce509998e9b7d75c83ef7bec2fab4f3d07877a25dca706e985576d1f094fd` |
| 3 | `theorem` | [IsEquivalent.isBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-isbigo.md) | 87 | `result-track:6855f748fdcf06f76ccbccf74d9451a43454557b79ccee61d17ee24e4ee2fcd1` |
| 4 | `theorem` | [IsEquivalent.isBigO_symm](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-isbigo-symm.md) | 90 | `result-track:49b83ffcad6e5ea9dc1de10b3aa12699c1bf24a6a4dbc4fb73cb1631d580647c` |
| 5 | `theorem` | [IsEquivalent.isTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-istheta.md) | 94 | `result-track:bcfc13b40c710035dac77253564a69250cc8d3547faaf77f16adf056db625134` |
| 6 | `theorem` | [IsEquivalent.isTheta_symm](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-istheta-symm.md) | 97 | `result-track:1114f1f150d8f4638725b9b2bc7b799f47e59085f9440358d407cd4122b1ffe1` |
| 7 | `theorem` | [IsEquivalent.refl](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-refl.md) | 101 | `result-track:4d929dfdfc972dcc7024bef2e3b31e57ee01a20a428e07909821ea285a6690f8` |
| 8 | `theorem` | [IsEquivalent.symm](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-symm.md) | 106 | `result-track:13e0540b8885e930f89ef36dcd977a5024fd1255335de495897568a5f63b70e0` |
| 9 | `theorem` | [IsEquivalent.trans](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-trans.md) | 110 | `result-track:7e43fa9511f0eb73afb0779207e7f70ed5b5517504bc89b08898b28cfde2c75d` |
| 10 | `theorem` | [IsEquivalent.congr_left](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-congr-left.md) | 114 | `result-track:9a5408db9b8d5683d6a7e105cda6d8334c58620786456b9d103a1093d4325b79` |
| 11 | `theorem` | [IsEquivalent.congr_right](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-congr-right.md) | 118 | `result-track:bf1539cc506dd0abf5510762a4b1267b35775604899f466d2f0059018d25076b` |
| 12 | `theorem` | [isEquivalent_zero_iff_eventually_zero](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-zero-iff-eventually-zero.md) | 122 | `result-track:fa09e3735018df03eddc46f1a572bea2db38b581989b3f5d9ce18e28594e2585` |
| 13 | `theorem` | [isEquivalent_zero_iff_isBigO_zero](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-zero-iff-isbigo-zero.md) | 126 | `result-track:0f382eaef8895789bb2ab183a89e94cb30f6dc1fb68106b9bc356631d4aff500` |
| 14 | `theorem` | [isEquivalent_const_iff_tendsto](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-const-iff-tendsto.md) | 131 | `result-track:1bb7ab2fea59ec32a208ccc0258b40450e28687d435d2bbb64482117231e6357` |
| 15 | `theorem` | [IsEquivalent.tendsto_const](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-tendsto-const.md) | 141 | `result-track:d4e7129a55c6d6cc85128938b6c4581e82012fcdd855f33412a8191b4feb4746` |
| 16 | `theorem` | [IsEquivalent.tendsto_nhds](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-tendsto-nhds.md) | 146 | `result-track:1f3161525281766ad752ea3acbcb2beb492471d8dc3767aef4eb60e7b1990a80` |
| 17 | `theorem` | [IsEquivalent.tendsto_nhds_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-tendsto-nhds-iff.md) | 155 | `result-track:420adf21386c001942712b4e2726485734b9306994549c5f5b1e1279ce879d45` |
| 18 | `theorem` | [IsEquivalent.add_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-add-islittleo.md) | 159 | `result-track:4f7754a77432a5e801cf921f52132dd24bade9d5ef8f23e732fbc18c69dd7097` |
| 19 | `theorem` | [IsEquivalent.sub_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-sub-islittleo.md) | 162 | `result-track:b8288ac6302c84397c802164b8610b0ee23fc63109d7e749806fac9ac5e7ca66` |
| 20 | `theorem` | [IsLittleO.add_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/islittleo-add-isequivalent.md) | 165 | `result-track:06da4ced6dce19a4bc7c7e9d4ed2443b5cb8b4a19c1eb8dfdbf41eccc97f2061` |
| 21 | `theorem` | [IsLittleO.isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/islittleo-isequivalent.md) | 168 | `result-track:2c04b852639adbb8653255ac0ed62535aaf7e1ea927906c4cad92afa750c3341` |
| 22 | `theorem` | [IsEquivalent.neg](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-neg.md) | 170 | `result-track:85953d03e2fd7a15d365c3a2bc1c0295f4364232557d2321297a4d4337e20c4f` |
| 23 | `theorem` | [isEquivalent_iff_exists_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-iff-exists-eq-mul.md) | 183 | `result-track:9f7e18897dd830c749b273f69982c05c47762c24f2e21d410e1ae5e5a268a123` |
| 24 | `theorem` | [IsEquivalent.exists_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-exists-eq-mul.md) | 194 | `result-track:00b2afb1cc57a1973c9a05f97f74686c7f0373e62f26a92ad23e3faadc8318db` |
| 25 | `theorem` | [isEquivalent_of_tendsto_one](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-of-tendsto-one.md) | 198 | `result-track:412aa3f55ddc7200f31420ebcd3bbdc07620857ffc7e6a4ef8e9566be1207417` |
| 26 | `theorem` | [isEquivalent_of_tendsto_one'](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-of-tendsto-one-source-edition-2.md) | 203 | `result-track:d09dcde3c136ff66efe4bc85e18e42cce1603c2202ab8236496795d848334513` |
| 27 | `theorem` | [isEquivalent_iff_tendsto_one](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-iff-tendsto-one.md) | 207 | `result-track:cd79d41efba889660849973b9c1d751704eb3a0e753efe8a69ecf2f138c8c72f` |
| 28 | `theorem` | [IsEquivalent.smul](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-smul.md) | 224 | `result-track:86d6ed061186e267984a48a4cdca4843cc7a32ff3859bd198d8d55b6025f5c57` |
| 29 | `theorem` | [IsEquivalent.mul](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-mul.md) | 265 | `result-track:b8edbe63e046d6c2442d01169ce676312d80671a132f73facb5b8a5fa1ad1456` |
| 30 | `theorem` | [IsEquivalent.listProd](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-listprod.md) | 268 | `result-track:ee18b23c239892655ffd7760869cee54baba073df83e623a7d5232310381ddc7` |
| 31 | `theorem` | [IsEquivalent.multisetProd](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-multisetprod.md) | 276 | `result-track:3f2f8d22d06185f111c529d3214cd4fec1d59058fd1a6487c93c8cecb2828819` |
| 32 | `theorem` | [IsEquivalent.finsetProd](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-finsetprod.md) | 281 | `result-track:a050328ae7270a07e1d85d397338d0cac2f5f0861e3667b287a29b51a0ba1b03` |
| 33 | `theorem` | [IsEquivalent.inv](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-inv.md) | 285 | `result-track:f65e19ec3e18601640201b2ed094b3c60993158630fd6e029a413b3cf382c9fc` |
| 34 | `theorem` | [IsEquivalent.div](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-div.md) | 293 | `result-track:cf0e73a6b761e0ac7b4d1bbd549d9b5f2eefbee3acc930634dc37202a1a9ddb3` |
| 35 | `theorem` | [IsEquivalent.pow](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-pow.md) | 297 | `result-track:c539ce8c47a07e25184fcbcb6c53a83c71a249aa08ca417e0b43f19a5b3a8a5a` |
| 36 | `theorem` | [IsEquivalent.zpow](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-zpow.md) | 302 | `result-track:5914859ae087750c770c927dea41d2acf2f936931fefd2f4f2a9a9d6deebdfb0` |
| 37 | `theorem` | [IsEquivalent.tendsto_atTop](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-tendsto-attop.md) | 314 | `result-track:a028b10102bff48e905c65bc8d3cdfc5a62791160c39ef278f88a7dc5ecafc0c` |
| 38 | `theorem` | [IsEquivalent.tendsto_atTop_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-tendsto-attop-iff.md) | 319 | `result-track:c8d8e8c93fbaca4769428309b2ab979de79f540bb067266d8eb46eb43b8eed59` |
| 39 | `theorem` | [IsEquivalent.tendsto_atBot](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-tendsto-atbot.md) | 323 | `result-track:b88afb529ed7acfb43d5f5a4345838da872ad7e8720560cdf6c5ecf438581c05` |
| 40 | `theorem` | [IsEquivalent.tendsto_atBot_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-tendsto-atbot-iff.md) | 329 | `result-track:89b32baee9012c61bf633bc6a5a84f0277e53205c33b1a057e87c7c8e8c8be46` |
| 41 | `theorem` | [Filter.EventuallyEq.isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/filter-eventuallyeq-isequivalent.md) | 343 | `result-track:9147b1a51d82e306723636ce1960b1ded1dc46c962cb0e0e4e68737c947a39e8` |
| 42 | `theorem` | [Filter.EventuallyEq.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/filter-eventuallyeq-trans-isequivalent.md) | 347 | `result-track:a8944517e3a2354ef1a47f225ba91001800bde7298eae61be0bccdf95e2564b2` |
| 43 | `instance` | [transIsEquivalentIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transisequivalentisequivalent.md) | 353 | `declaration-track:7c044a66f9e76566eac297d8c163e1037e1c67be171e2e915de015fc25781c53` |
| 44 | `instance` | [transEventuallyEqIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transeventuallyeqisequivalent.md) | 357 | `declaration-track:352cda8591bbc4492e900a2e5eb47ac7aa5a05605511738934e4bea89636a715` |
| 45 | `theorem` | [IsEquivalent.trans_eventuallyEq](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-trans-eventuallyeq.md) | 362 | `result-track:dcde74ab2d379da1630bd618ff1c4abf055d07dc3ee7c2f2695bbf90f9428e36` |
| 46 | `instance` | [transIsEquivalentEventuallyEq](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transisequivalenteventuallyeq.md) | 366 | `declaration-track:424dc5cf7fa7631f7d1bc6fd4407b56fdead0ddd41057b53bcb3c1dd501d8de6` |
| 47 | `theorem` | [IsEquivalent.trans_isBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-trans-isbigo.md) | 371 | `result-track:e72374b919036938f07c9ca660f6bcec1f0245ab825f3e21c10a3e6f8a11815f` |
| 48 | `instance` | [transIsEquivalentIsBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transisequivalentisbigo.md) | 375 | `declaration-track:25767b5ad88e8fb963fad66894609f95bc2d708ccfef6d34fb0e4aa45711f592` |
| 49 | `theorem` | [IsBigO.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isbigo-trans-isequivalent.md) | 380 | `result-track:cd2cd0425a5c4389ab7c58736e33c93075ed609b23e32ea7b2a31488e0d053aa` |
| 50 | `instance` | [transIsBigOIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transisbigoisequivalent.md) | 384 | `declaration-track:04c4f5ff1111201e32f40919f1b7dcf772dec518fdfa382adf7f88658b8c28b3` |
| 51 | `theorem` | [IsEquivalent.trans_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-trans-islittleo.md) | 389 | `result-track:cf8b7b427fdb635a868d0454628768dedc5ec47a06e04af49613eafb62c3862d` |
| 52 | `instance` | [transIsEquivalentIsLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transisequivalentislittleo.md) | 393 | `declaration-track:183f1aa7c569c3cb009d497795b451f605e57a9c9d9352492a12342ff36339ca` |
| 53 | `theorem` | [IsLittleO.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/islittleo-trans-isequivalent.md) | 398 | `result-track:79c9a65ebb0133aef745a32909ba95aa80ba71b181e0175d5af2e3462351f2de` |
| 54 | `instance` | [transIsLittleOIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transislittleoisequivalent.md) | 402 | `declaration-track:dabab98d49c2d8e2a5cefe81bce5c6786e23e6d51edb2b5b85edc088f441e960` |
| 55 | `theorem` | [IsEquivalent.trans_isTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/isequivalent-trans-istheta.md) | 407 | `result-track:7b5f67b935a872b9ded4192a67031da4a711cf436275e1349fa1dce7c1cb55e4` |
| 56 | `instance` | [transIsEquivalentIsTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transisequivalentistheta.md) | 411 | `declaration-track:924f642a7513ece8ba4f1ad9d3fd3325ea56a5c382fbe7e5afa472e14c562e8a` |
| 57 | `theorem` | [IsTheta.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/istheta-trans-isequivalent.md) | 416 | `result-track:3c2e8e842fcd63395bcf26ca3b7de2e315a7bd73645df7155cea344bc8f06fbb` |
| 58 | `instance` | [transIsThetaIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentNamespaced.lean/declarations/transisthetaisequivalent.md) | 420 | `declaration-track:ad02fb040448a12ce5ca7fb857f48a98f988cae8993102a32d4865cdbea10a9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72aa2cf19733661eee2e760aa675f6a83eec803119ee6d24461fde22d0d5e9f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
