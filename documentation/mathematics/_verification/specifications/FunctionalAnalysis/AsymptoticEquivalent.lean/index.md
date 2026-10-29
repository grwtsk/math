# Verification target: Asymptotic Equivalent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ff7be3e2c3db84dab2e81f51fabbd799566260b",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ff7be3e2c3db84dab2e81f51fabbd799566260b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent.md) | 70 | `declaration-track:36e984578cbc96526bdfe6dc1bd51ad942ac099ebe75dcaac778adb471a3f7de` |
| 2 | `theorem` | [IsEquivalent.isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-islittleo.md) | 77 | `result-track:8767d45878f70422c0bfc84d6da3fa48383ddd145a15dc6348d2f6f52ee5bee1` |
| 3 | `theorem` | [IsEquivalent.isBigO](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-isbigo.md) | 79 | `result-track:7918a128954bf06b9d3fb60ff38676ef3a75fb99f4158ff4f8c51e2b32d46c83` |
| 4 | `theorem` | [IsEquivalent.isBigO_symm](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-isbigo-symm.md) | 82 | `result-track:2c1668080f1d6646c611aa55943cd32017697f7fce346bb3c0606aaef49d8e53` |
| 5 | `theorem` | [IsEquivalent.isTheta](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-istheta.md) | 86 | `result-track:af54668d53ded9048eacdc087d938279af473d4b007f29c8670953b6efc5133c` |
| 6 | `theorem` | [IsEquivalent.isTheta_symm](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-istheta-symm.md) | 89 | `result-track:e8b1512dbfdb2d04d7cff7d6837a6213ad586f622c809fac1986e314f598340a` |
| 7 | `theorem` | [IsEquivalent.refl](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-refl.md) | 93 | `result-track:cba31128389bf56fcffd19df62193ce6526b5c42960fe498c724279625ecb787` |
| 8 | `theorem` | [IsEquivalent.symm](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-symm.md) | 98 | `result-track:da788e8e59299de6d3b71c3db559f6b9a510f9f1e27b6c5fa7c94fcb493d59fe` |
| 9 | `theorem` | [IsEquivalent.trans](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-trans.md) | 102 | `result-track:250dfaa4290a90cea3ab2337898e1fd1b9e0c148d4e25dc4bf0806eae9aa8015` |
| 10 | `theorem` | [IsEquivalent.congr_left](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-congr-left.md) | 106 | `result-track:55b0c9da8850a7987f576dfb0bcf211d23b8370b5bbbc0a5c380413ec83d0e72` |
| 11 | `theorem` | [IsEquivalent.congr_right](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-congr-right.md) | 110 | `result-track:3595b4783018857b85e90694478b92fd2b7fd581363234d31afd5458f2156b1f` |
| 12 | `theorem` | [isEquivalent_zero_iff_eventually_zero](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-zero-iff-eventually-zero.md) | 114 | `result-track:cdf70288f545b22a05e99fd46bb830407c689439352d7b9931c0daa3ee84dbaa` |
| 13 | `theorem` | [isEquivalent_zero_iff_isBigO_zero](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-zero-iff-isbigo-zero.md) | 118 | `result-track:1fdcf390e3481afc7b79b69bb07e2845c5335f7fc6c135be25fe664db10837bd` |
| 14 | `theorem` | [isEquivalent_const_iff_tendsto](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-const-iff-tendsto.md) | 123 | `result-track:6fd3a77f18d02db079ca47b0672a0b5b4f060dee59cc576883fe12464218b5df` |
| 15 | `theorem` | [IsEquivalent.tendsto_const](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-tendsto-const.md) | 133 | `result-track:1fa17a07635a1e95125942bdf37764fc795eda269ef0ae6c8f452d7719c1142b` |
| 16 | `theorem` | [IsEquivalent.tendsto_nhds](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-tendsto-nhds.md) | 138 | `result-track:e4de2c42e6a910bf2685ef96d3ba1d7eb556b3b46f304c0fa1228cab2d2efa36` |
| 17 | `theorem` | [IsEquivalent.tendsto_nhds_iff](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-tendsto-nhds-iff.md) | 147 | `result-track:f30943587721fe623c60bab15b26550bb856d07c9066d1fc883f7a707eb904fa` |
| 18 | `theorem` | [IsEquivalent.add_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-add-islittleo.md) | 151 | `result-track:542a9a6632a0b3b4abd15dabe4c2f319d2f77253dfbc112b4ac3b8c7fa9d64fc` |
| 19 | `theorem` | [IsEquivalent.sub_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-sub-islittleo.md) | 154 | `result-track:ebb3b672a2825ff8f6d646e089e0db8b8f0bacec3f010df12ebc3365a3bf6cd9` |
| 20 | `theorem` | [IsLittleO.add_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/islittleo-add-isequivalent.md) | 157 | `result-track:881b219b32bd934b122f77c8e0e4ca37d02aa11d2d9c4425fb192e4e8f1db1a5` |
| 21 | `theorem` | [IsLittleO.isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/islittleo-isequivalent.md) | 160 | `result-track:ad66d8fb54529dc7d0517510b02db7c15af9afd5932957636e9ef557bb0ea143` |
| 22 | `theorem` | [IsEquivalent.neg](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-neg.md) | 162 | `result-track:dc29d7cfa2c7d129a92951929369ccd532896756997e37bcd0cc437239718964` |
| 23 | `theorem` | [isEquivalent_iff_exists_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-iff-exists-eq-mul.md) | 175 | `result-track:1224747c52f4921309fbf553f199e1da16e607ec61310eeeee1f4565c59c8da6` |
| 24 | `theorem` | [IsEquivalent.exists_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-exists-eq-mul.md) | 186 | `result-track:d202d6ee3619f2b8e4a39a0268cfc022e0af2c435cf5c65a4e670bc04694b103` |
| 25 | `theorem` | [isEquivalent_of_tendsto_one](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-of-tendsto-one.md) | 190 | `result-track:5f3d8e72117872f520db2ce1dcf4982f0a53ceae8d388348394831a03cc0e112` |
| 26 | `theorem` | [isEquivalent_of_tendsto_one'](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-of-tendsto-one-source-edition-2.md) | 195 | `result-track:a70203b0897b394fd0a3d3c360d67d36dbb2f5ff170a4feb635e94ea84c77795` |
| 27 | `theorem` | [isEquivalent_iff_tendsto_one](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-iff-tendsto-one.md) | 199 | `result-track:28f42f3a390a199267ecda1e17a4c7ef48feb67a227904efd063671fb2b627ed` |
| 28 | `theorem` | [IsEquivalent.smul](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-smul.md) | 216 | `result-track:e7c92e6970b7812eddfc740f9f713b69a4ef42be949ec7110a14c6c456d73ce0` |
| 29 | `theorem` | [IsEquivalent.mul](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-mul.md) | 257 | `result-track:ec87b53f8aad3ae22c59e366a7ef59a504f80c5a16336b9dfd07c46945ed838e` |
| 30 | `theorem` | [IsEquivalent.listProd](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-listprod.md) | 260 | `result-track:6f0ee7ec373abfa6d87048adf1cb39825c73ec16f19b0d1422bba591b6a5444d` |
| 31 | `theorem` | [IsEquivalent.multisetProd](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-multisetprod.md) | 268 | `result-track:0a6e279c6220b1f1518c39bce039adbc41cbd4978e358bcb4b0db97cada3c664` |
| 32 | `theorem` | [IsEquivalent.finsetProd](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-finsetprod.md) | 273 | `result-track:b4e66e991cb66fd98eb0f2fc4ae56ee55b6751f724dbfb28fa8aa77a67e353eb` |
| 33 | `theorem` | [IsEquivalent.inv](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-inv.md) | 277 | `result-track:a6944194027b2120d1fa0418a72fd509f0b9182d24c4458efee6b9e534f7ee96` |
| 34 | `theorem` | [IsEquivalent.div](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-div.md) | 285 | `result-track:1283d1925353c70a74762a407217d284b36bd96b18b73324533c7340da3c2cb8` |
| 35 | `theorem` | [IsEquivalent.pow](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-pow.md) | 289 | `result-track:098c50c99dd68cfd71afd7a0fd5ea5500c14ea555dd7c41f77f0d5b7bdb02582` |
| 36 | `theorem` | [IsEquivalent.zpow](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-zpow.md) | 294 | `result-track:7abdf9178263592d13745909b50b046f58441e7721ca3ad3c08df0ebf5613404` |
| 37 | `theorem` | [IsEquivalent.tendsto_atTop](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-tendsto-attop.md) | 306 | `result-track:7f42a2bf7460799234f6754fcc5d1a11029f25a2e137544007ac40a20b8c9f9e` |
| 38 | `theorem` | [IsEquivalent.tendsto_atTop_iff](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-tendsto-attop-iff.md) | 311 | `result-track:49012eace57e63996e5f1b9b9891b2df67d9648348b0401595ef0e2bc2115671` |
| 39 | `theorem` | [IsEquivalent.tendsto_atBot](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-tendsto-atbot.md) | 315 | `result-track:536ecf25cec444ca257ef90cd3095cd1f34afffa0dfc87ce4a9d41f473f0c43e` |
| 40 | `theorem` | [IsEquivalent.tendsto_atBot_iff](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-tendsto-atbot-iff.md) | 321 | `result-track:8414abc5741afe48b3657738f726234fae5de27ed8a40d75f8e878e45a540920` |
| 41 | `theorem` | [Filter.EventuallyEq.isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/filter-eventuallyeq-isequivalent.md) | 335 | `result-track:97f67921ade1890a68229f7120435763d3d97d8739fa4fafe9a1c3a2b966f4c3` |
| 42 | `theorem` | [Filter.EventuallyEq.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/filter-eventuallyeq-trans-isequivalent.md) | 339 | `result-track:1bcc8e442b337b68ae26f76552703e7395a11b81fe3fbeafe6b39f9125e4b2c3` |
| 43 | `instance` | [transIsEquivalentIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transisequivalentisequivalent.md) | 345 | `declaration-track:402379a786ce1019de8ec222357cd4a273589785367efc3240bb624afdaac6db` |
| 44 | `instance` | [transEventuallyEqIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transeventuallyeqisequivalent.md) | 349 | `declaration-track:9827268315222c26484378635aeea0216872fe6933b9193bbbcdcfe3443e580f` |
| 45 | `theorem` | [IsEquivalent.trans_eventuallyEq](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-trans-eventuallyeq.md) | 354 | `result-track:c5971beb387f939b95dbeabd37db6cecc3e245f034a1f2d18fd83f7b2a8d15a5` |
| 46 | `instance` | [transIsEquivalentEventuallyEq](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transisequivalenteventuallyeq.md) | 358 | `declaration-track:038e74ea235f05ffb0d131f6cb7e950cadf57e2b211bde311448561c043489c1` |
| 47 | `theorem` | [IsEquivalent.trans_isBigO](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-trans-isbigo.md) | 363 | `result-track:e391a7e9793a32e5bc1649d9c5d49ed8e21c6ac3e167118b7f896efb9323a299` |
| 48 | `instance` | [transIsEquivalentIsBigO](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transisequivalentisbigo.md) | 367 | `declaration-track:64f71a379e4835b53038ad4051402b4e6d3dadb6f31401ff9a408c9f2ad290ae` |
| 49 | `theorem` | [IsBigO.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isbigo-trans-isequivalent.md) | 372 | `result-track:4efd0f431c66afa86ddb523768391d6b900e028706d4052adf1e01c1a516a197` |
| 50 | `instance` | [transIsBigOIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transisbigoisequivalent.md) | 376 | `declaration-track:573dbe8ccb247c57c0260d3279c39769053935bbe1495eaa744510f2907bec31` |
| 51 | `theorem` | [IsEquivalent.trans_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-trans-islittleo.md) | 381 | `result-track:51db8f8360a5926edf6efe301ea6b8ff6eab12e39a0ce951d19aa5c193ad6807` |
| 52 | `instance` | [transIsEquivalentIsLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transisequivalentislittleo.md) | 385 | `declaration-track:2530882cd000d3e667110efd07f0eb0673cbe32223400989f62de0f942f95cf4` |
| 53 | `theorem` | [IsLittleO.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/islittleo-trans-isequivalent.md) | 390 | `result-track:bb8baff531feda2cd40fd00f45f08ba5ee351c21585d894c53daab811cd56a9f` |
| 54 | `instance` | [transIsLittleOIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transislittleoisequivalent.md) | 394 | `declaration-track:9846547768ed25850e84e1f5720d9f47c2b8a97fa325ca84196d0775725d4f51` |
| 55 | `theorem` | [IsEquivalent.trans_isTheta](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/isequivalent-trans-istheta.md) | 399 | `result-track:d5988369e07a1ac41a482dfb69cf3fbf32785955ac787cd8c48522d4c34106ef` |
| 56 | `instance` | [transIsEquivalentIsTheta](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transisequivalentistheta.md) | 403 | `declaration-track:d35a5fed49c2da73388c922331ab8d6419c5c2f42f41fe5b81f32f9bc226c58b` |
| 57 | `theorem` | [IsTheta.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/istheta-trans-isequivalent.md) | 408 | `result-track:56423a1a3db5f96a2cb2646a342cebdeaae37a1cab53a70b9906f582dc4c1d60` |
| 58 | `instance` | [transIsThetaIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalent.lean/declarations/transisthetaisequivalent.md) | 412 | `declaration-track:83c0ec999dd1a4f3fbbef398c21a6322dac40c1c3a314650457f2396bacf0ad0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d20ac509baf1bf8a02d45566cdfe3c264d0c2f36fc1d9b3cd8790e9216d28d6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
