# Verification target: Factorisation Properties Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd4661094c88f790dcf6a2d96484248e4784ebca",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd4661094c88f790dcf6a2d96484248e4784ebca`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean.json)

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
| 1 | `def` | [Abundant](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundant.md) | 67 | `declaration-track:541c60d4b593735408b23cb7f29f5537ccdba57cedaa81fc7f20692f94095b9e` |
| 2 | `def` | [Deficient](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/deficient.md) | 71 | `declaration-track:c4ee9b24c19eff4b9930e6d8a25ec3b51e2e7dc7f3cbaf84f9d4c0a4c930e411` |
| 3 | `def` | [Pseudoperfect](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/pseudoperfect.md) | 76 | `declaration-track:dd61f2796771e935995479b905f7188c8750de6ed55db83bd221cfb06e3830bf` |
| 4 | `def` | [Weird](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/weird.md) | 81 | `declaration-track:d07f9ae29d7e121b92f55d53fac37f162172e9867fef22f18cea2b3505818243` |
| 5 | `def` | [abundancyIndex](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundancyindex.md) | 85 | `declaration-track:50e17cf4ef0cb1fd70c876b4e724e516b4b0fbf76fd0a1692a8620cbd8b5a6dd` |
| 6 | `theorem` | [not_pseudoperfect_iff_forall](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/not-pseudoperfect-iff-forall.md) | 87 | `result-track:07f9ade36cc415a199d2a562b0325dbd527801f21f8a6d48b7344028d8649210` |
| 7 | `theorem` | [not_deficient_zero](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/not-deficient-zero.md) | 91 | `result-track:f7ecfe8583cc04b91879a3e08683b0a110991abae9ea55057ba962048e37bd92` |
| 8 | `theorem` | [deficient_one](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/deficient-one.md) | 94 | `result-track:4478481e724b44cdcc9d54822f064a33aca7b1599312202ed74cee6cafb64df6` |
| 9 | `theorem` | [deficient_two](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/deficient-two.md) | 97 | `result-track:321fe6824e93fb7c63d87c7019ffb3d766a1974b9976e930c070803b2475a4c7` |
| 10 | `theorem` | [deficient_three](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/deficient-three.md) | 100 | `result-track:b083b07487e5a00cb2b4e2dcb6d45c0d38e6f1e9aca506d18b4bff06b1fe065b` |
| 11 | `theorem` | [not_abundant_zero](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/not-abundant-zero.md) | 103 | `result-track:b8402cbe3f9b260734d8ede3d4b3df82c878e8f57d0c4c78acdcc1161044fb19` |
| 12 | `theorem` | [abundant_twelve](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundant-twelve.md) | 106 | `result-track:cfeda4208dfa29d8a2a05c345450488943d5fd448e938cad7801efd6b7c802d8` |
| 13 | `theorem` | [not_weird_zero](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/not-weird-zero.md) | 109 | `result-track:5fe164bfb7c43bb04275acc0742d3666ce2a91cb5888367c7a708f40e4817fa8` |
| 14 | `theorem` | [weird_seventy](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/weird-seventy.md) | 112 | `result-track:301a0ed230816c32e6f071c2c23e245ce0ba48f418f9304879f2bacc8391faee` |
| 15 | `lemma` | [Deficient.pos](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/deficient-pos.md) | 115 | `result-track:97d603cb5256ec979dcf47dd5e9a3c581a15099f3931ee2b4e6aa9c46440bd19` |
| 16 | `lemma` | [Abundant.pos](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundant-pos.md) | 118 | `result-track:10645e63fc2c2647d5838b937774f7b09022a026b1e3caf4abd56b0064c71298` |
| 17 | `lemma` | [Weird.pos](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/weird-pos.md) | 121 | `result-track:12928b6983d94d0abcd07b1db5db75d763685677a157f98ddbbdfcb077fc9437` |
| 18 | `lemma` | [deficient_iff_not_abundant_and_not_perfect](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/deficient-iff-not-abundant-and-not-perfect.md) | 124 | `result-track:bab36a92a895e2c57c257f0ecea1bbfef4f933be640e2bcabea199ec90508f0c` |
| 19 | `lemma` | [perfect_iff_not_abundant_and_not_deficient](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/perfect-iff-not-abundant-and-not-deficient.md) | 128 | `result-track:9d429057c996251b68a7a5cdd4eadec678e9b06a48a9e56f2c46d1fb65bd932d` |
| 20 | `lemma` | [abundant_iff_not_perfect_and_not_deficient](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundant-iff-not-perfect-and-not-deficient.md) | 132 | `result-track:47c8da2e32133e239d4c72908fe397c9558a262c3b908d405fb349cb1b290858` |
| 21 | `theorem` | [deficient_or_perfect_or_abundant](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/deficient-or-perfect-or-abundant.md) | 137 | `result-track:995e65315065528e30b0b9296dbe15ca65751b064f029f0ea052755a7a9b625c` |
| 22 | `theorem` | [Perfect.pseudoperfect](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/perfect-pseudoperfect.md) | 141 | `result-track:4219334066d07a297361a045cb7d55406594381f91af43b7f2b8f1e3307fbd57` |
| 23 | `theorem` | [Prime.not_abundant](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/prime-not-abundant.md) | 144 | `result-track:a4363ed9091b0d1dccf8f82c289e25c4b2a794087b2391c8acb77ce984a52247` |
| 24 | `theorem` | [Prime.not_weird](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/prime-not-weird.md) | 147 | `result-track:940b239a2ec0f61f4271f95128d9ec5a505d361fb7b1a346c31d0ef62919764f` |
| 25 | `theorem` | [Prime.not_pseudoperfect](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/prime-not-pseudoperfect.md) | 150 | `result-track:3352eea11b99bcbc20460192ed6cd069bb6d8831d836a6b771472e6324edf99d` |
| 26 | `theorem` | [Prime.not_perfect](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/prime-not-perfect.md) | 156 | `result-track:e9910c2dc72d340239a4196b56a31861a6991ca959da301a429d478dff34f995` |
| 27 | `theorem` | [Prime.deficient_pow](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/prime-deficient-pow.md) | 160 | `result-track:b6efc1d11482363e4bb6549f02c78b4bbf09eed6a4317c62bc334d7a5dc32aae` |
| 28 | `theorem` | [Factorisation Properties Namespaced Public](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/deficient-source-line-171-occurrence-2.md) | 171 | `result-track:ad75cb5d61a77b254347492a8956e10fcca4077cd3870f3e419e4b88bd41be5b` |
| 29 | `theorem` | [Prime.deficient](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/prime-deficient.md) | 175 | `result-track:6a12fa54f21f855de6f017efe6f42f2181a849981ed23c1f7838bc804cd7aaa4` |
| 30 | `theorem` | [infinite_deficient](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/infinite-deficient.md) | 179 | `result-track:875b991fd84239b2f9ece66ff5475b3402ccacc7ad255f836f81b57f615db31a` |
| 31 | `theorem` | [infinite_even_deficient](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/infinite-even-deficient.md) | 185 | `result-track:0a4635b4353ef502fa855b9ae80b938e1feb53dc0e47d83a11a534b708d74b7b` |
| 32 | `theorem` | [infinite_odd_deficient](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/infinite-odd-deficient.md) | 195 | `result-track:6cc7152b3d255c689108426a67c9d9dceab7669c8006d922e38004bd3e2f3685` |
| 33 | `theorem` | [abundant_iff_sum_divisors](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundant-iff-sum-divisors.md) | 202 | `result-track:deb6696a4960629e249cf2393cb185e630295a94662c2035a5d94b4d6c293616` |
| 34 | `theorem` | [abundant_iff_two_lt_abundancyIndex](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundant-iff-two-lt-abundancyindex.md) | 205 | `result-track:8f84955057cc5cdc5f74dda0b4f661ff1438869054d06326f736df46fec9b2c1` |
| 35 | `theorem` | [abundancyIndex_le_of_dvd](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundancyindex-le-of-dvd.md) | 211 | `result-track:9975367549e8cabc3e780c0db50ad1c5fdcad15af3c538029cafa272653150f6` |
| 36 | `theorem` | [Abundant.of_dvd](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundant-of-dvd.md) | 221 | `result-track:3e521184a01cec780ffbcbb3e6f26ac0c5f250f29299e0b834f42774d8fc41d6` |
| 37 | `theorem` | [Abundant.mul_left](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/abundant-mul-left.md) | 225 | `result-track:b0afed2d30357f01215546e755521e9ed18d0125238c019ec07a80d2d931a800` |
| 38 | `theorem` | [infinite_even_abundant](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/infinite-even-abundant.md) | 230 | `result-track:493a9bcfeadc8ce3f8c30c4a4fd65d902bcd243d0f5cb741b5f5e65bd3eea2e4` |
| 39 | `theorem` | [infinite_odd_abundant](../../../../NumberTheory/FactorisationPropertiesNamespacedPublic.lean/declarations/infinite-odd-abundant.md) | 237 | `result-track:a6f60f9358fa6f9de27e540f58acb9c1eab94f29fde561d05c62dc02b3c67ca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19ff02d13070ca724b0059cc2fead1fb58f3cb6f96117eaef34d8eff24c1b485 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
