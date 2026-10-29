# Verification target: Tactic Ring Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f4e11fa8d49fd9de908d845bdffc55407fc5c49",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f4e11fa8d49fd9de908d845bdffc55407fc5c49`.

Source path: `GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exbase.md) | 89 | `declaration-track:dec4f498471d52d885d3728e2fa14a3dc01ad1ab8add52cf6f69139c281d939b` |
| 2 | `def` | [ExProd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exprod.md) | 91 | `declaration-track:4925f4f21cff575bc64a11bf55885c3a7bd4120ea69b6cb0888fd6ff891ede48` |
| 3 | `def` | [ExSum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exsum.md) | 93 | `declaration-track:c7679568421b5909798b8490c166ab702fa5beea1c6233d94a43a0ac853612b7` |
| 4 | `theorem` | [cast_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/cast-pos.md) | 98 | `result-track:12ba805749ae7eb99825811ed269793f7f8ed8c01de2a9ae329e7cf0c842179e` |
| 5 | `theorem` | [cast_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/cast-zero.md) | 101 | `result-track:7ce6098a468727d4777d620387e7d443c669a962882a50a6818296a40096444d` |
| 6 | `theorem` | [cast_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/cast-neg.md) | 104 | `result-track:7601059b3df761671cd8077337b6410bca2235f6cd05d5dcb118b0064fdd4cf6` |
| 7 | `theorem` | [cast_nnrat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/cast-nnrat.md) | 108 | `result-track:c10f27dbd4aeff538e63386f988f180a618d7a7848fd03d78cde62d7a47640c4` |
| 8 | `theorem` | [cast_rat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/cast-rat.md) | 112 | `result-track:85134cbc5126ae6927fe62725d23b573fe82da8e09da4f8a711c24c5a1491e3c` |
| 9 | `def` | [ExProd.mkNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exprod-mknat.md) | 123 | `declaration-track:bf0c5bc9c2d36da3080b3361b17bd8169028e6fed5df36fd4687528dd18946d0` |
| 10 | `def` | [ExProd.mkNegNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exprod-mknegnat.md) | 131 | `declaration-track:5918deac3ccdd44bbc34d37f9a419cc3ddaf44ff21cf86843f69725fc55e686d` |
| 11 | `def` | [ExProd.mkNNRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exprod-mknnrat.md) | 140 | `declaration-track:9743ae50043a1d036f9cf1116fc9445665c0641bca5a44ac64207bfdf6f5c25a` |
| 12 | `def` | [ExProd.mkNegNNRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exprod-mknegnnrat.md) | 149 | `declaration-track:a001cce4416217ac89c979f67611b8500275577534eac976663a2860777e9248` |
| 13 | `def` | [evalCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/evalcast.md) | 162 | `declaration-track:d90e9eb23568a3493ab3f2a243dd8cb7a5f2291299033daf2aaa579e372cdff4` |
| 14 | `theorem` | [natCast_nat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/natcast-nat.md) | 188 | `result-track:c3d0a8d74374c7d399eaf877952b088149e748e28a0fd6d0188c18de7c6ede30` |
| 15 | `theorem` | [natCast_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/natcast-mul.md) | 190 | `result-track:66c19073fe88482ab171a7cdab32838db5e7c1f0d66ce0c49a316c7a17768606` |
| 16 | `theorem` | [natCast_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/natcast-zero.md) | 194 | `result-track:853f132f684557bf7bf0e5b0b5a5b2d067a13148c695e31f78d545d347ad56ff` |
| 17 | `theorem` | [natCast_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/natcast-add.md) | 196 | `result-track:a46ad4539d2c8a06ba9bf89495f11312e1ade736e1d1eb97b44e93fa0d023b9d` |
| 18 | `def` | [ExBase.evalNatCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exbase-evalnatcast.md) | 210 | `declaration-track:677bbb083047e0726e10108c85edc2226234cbf1fde228946881c61f98ff4221` |
| 19 | `def` | [ExProd.evalNatCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exprod-evalnatcast.md) | 224 | `declaration-track:068b0a81123ac8f37fc6a1f5bba9de8eccfab7a5c0f4fd09be1940cde6362d4b` |
| 20 | `def` | [ExSum.evalNatCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exsum-evalnatcast.md) | 241 | `declaration-track:51706fdf4e4370472ca846b6a41fed41f9c0769f3fc13fdb30e411ffec6d6ad2` |
| 21 | `theorem` | [natCast_int](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/natcast-int.md) | 254 | `result-track:f5b440cb89f7b866d9463a979f848ebe70201f0c6576d7b0a6a9e8cefb82d13c` |
| 22 | `theorem` | [intCast_negOfNat_Int](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/intcast-negofnat-int.md) | 256 | `result-track:1ad7d3f957e43dfeb57271277940e05b513bd804ffbf8dacf4fa36cd2f67a5d2` |
| 23 | `theorem` | [intCast_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/intcast-mul.md) | 259 | `result-track:4aa49f321c40786f89df2acf881814e437f6ef09fdc1fb7217f8ead15b9750a5` |
| 24 | `theorem` | [intCast_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/intcast-zero.md) | 263 | `result-track:8b9813bb6b9ba95435a363909abdd53db1e2d70b9de273da8a22fa35ea3925a2` |
| 25 | `theorem` | [intCast_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/intcast-add.md) | 265 | `result-track:20fb55c8f62db3a7a8df341bd981b5fdf45bf62844bf093c2b7517cee5542dc2` |
| 26 | `def` | [ExBase.evalIntCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exbase-evalintcast.md) | 280 | `declaration-track:1002ad0ac00df28e5128fe5fe70b028a011682cfb20c14db30a8d6ebe50477b4` |
| 27 | `def` | [ExProd.evalIntCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exprod-evalintcast.md) | 297 | `declaration-track:cefbba607003eef9a735dba1b47f283284db1f547281b2fc42e667b23b442452` |
| 28 | `def` | [ExSum.evalIntCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exsum-evalintcast.md) | 318 | `declaration-track:dedbcc138deeb0fed02b39fd51647d3cda858eb15753c482cf291da3563ec705` |
| 29 | `def` | [ExBase.cast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exbase-cast.md) | 337 | `declaration-track:3fa71b59b844f42d883f14cd58bdd47ed60356075d048298929342e95601284a` |
| 30 | `def` | [ExProd.cast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exprod-cast.md) | 344 | `declaration-track:70f41d6bcb6997fa9a1baebe7a2e5354cbacff7c3caea7ef67de7680c3c353c3` |
| 31 | `def` | [ExSum.cast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/exsum-cast.md) | 351 | `declaration-track:d66b73b1f5b58c1ad97a2c1d4a953394b95bee6087b08201de259b2fe5d59090` |
| 32 | `lemma` | [smul_eq_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/smul-eq-mul.md) | 359 | `result-track:44cd4a5616588986ce7ef28d381d83578669ab4c67e7830e2e7017424c557d55` |
| 33 | `theorem` | [Nat.smul_eq_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/nat-smul-eq-mul.md) | 363 | `result-track:f918db308482be5a6f4231f7d7a1403edea1eac93f3607d4139d3065968d651c` |
| 34 | `theorem` | [Int.smul_eq_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/int-smul-eq-mul.md) | 367 | `result-track:f0de1248bb8579fa3440fda881801826163d311e9f1c49f47ff9812a51eac3e1` |
| 35 | `def` | [RatCoeff.toResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/ratcoeff-toresult.md) | 373 | `declaration-track:cdbfe4b4e9352ba1b0e90d322de6fa764da2534a99d66fdb248db2d2c92f9009` |
| 36 | `def` | [RatCoeff.ofResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/ratcoeff-ofresult.md) | 377 | `declaration-track:45f2a70bd28ba215b1b134220af19595737c9e38205dc484a683406ecdf55ea2` |
| 37 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/add.md) | 386 | `declaration-track:cd3ebf16b9d0af8ccbfd2216d6e62fab2327e568f5cb595ffa275308b0e2c686` |
| 38 | `def` | [mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/mul.md) | 401 | `declaration-track:799df5a7afc791fdc56cd6d2b6e71051ca21f7cb6d4077c5819b3cc368756ca4` |
| 39 | `def` | [cast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/cast.md) | 408 | `declaration-track:56fecf7e7ad845425db36e3737e640ed3bb2d338dada78169441ed49c375d68f` |
| 40 | `def` | [neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/neg.md) | 435 | `declaration-track:836218493e87770b167d273f1c87c82b4e3da6040b1e603b0834480999e7c5a9` |
| 41 | `def` | [pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/pow.md) | 446 | `declaration-track:7009abe8872cbd55cfb04053366e9f811fc26c270d2874196257bca528e62d10` |
| 42 | `def` | [inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/inv.md) | 464 | `declaration-track:86a7c4baaadf89adbb7508de6a35e1839e81901b76bc288bdcd79a6d6f6c18a6` |
| 43 | `def` | [derive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/derive.md) | 474 | `declaration-track:858d0a0a803647f281b28b5df15088c223a81401b76b579fb6f318ca623211db` |
| 44 | `def` | [isOne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/isone.md) | 481 | `declaration-track:1833805c3abc47b3ce1f003bd575eb7238e7f947379abde25969d3272175ae2d` |
| 45 | `def` | [Tactic Ring Basic Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/ringcompare.md) | 492 | `declaration-track:02619abd9088aac5cb2811ff1e81c1cb3ca4ea062ff42d1b7e1feaf629f39f9e` |
| 46 | `def` | [Tactic Ring Basic Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/ringcompute.md) | 498 | `declaration-track:7b1f01d91f982b5cee7eecf0c30145123498bc9567584bcc52b2fd7b75561a7c` |
| 47 | `def` | [rcℕ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/rc.md) | 517 | `declaration-track:5a2696d412b1273b63bb5971a8a90145d74f5213e78e53ad4a32500f104a8d5e` |
| 48 | `class` | [CSLift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/cslift.md) | 524 | `declaration-track:75d77d01ce62e5410ee2f0640b31cefb3a5cf7690f730531988eb9c8f327a3d1` |
| 49 | `class` | [CSLiftVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/csliftval.md) | 532 | `declaration-track:6ae2edff8019a97b862abc6676a7ca40a3c8df95bef185b6f9b2950a049fcf95` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/instance.md) | 538 | `declaration-track:9d4a2361ed0e28231923127c3d3d85184e1f4fa5a55d37df1bf19f73cb70a044` |
| 51 | `theorem` | [of_lift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/of-lift.md) | 540 | `result-track:2821c49f042dc5c3392097b377301fce99747d99fa793d830ae4caa9398ba065` |
| 52 | `theorem` | [of_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/of-eq.md) | 546 | `result-track:75eef8f2256d40eafccd6a6f77d13e9182b7000a414af62b5454972c81e5a317` |
| 53 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/initialize.md) | 553 | `declaration-track:bdaba55854cd7450d93e976ad02db1a564c6c3a71df2c0f407ed62fe90bee322` |
| 54 | `def` | [proveEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/proveeq.md) | 556 | `declaration-track:a72dc748c61d6a6673053a0242bdc2798f61dd25bd956dc8f0668b6376941255` |
| 55 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/elab.md) | 604 | `declaration-track:0fc378c0be22ed7098c0e210d326a0b1478dd10556e9c78d39d5bbd7bc2477ca` |
| 56 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicNamespacedPublic.lean/declarations/macro.md) | 607 | `declaration-track:d15121cd7e745fc4d1d1d216e8bb80e4ae24b5b3f149d7e04413cf469a01efd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ea65d8a26fb50d8212a40d1c333284bfbc46c4ff3acafe98cfc4e13a34cb38c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
