# Verification target: Polynomial Big Operators Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "804d8253c397a0e3934a2f809957eb8f6509e41f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `804d8253c397a0e3934a2f809957eb8f6509e41f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_list_sum_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-list-sum-le.md) | 59 | `result-track:d1548c5aff0b7e989311a475d008f9ae934b00ab884ba896a6f371c8ef187928` |
| 2 | `theorem` | [natDegree_multiset_sum_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-multiset-sum-le.md) | 65 | `result-track:6c069b8adc788130d5b749fc6a79d81a9de5cfe8776a541d4484099eee4a663a` |
| 3 | `theorem` | [natDegree_sum_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-sum-le.md) | 69 | `result-track:d9367eae3912eac1ce4a2629992eedcd8f45f75e2b13a59729ec05902bc0da26` |
| 4 | `lemma` | [natDegree_sum_le_of_forall_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-sum-le-of-forall-le.md) | 73 | `result-track:dfabeaf71b314c51e5fbc64c01dbf4ca8644550c06533db756ab48a76756bf3a` |
| 5 | `theorem` | [leadingCoeff_sum_of_degree_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/leadingcoeff-sum-of-degree-eq.md) | 81 | `result-track:6e1f0983ed21d1751ffd54b1fa8ed5aa32dc135f161f69b45fc33ba1c6dade48` |
| 6 | `theorem` | [degree_list_sum_le_of_forall_degree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-list-sum-le-of-forall-degree-le.md) | 92 | `result-track:ef1558b57721680bcbc2c9529e30244861348dbdd62bf32542cef354d801097f` |
| 7 | `theorem` | [degree_list_sum_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-list-sum-le.md) | 103 | `result-track:0a9799f822755425c005e33bdd9591a3df7a2119feb3777d691c226d4f424221` |
| 8 | `theorem` | [natDegree_list_prod_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-list-prod-le.md) | 115 | `result-track:941d31d7c516332e24ab96eeb03c03d6db2c2006a1bd8683ad3e712aee2a18c3` |
| 9 | `theorem` | [degree_list_prod_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-list-prod-le.md) | 118 | `result-track:7045509d2592db48ac73c7efce23999e4b8da8612defd8c485150921d63f4f91` |
| 10 | `theorem` | [coeff_list_prod_of_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/coeff-list-prod-of-natdegree-le.md) | 121 | `result-track:75761e5e5fc7be7c6b5329ada30a772ef6c1e41e41ba2cad3832323e6fb863da` |
| 11 | `theorem` | [natDegree_multiset_prod_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-multiset-prod-le.md) | 142 | `result-track:3c89fc967a66dc9be23386d250e6a249aedc3afae77a71f4edb922fa5f7cbc0e` |
| 12 | `theorem` | [natDegree_prod_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-prod-le.md) | 145 | `result-track:ccda97842a052023f5071a5cd6cb2527b926c3cf89d755e679c4e2295cec97df` |
| 13 | `theorem` | [degree_multiset_prod_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-multiset-prod-le.md) | 151 | `result-track:d6071e97f4770c6f7b2f718308991b9eaa826e42b9cec68d71b2a39fc7b08e12` |
| 14 | `theorem` | [degree_prod_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-prod-le.md) | 154 | `result-track:64fe28d255429a5401ec1382fc0db25e10b39ec1c33bba12da8bd81bc2256bf1` |
| 15 | `theorem` | [leadingCoeff_multiset_prod'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/leadingcoeff-multiset-prod.md) | 163 | `result-track:9d5e5f40b435148eaa5f596d54155756b7ea623d2b3606344e98f55ebe8c3327` |
| 16 | `theorem` | [leadingCoeff_prod'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/leadingcoeff-prod-source-edition-2.md) | 182 | `result-track:8d29346d6abf4497e004fb6288c72df07347767ba8962aef8799793a97a99759` |
| 17 | `theorem` | [natDegree_multiset_prod'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-multiset-prod-source-edition-2.md) | 192 | `result-track:4c61a529419ed9fdc4250699eeee7ce10c6dffc5582d5126deb8f1387f9e6b49` |
| 18 | `theorem` | [natDegree_prod'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-prod-source-edition-2.md) | 208 | `result-track:aec15fa64f126999af4a186a07aa6ce8cf2f4efac1d3cf4a62af386bf631b068` |
| 19 | `theorem` | [natDegree_multiset_prod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-multiset-prod-of-monic.md) | 212 | `result-track:31250628d64339fe426a96004f4d6f9ac4576cfd8811266a71f4608955b826db` |
| 20 | `theorem` | [degree_multiset_prod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-multiset-prod-of-monic.md) | 218 | `result-track:3549960550b0a29e256797c72e658886c23a89a18a8996f8b62194d1e869f4ff` |
| 21 | `theorem` | [natDegree_prod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-prod-of-monic.md) | 225 | `result-track:2c911f666a0a1af96c9e17f3a2044ae90b0e77517e3b68e2cee29ee063ca3ceb` |
| 22 | `theorem` | [degree_prod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-prod-of-monic.md) | 229 | `result-track:80729d919b5341fdcb82cbf271ce43811d6122d9d62d861093a7bc4db57af33a` |
| 23 | `theorem` | [coeff_multiset_prod_of_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/coeff-multiset-prod-of-natdegree-le.md) | 233 | `result-track:dc24d481362ae229f69d971bbdeb6872cf21bc4ad0e434fc6f89e0a279d04a56` |
| 24 | `theorem` | [coeff_prod_of_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/coeff-prod-of-natdegree-le.md) | 238 | `result-track:7c1a17103238d1e3b970e95f3c84b8df2b3accf3b2334466f858040a9f2426b5` |
| 25 | `theorem` | [coeff_zero_multiset_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/coeff-zero-multiset-prod.md) | 246 | `result-track:5178d53c8826779109b00559bfe3588dcb3e64ca527469171cd563bd39be28cd` |
| 26 | `theorem` | [coeff_zero_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/coeff-zero-prod.md) | 250 | `result-track:fb992cf2d0820af228398b9f1a1ef038557874824407d3a5dece924cbf00277a` |
| 27 | `theorem` | [multiset_prod_X_sub_C_nextCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/multiset-prod-x-sub-c-nextcoeff.md) | 263 | `result-track:cffaecda063f9ee77e1eea6db6683531c3ea23654ce76f8c14eb37add23526be` |
| 28 | `theorem` | [prod_X_sub_C_nextCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/prod-x-sub-c-nextcoeff.md) | 271 | `result-track:424780388ceef1b8b749006842391fd0018ad25829a759e8d71e8b8e91717bb3` |
| 29 | `theorem` | [multiset_prod_X_sub_C_coeff_card_pred](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/multiset-prod-x-sub-c-coeff-card-pred.md) | 275 | `result-track:e2018876aa46bc904ce324a6fa3d149036dd73e3b9c16064c9b5cfefb4b36b66` |
| 30 | `theorem` | [prod_X_sub_C_coeff_card_pred](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/prod-x-sub-c-coeff-card-pred.md) | 291 | `result-track:754879c6d374ec1f1450c25300633eaac0e9c836641ba3c7e1756459283b3160` |
| 31 | `lemma` | [degree_sum_eq_of_linearIndepOn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-sum-eq-of-linearindepon.md) | 295 | `result-track:9c5e57bfc589a971071404dbd042f9c9cc413245efc1b9c12e70b7e8505c37c4` |
| 32 | `lemma` | [natDegree_sum_eq_of_linearIndepOn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-sum-eq-of-linearindepon.md) | 316 | `result-track:846d73e1684970ceb7a28bf99177a1a90ab4463eb9ba1825188d054a72e151c1` |
| 33 | `lemma` | [natDegree_multiset_prod_X_sub_C_eq_card](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-multiset-prod-x-sub-c-eq-card.md) | 337 | `result-track:bc50251a2187d30dcd6ba757f34a75d549751c7322866c7b6d9b5aedb0f69c01` |
| 34 | `lemma` | [natDegree_finsetProd_X_sub_C_eq_card](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-finsetprod-x-sub-c-eq-card.md) | 343 | `result-track:20050a3e545acdf86a54aa4b191871dcccce98503560741b6476e5d4c18bb1f8` |
| 35 | `theorem` | [degree_list_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-list-prod.md) | 363 | `result-track:5346da1f748b9e9e4195b2cb258bbae101909a03f9c26ad084d39aef22ae67fd` |
| 36 | `theorem` | [natDegree_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-prod.md) | 378 | `result-track:770d7d654bc60f8e62af5dc553d8337f78fcdfb00587273aaf24ebbbf7adff80` |
| 37 | `theorem` | [natDegree_multiset_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/natdegree-multiset-prod.md) | 385 | `result-track:2bbdf118431154dc3f968155c2b2ecc9d469a01b0e2ff7795e846509915fc839` |
| 38 | `theorem` | [degree_multiset_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-multiset-prod.md) | 396 | `result-track:1e0aa8cc2d64da1b08268a7c9dc6a97f2e89146af46b3e3885a1990559609cc1` |
| 39 | `theorem` | [degree_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/degree-prod.md) | 402 | `result-track:c09021a911ab545c7b3f25647b3a0a5977173324c5db27226fe661728ee5d090` |
| 40 | `theorem` | [leadingCoeff_multiset_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/leadingcoeff-multiset-prod-source-edition-2.md) | 412 | `result-track:fa1881da293eb6d5fef2c98e1b5b484e3ef3924903dd7b991c96d4066723b7bd` |
| 41 | `theorem` | [leadingCoeff_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialBigOperatorsNamespacedPublic.lean/declarations/leadingcoeff-prod.md) | 423 | `result-track:8a017af7828c1b255202a58e05cd786f6515098aa6fb89dfd62da851466de775` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68c733fe0cbcef0dc4e367f88b0c46fe695b4b9897a8397d819e5737c315798d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
