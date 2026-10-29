# Verification target: Rat Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d94bc971696917509bcb194965ac84f657ebb114",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantc743cfd4c8dfdecbd722c7efaa05a224fd631dd9366e078896d73ab594458afb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d94bc971696917509bcb194965ac84f657ebb114`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantc743cfd4c8dfdecbd722c7efaa05a224fd631dd9366e078896d73ab594458afb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantc743cfd4c8dfdecbd722c7efaa05a224fd631dd9366e078896d73ab594458afb.lean.json)

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
| 1 | `theorem` | [pos](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/pos.md) | 53 | `result-track:d2832919b0a46cd9a82c13c0f7fdec32f557a318189bb17e6060770280b9ab85` |
| 2 | `lemma` | [mk'_num_den](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/mk-num-den.md) | 55 | `result-track:4cf210e026c9736cabdef59bd347d3f9b899c5d1d8c8cae3f3b10d94533180e4` |
| 3 | `theorem` | [ofInt_eq_cast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/ofint-eq-cast.md) | 58 | `result-track:eabc2f939db9c1f49ceb853be7b76bbc252976edac48a52c7fefbbff52058266` |
| 4 | `lemma` | [intCast_injective](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/intcast-injective.md) | 61 | `result-track:f0e276701a7d716b5923ecb242f3cdc61438e9aa7829776be2308abdb26e66c8` |
| 5 | `lemma` | [natCast_injective](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/natcast-injective.md) | 62 | `result-track:110d2dcdfa8563f1e55e0216bc88845b83bbdb56dc7d2f1ff365fbd25e74d150` |
| 6 | `lemma` | [intCast_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/intcast-eq-one-iff.md) | 65 | `result-track:362f15e139c98be91cb958225a5b8860617520698978fbd9ee2ff09a7819d628` |
| 7 | `lemma` | [natCast_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/natcast-eq-one-iff.md) | 67 | `result-track:350fc592c07ccffc0595b01925d66f8a81506636ac37c077a67597b78ae9ed93` |
| 8 | `lemma` | [mkRat_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/mkrat-eq-divint.md) | 69 | `result-track:b4a6d7faf572a57b4456d5ac55835b54a6ffbae6e21bb53e47fca04e459249a0` |
| 9 | `lemma` | [mk'_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/mk-zero.md) | 71 | `result-track:6b56fa22156823b4d5e41a637b50eb5da0735d57fbe0450a83e7c6984ef9ac4d` |
| 10 | `lemma` | [num_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/num-ne-zero.md) | 73 | `result-track:4144c5b393445dcf77244c38519b92bbc16ec86d5f22308ea94bab02e80f1537` |
| 11 | `lemma` | [den_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/den-ne-zero.md) | 75 | `result-track:87aa3c0dc9332731cc997d46771c3abcd716feb7db6e70f00cb1a822ce9fc84e` |
| 12 | `theorem` | [divInt_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divint-eq-zero.md) | 78 | `result-track:f6f16fce2bbad5372d8a2daa1bf82c6548d1e954691ab64c4498d81f53fc4761` |
| 13 | `theorem` | [divInt_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divint-ne-zero.md) | 81 | `result-track:a7a1cc7c20767c5499e6b569a777ec3f2ab1ceda79266fd748ae73a6a8723a4d` |
| 14 | `theorem` | [intCast_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/intcast-eq-divint.md) | 87 | `result-track:4a69814788312ce1fccaff82479e638cf5107c34af90d131d392de6d13afc257` |
| 15 | `theorem` | [lift_binop_eq](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/lift-binop-eq.md) | 89 | `result-track:b2b53803693e263664668a4e15b0925f163d654bd8e825e9c4595629c9bfc193` |
| 16 | `lemma` | [neg_def](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/neg-def.md) | 107 | `result-track:1c26c591542122456ffb6805b1046386f1380a589c5189fb76db719b7e889bd2` |
| 17 | `lemma` | [divInt_neg](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divint-neg.md) | 109 | `result-track:90ff2fbaac079df38adae7749c983f3016a833564fcd185c099f45d21f40c75f` |
| 18 | `lemma` | [mk'_mul_mk'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/mk-mul-mk.md) | 111 | `result-track:0f03f6a3a8462afbf60c88f433443f0fb19991f68cb77534103c846d2daf6094` |
| 19 | `lemma` | [mul_eq_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/mul-eq-mkrat.md) | 117 | `result-track:a27c386b80366851161596e1eafa1c5159fbe220e04517511e07997d4ebab9ee` |
| 20 | `lemma` | [pow_eq_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/pow-eq-mkrat.md) | 120 | `result-track:17753b3b094a22e2ad634e978e5de4074cde699c4b3e4eb45c36ad97e08efcdf` |
| 21 | `lemma` | [pow_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/pow-eq-divint.md) | 123 | `result-track:8c2eb7dddef8f386a23b127857c115b46d69084e0a0570ce362455f82d4906af` |
| 22 | `lemma` | [mk'_pow](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/mk-pow.md) | 126 | `result-track:971d699d1f34f6111b6b092aa8e8be980483a1e8c3ab0ca2106a4a481af8dfee` |
| 23 | `lemma` | [inv_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/inv-mkrat.md) | 130 | `result-track:9a5f7890709a59a30e1612c991e94e40ca29ba78edc4b44a9ebbbc5248270632` |
| 24 | `lemma` | [divInt_div_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divint-div-divint.md) | 133 | `result-track:7a07f220fef965f231ac7f751068326936cf0ae4d650b32abc70fd77a2ea7773` |
| 25 | `lemma` | [div_def'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/div-def.md) | 137 | `result-track:bf368672c227688f501d47355ad05ff94c61df81521cb48c6ca8c2e96cf6cbeb` |
| 26 | `lemma` | [divInt_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divint-one.md) | 142 | `result-track:2e794ce87a1c4cdbeeef8d5c5d512ca64587ee32ff15703345dc250162e182bb` |
| 27 | `lemma` | [divInt_one_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divint-one-one.md) | 144 | `result-track:b91c3202d592589e7ed84495ddd9ac53fe80edc5ef58dc6e9ea8924001aae178` |
| 28 | `theorem` | [zero_ne_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/zero-ne-one.md) | 146 | `result-track:181f33340b5f8e5280f2b3c97b53de5e72dc70965059780549a47674b6f06287` |
| 29 | `instance` | [nontrivial](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/nontrivial.md) | 153 | `declaration-track:5791ba7021d0013bdb858c6a08fa262f8959e6ab49a0b2b9bbee3e069eec63b3` |
| 30 | `instance` | [addCommGroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/addcommgroup.md) | 157 | `declaration-track:c15f4a9b3180917ba82c211e8fd9e165d06d23588c74dfa98d8f54546667366a` |
| 31 | `instance` | [addGroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/addgroup.md) | 177 | `declaration-track:2d9e046226d18dda6ce6b8c96a1aacbff28e91923991b86751da802c18416259` |
| 32 | `instance` | [addCommMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/addcommmonoid.md) | 179 | `declaration-track:92788a3f42ed6e296cf590f1cd6c667969495a796eba96aaa9288355e45d0a34` |
| 33 | `instance` | [addMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/addmonoid.md) | 181 | `declaration-track:7d4c63cfefbda866926f6a4bd64488a6004737de09220de4bbf234a5fc0a8ec2` |
| 34 | `instance` | [addLeftCancelSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/addleftcancelsemigroup.md) | 183 | `declaration-track:cb97e04ebd8107520e558ac65cc6bf787d79e4f8694109cda347e488ea5fdedb` |
| 35 | `instance` | [addRightCancelSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/addrightcancelsemigroup.md) | 185 | `declaration-track:3094b681beca43c49edd1aa9bc7880f0d36a331cab89d43e0ed9c07d66746216` |
| 36 | `instance` | [addCommSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/addcommsemigroup.md) | 187 | `declaration-track:75d66f7769139e102c57dd45491917f7ea32e6fdd63254ac3816dd44f906b65c` |
| 37 | `instance` | [addSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/addsemigroup.md) | 189 | `declaration-track:956afa1e8492f5edce363702d31c415a9ac53385074eaebf87d497bab2539b1d` |
| 38 | `instance` | [commMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/commmonoid.md) | 191 | `declaration-track:a385d0dfae203419be0dae9c0627450fd26f1f31074b202f07585ee3fc7f8a37` |
| 39 | `instance` | [monoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/monoid.md) | 200 | `declaration-track:2a08b3647a105d180af7fab9933eeede6dfc01daaf2566454f17c4d4d10ab4ad` |
| 40 | `instance` | [commSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/commsemigroup.md) | 202 | `declaration-track:fac0e0ca08fd55d57de9acd16cca823da949fe056051dd1d066562cb0ab2f75a` |
| 41 | `instance` | [semigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/semigroup.md) | 204 | `declaration-track:877b01b8ff32f73c08ea521c94da45a012e677f316bb4aaaca20fde082ba2718` |
| 42 | `theorem` | [den_neg_eq_den](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/den-neg-eq-den.md) | 207 | `result-track:424a59dd4bb21bda6a14c19beca566409a8cc6e85dd6ff4bdb6f548b0ce6cbb9` |
| 43 | `theorem` | [num_neg_eq_neg_num](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/num-neg-eq-neg-num.md) | 211 | `result-track:a9d4837cb73a8bea6716ea01b66dcbad668b19cdc2630054a28b74da78decbc9` |
| 44 | `theorem` | [num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/num-zero.md) | 215 | `result-track:5800571bb8a5f2c16ddabe0ce2c8292cbdc3d00d0e9b0b0a96096149bd45df75` |
| 45 | `theorem` | [den_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/den-zero.md) | 219 | `result-track:38f83e6d72c52ab3e47ae8debaeb49af93c82fa1a6f15853dde909d6d27999af` |
| 46 | `lemma` | [zero_of_num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/zero-of-num-zero.md) | 222 | `result-track:d86c9fa10f91936caa810458034c6df4f72eeaa14b8c7ee6a2bd16e9292bc9f6` |
| 47 | `theorem` | [zero_iff_num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/zero-iff-num-zero.md) | 224 | `result-track:3e33c915b94be35eb97893a3654f8d705e3eed16afbf29ed9def77a0009974f9` |
| 48 | `theorem` | [num_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/num-one.md) | 228 | `result-track:f75582253f957c9fc8964b74514cbcaa43df10e741db6fe74cd82d5f4c7508b0` |
| 49 | `theorem` | [den_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/den-one.md) | 232 | `result-track:35f2ab6b23e81013290cce9823ec84009eb986025cfdbb14d17230b6d78411c1` |
| 50 | `theorem` | [mk_num_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/mk-num-ne-zero-of-ne-zero.md) | 235 | `result-track:003aae03bd3a6826212a750f2ac691f05fda5e4cc7d3b3863cfbc92d39ab6b21` |
| 51 | `theorem` | [mk_denom_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/mk-denom-ne-zero-of-ne-zero.md) | 238 | `result-track:3eff71df3c6962f4b32127baa865056095442a6a08ce7dcf37e4f6ed0bcab48c` |
| 52 | `theorem` | [divInt_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divint-ne-zero-of-ne-zero.md) | 241 | `result-track:f699f724b221b3433143f1b6bffdc3510008a5a01563feb5d53722e852bf6cd7` |
| 53 | `theorem` | [add_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/add-divint.md) | 246 | `result-track:e673469e1fd9a4f0ae4b5ecdc314be21bb01510ddb8bf2b345a0ba21b1e47e55` |
| 54 | `lemma` | [intCast_div_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/intcast-div-eq-divint.md) | 252 | `result-track:27c981ccaaaed7a0894d4f684c285361b98525e6e24ba4e128a31157fc75f7aa` |
| 55 | `theorem` | [natCast_div_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/natcast-div-eq-divint.md) | 254 | `result-track:fcf159c69878762f30791394999369d63b3fe5c58919259cf1087deced5cd25d` |
| 56 | `theorem` | [divInt_mul_divInt_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divint-mul-divint-cancel.md) | 256 | `result-track:58eeb54e722b982534df7f072bbfcc290beeb8b2d62a895a4c3b7b475e80d44d` |
| 57 | `theorem` | [coe_int_num_of_den_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/coe-int-num-of-den-eq-one.md) | 262 | `result-track:7fcb11bd95596554fb0da7c02d14a3e5e3d70f5894759b304636cbf17ebbf37c` |
| 58 | `lemma` | [eq_num_of_isInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/eq-num-of-isint.md) | 267 | `result-track:aa99361a8df97f7ca72b4eebe04e77dec7e6b1b9c0fe8d44f824dc2b21fe9a5f` |
| 59 | `theorem` | [den_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/den-eq-one-iff.md) | 271 | `result-track:9d5b2d7eea6613456e051266568ca267b2dede3d102f5ca4e0c0e6908df2f312` |
| 60 | `instance` | [canLift](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/canlift.md) | 274 | `declaration-track:3e604d8709170c24e85e8dbe8e3c1bfe3db9b00bd6644059aead41b6c46b1d65` |
| 61 | `def` | [divCasesOn](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/declarations/divcaseson.md) | 289 | `declaration-track:5f61ccde6afdf9e8477ab89bce6a87cf32e9f6344945faf9019ca7676a798684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48289968298f19a37cd77e62e154a6e93aebe698ad8baaf05f59f5fdff5e3127 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantc743cfd4c8dfdecbd722c7efaa05a224fd631dd9366e078896d73ab594458afb.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variantc743cfd4c8dfdecbd722c7efaa05a224fd631dd9366e078896d73ab594458afb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
