# Verification target: Bool Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d71c16824482d9ecc5903efb54fb3a47b203c620",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d71c16824482d9ecc5903efb54fb3a47b203c620`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.LinearOrder` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [true_eq_false_eq_False](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/true-eq-false-eq-false.md) | 38 | `result-track:8c526e50cda12b7b0898e5b883e0447d522a8247a1da38ed8d8e2faccc5a3f99` |
| 2 | `theorem` | [false_eq_true_eq_False](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/false-eq-true-eq-false.md) | 40 | `result-track:1a53f548cfd637071d7907d681b78444d5440f6f9559121671cae36968198168` |
| 3 | `theorem` | [eq_false_eq_not_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/eq-false-eq-not-eq-true.md) | 42 | `result-track:e38ee1eb8db127672fe8438fee91af1a9ee323aa19330371747b0c3b52e6065f` |
| 4 | `theorem` | [eq_true_eq_not_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/eq-true-eq-not-eq-false.md) | 44 | `result-track:0a20ae93414aa908c205296ea85699fc9bb6dc3a4134b8e17982c5489c2c479d` |
| 5 | `theorem` | [eq_false_of_not_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/eq-false-of-not-eq-true.md) | 46 | `result-track:a8a82e3f6d96ecf3bb25c5b09f8161b9c5679f0f69fb0ec653e03434ec3ecb6c` |
| 6 | `theorem` | [eq_true_of_not_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/eq-true-of-not-eq-false.md) | 49 | `result-track:5a184444744ab0e7783c8d11fb968d0b10840b863a6b3171a118dc8344f0e08d` |
| 7 | `theorem` | [and_eq_true_eq_eq_true_and_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/and-eq-true-eq-eq-true-and-eq-true.md) | 52 | `result-track:3900ce56e636617925e8a84ef5e50f67cceedab3eec990b1dec1a7cc7bf0d1ef` |
| 8 | `theorem` | [or_eq_true_eq_eq_true_or_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/or-eq-true-eq-eq-true-or-eq-true.md) | 55 | `result-track:8fd7804c820333fe16d879457963e99cc8f09cb08453485bab69f329024cce57` |
| 9 | `theorem` | [not_eq_true_eq_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/not-eq-true-eq-eq-false.md) | 58 | `result-track:231c345820c94d9d451a40e41054c9879903a701ccf609cebaa22898cd77b1c0` |
| 10 | `theorem` | [and_eq_false_eq_eq_false_or_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/and-eq-false-eq-eq-false-or-eq-false.md) | 62 | `result-track:7aac55680d50928da287563b60b02a7e980eea5336f4534a7dfbc4c45a3aae29` |
| 11 | `theorem` | [or_eq_false_eq_eq_false_and_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/or-eq-false-eq-eq-false-and-eq-false.md) | 66 | `result-track:64bee1b96f11f6c82dac803b549cec59c33797ffb8616d68c9e9b4aa8c74eb7e` |
| 12 | `theorem` | [not_eq_false_eq_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/not-eq-false-eq-eq-true.md) | 70 | `result-track:ec165e175dbce61a80307d68c1b2e4524e258e6fc82adbef3f79e03edbbe9c9c` |
| 13 | `theorem` | [coe_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/coe-false.md) | 72 | `result-track:733929b21431c2fc73dde9aed779cdfb288bc9a17a9fe26b0cb6e52f43ef80d4` |
| 14 | `theorem` | [coe_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/coe-true.md) | 74 | `result-track:2416a1b632ed639e112eec9cbd44aeaea6b8bb911ac59e9ec2848079f911dad5` |
| 15 | `theorem` | [coe_sort_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/coe-sort-false.md) | 76 | `result-track:d9fa7646d8f665b0095cd085df7f0a004b4413710f248b1339271aee235c2423` |
| 16 | `theorem` | [coe_sort_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/coe-sort-true.md) | 78 | `result-track:ed577879121cb359e3f8516b53da929e02f545f443377a83dcf8eab97b6b43fc` |
| 17 | `theorem` | [decide_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/decide-iff.md) | 80 | `result-track:655ca505c69a43ec4ec2e9a4df5a0f455301b7d62fcd9460a3cf790d5417d065` |
| 18 | `theorem` | [decide_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/decide-true.md) | 82 | `result-track:ec6287635650c8990380a0ee7e326c75823211cb6a5162e6337c3c125cd814bb` |
| 19 | `theorem` | [of_decide_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/of-decide-true.md) | 85 | `result-track:d19f0f758c2f96b2afbcaf1bf425279a212a493f20d934ed991fe4f5614f836b` |
| 20 | `theorem` | [bool_iff_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/bool-iff-false.md) | 88 | `result-track:cb394913615bbcb09279fd0fafb26b4e6481513585b4de9185bcc7cf8306e79c` |
| 21 | `theorem` | [bool_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/bool-eq-false.md) | 90 | `result-track:131d987628cc15678d7573fd2e9e68c9e396939807435cb624d414490a0f5735` |
| 22 | `theorem` | [decide_false_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/decide-false-iff.md) | 93 | `result-track:9113d28ff3321bd2e72109854357891dfcb1175722b4b4b13b0adcf589a222d7` |
| 23 | `theorem` | [decide_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/decide-false.md) | 96 | `result-track:fc0eb62e8add4fec915e66e5c910cd9c5c6376023c15bce188f2428042e2751d` |
| 24 | `theorem` | [of_decide_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/of-decide-false.md) | 99 | `result-track:bc14bf8158b84641567e9948d227f5a2a9efd8a21894c29189b47ce966bf9470` |
| 25 | `theorem` | [decide_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/decide-congr.md) | 102 | `result-track:4e003355820b9e0a30866d642bc4ab968635aeee5b7a0e4c3e47e951dd081e8e` |
| 26 | `theorem` | [coe_xor_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/coe-xor-iff.md) | 105 | `result-track:f29294cfc3ec189993d46a66de1eddf2b0b49638e05bdc6b6e58ad6ce4463567` |
| 27 | `theorem` | [dichotomy](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/dichotomy.md) | 110 | `result-track:4d891372a7ec6e391427e8a0d80c3b4798e6c042e2447e652d5e0d959417f777` |
| 28 | `theorem` | [not_ne_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/not-ne-id.md) | 112 | `result-track:15696def5bf83d927b2cb51e2664c4012f934cb785b38f842bc7faa668ca9010` |
| 29 | `theorem` | [or_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/or-inl.md) | 114 | `result-track:23521215c767ee22ed944171f9db6281997c48d538f7b49487ed4866f1a5fce3` |
| 30 | `theorem` | [or_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/or-inr.md) | 116 | `result-track:f43ce5feea8244e0621ff84b489a07301a000a98a9b6203ec3e78f705d4ad4fd` |
| 31 | `theorem` | [and_elim_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/and-elim-left.md) | 118 | `result-track:c252811b3861599c66507415d1a18e4d945e22b8482fb3ff4aeca74be8452e26` |
| 32 | `theorem` | [and_intro](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/and-intro.md) | 120 | `result-track:62aea24186df5163d157375015750f8b08424e478a7d700c9c9eae5344b1eb14` |
| 33 | `theorem` | [and_elim_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/and-elim-right.md) | 122 | `result-track:a0de52c54061252c40e1b828a691b6480357451b9d91c786926df0725570826e` |
| 34 | `lemma` | [eq_not_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/eq-not-iff.md) | 124 | `result-track:b498506fe5a5bbb5fb780e583861b3f0d2be2c55cf8e31b007a13daa3327e538` |
| 35 | `lemma` | [not_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/not-eq-iff.md) | 126 | `result-track:e8497d1fbd38f855301b2df74dab19a4a0278b9d8349a25d164da1e50dab9138` |
| 36 | `theorem` | [ne_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/ne-not.md) | 128 | `result-track:9e1cdb8d8d7b103bc7e8ef8c4ca6b86c45258cf98a736ea8d39e590daadfc2aa` |
| 37 | `lemma` | [not_ne_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/not-ne-self.md) | 131 | `result-track:cbd0676450b5117e1d44773a4049b2865f43369757d0aab7f7f8c0d65b62de27` |
| 38 | `lemma` | [self_ne_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/self-ne-not.md) | 133 | `result-track:3bbd8f0880f19e45e9e661ff393d436999ce83ad62011fed7b83699f18a80a42` |
| 39 | `lemma` | [eq_or_eq_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/eq-or-eq-not.md) | 135 | `result-track:f713b7db7e32e179e262b27fb43a48ca3a002d4803831d74824d3495de3a5261` |
| 40 | `theorem` | [not_iff_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/not-iff-not.md) | 138 | `result-track:21d29fc92ffd0d45800b111addf9425bfe3c070101295ebb7f9d70b3a7562d18` |
| 41 | `theorem` | [eq_true_of_not_eq_false'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/eq-true-of-not-eq-false-source-edition-2.md) | 140 | `result-track:d1ddfaf90d3fc6830c65efe95eeba757677464ee8a42b3bfa1bbb07c194cb453` |
| 42 | `theorem` | [eq_false_of_not_eq_true'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/eq-false-of-not-eq-true-source-edition-2.md) | 143 | `result-track:bd3bfffbac7eda8cf9554b02862cd8f55ba81c82b83247c753bb6c92160a62e3` |
| 43 | `theorem` | [bne_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/bne-eq-xor.md) | 146 | `result-track:9bef79848aa249fb2d2919dde116cd48021ddeded8df2b125300aad258b957ad` |
| 44 | `theorem` | [xor_iff_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/xor-iff-ne.md) | 150 | `result-track:6e65dc9721136a71f5cfb6db7150b31216da684475b7b9d1779c3fb9a125a24e` |
| 45 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/linearorder.md) | 154 | `declaration-track:0fe798a0de3f720254128f5e6ad11e1d06ab5fbb509fc39a895c8dd452d11c88` |
| 46 | `theorem` | [lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/lt-iff.md) | 166 | `result-track:9894849c82e82d7a976502bdbe8814360d08d91ebc97dca587034bee4cd277af` |
| 47 | `theorem` | [false_lt_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/false-lt-true.md) | 169 | `result-track:75a11facd06920b1b1f9a72d1b1f52c6ad257030b232be1f9197a3e66a66fef8` |
| 48 | `theorem` | [le_iff_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/le-iff-imp.md) | 172 | `result-track:c56e4ab30483ca7646a32f54d348a6f0d581c107b728cf17e368a0523996bd9f` |
| 49 | `theorem` | [and_le_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/and-le-left.md) | 174 | `result-track:47375ecd98166e2386414434335b1061ff907849d035507541c592dcc22b3c72` |
| 50 | `theorem` | [and_le_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/and-le-right.md) | 176 | `result-track:850bca131f08de5c3efa0d6c53c2ab73086081bcf8d1a21bd971dede4de4e4e7` |
| 51 | `theorem` | [le_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/le-and.md) | 178 | `result-track:5f99eac158f8eaf3442812c42cdb2b8a8881445d379c55d4252fee4460011249` |
| 52 | `theorem` | [left_le_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/left-le-or.md) | 180 | `result-track:1d327b9bb3b45079c87f6da1664e034e993031d4bfcc53018e1c3f91943184fa` |
| 53 | `theorem` | [right_le_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/right-le-or.md) | 182 | `result-track:bd6063ace39d798080e4a39f006e5103d4688949fad8f7f16e6ba740178d9f09` |
| 54 | `theorem` | [or_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/or-le.md) | 184 | `result-track:7f4ca42e5194985d4afdfebc68df603d2974dd8a63b96ef36057a4a789e0d5c9` |
| 55 | `def` | [ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/ofnat.md) | 187 | `declaration-track:1760ba3900a18b186fb5d75c64f41dea1fdc992c18c79c2f95be42f9a07b5ec7` |
| 56 | `lemma` | [toNat_beq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/tonat-beq-zero.md) | 190 | `result-track:7c13afa2c55cd42e06666d83fba1177ddeb18fe06f5abf58b2e0a104525feddf` |
| 57 | `lemma` | [toNat_bne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/tonat-bne-zero.md) | 191 | `result-track:7aea70301b0b715725a1d7741a2cec3fa15f3b551e924004a5a69a766bfc4267` |
| 58 | `lemma` | [toNat_beq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/tonat-beq-one.md) | 192 | `result-track:30c2e8da3476c6054e1a6d69691e7c70edb053ce9bd55d1f9e2c14e074ef9bc0` |
| 59 | `lemma` | [toNat_bne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/tonat-bne-one.md) | 193 | `result-track:66148c985a6e425dba645456caf397293ca13d0cc1fecb58394b9eec4d0c502b` |
| 60 | `theorem` | [ofNat_le_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/ofnat-le-ofnat.md) | 195 | `result-track:8c75406138f38c0daa05ba58028231347049e535657b511b8ce79bbeffc7d7aa` |
| 61 | `theorem` | [toNat_le_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/tonat-le-tonat.md) | 204 | `result-track:a38f50892fd84c6be5d7ea881d3edcf6d60f6f17e060d078584b12ee1527e490` |
| 62 | `theorem` | [ofNat_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/ofnat-tonat.md) | 207 | `result-track:bd2c9167152c21a54e5451bab868cde4e39ca383a2fda4f9e14c9af710f52c5a` |
| 63 | `theorem` | [injective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/injective-iff.md) | 211 | `result-track:c45ca66dbc34b1599d79a53b4021bc32d480429589b7563facae26c5093f1338` |
| 64 | `theorem` | [apply_apply_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/apply-apply-apply.md) | 220 | `result-track:a5e96c9ad0488529a0d5d48cfa77028ecad4e59b2225a294707baf8fe0331c64` |
| 65 | `def` | [xor3](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/xor3.md) | 224 | `declaration-track:51f5797ce3542220006b3f23f9aff5376e8d0a2e8b014e6d303db24ca81fe7b1` |
| 66 | `def` | [carry](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedSourceEdition2.lean/declarations/carry.md) | 228 | `declaration-track:4a9ba2487cc080606f01a2d3c8af869c26beeea523f831c20da38bd5e31f9e2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a4d519db6878e8aa707ae8e343c2128371f85c511cb94f57343e11548e0c362 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
