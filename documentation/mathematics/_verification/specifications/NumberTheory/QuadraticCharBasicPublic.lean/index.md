# Verification target: Quadratic Char Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4574d7e5f25ab57e02030c01b069d85ad8646c01",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/QuadraticCharBasicPublic.lean/index.md) · [Full source](../../../../NumberTheory/QuadraticCharBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4574d7e5f25ab57e02030c01b069d85ad8646c01`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean.json)

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
| 1 | `def` | [quadraticCharFun](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticcharfun.md) | 45 | `declaration-track:9b326032962025f0d0449c247e1a8ced0429e6b725dac6e853ed491ab7a461cb` |
| 2 | `theorem` | [quadraticCharFun_eq_zero_iff](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticcharfun-eq-zero-iff.md) | 67 | `result-track:d1d739e0d271e5a451d8e6e4621759c6ccb0dacd6e287989eec080bad8403d1e` |
| 3 | `theorem` | [quadraticCharFun_zero](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticcharfun-zero.md) | 72 | `result-track:4bb18043d72cdd544611a1b6f586a14b3b4d65203d0f0e2fbdb9213e414318c4` |
| 4 | `theorem` | [quadraticCharFun_one](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticcharfun-one.md) | 76 | `result-track:e40d1a151c2d25419645cac5222380593d454e8f61726a67a014675337fe7c8c` |
| 5 | `theorem` | [quadraticCharFun_eq_one_of_char_two](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticcharfun-eq-one-of-char-two.md) | 80 | `result-track:7d05f63c376deac3ad976638420781ceb8158e78a9d68458a9863bc89cbd40c9` |
| 6 | `theorem` | [quadraticCharFun_eq_pow_of_char_ne_two](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticcharfun-eq-pow-of-char-ne-two.md) | 87 | `result-track:e796610957d2c28461d729ad7d9108710c9c6bf3ddb887fac65a3f279b4b8159` |
| 7 | `theorem` | [quadraticCharFun_mul](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticcharfun-mul.md) | 93 | `result-track:b54f965b2dee39ea070881612c6691c4e7e2289d0d87d1a0de4559cc3581dea7` |
| 8 | `def` | [quadraticChar](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar.md) | 120 | `declaration-track:72a5ac915418787ef4e0a7940445a8b85cb7b5a6f274632ad281f0ea508bbef1` |
| 9 | `theorem` | [quadraticChar_eq_zero_iff](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-eq-zero-iff.md) | 127 | `result-track:80784004685dfcab911716e62ecb73dcc57c85a44b1bba8a0b7476fdf5ab1c05` |
| 10 | `theorem` | [quadraticChar_zero](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-zero.md) | 130 | `result-track:10b0d4defcae159ec5885dc83c844064354d437bbea8e6fe1c1770a40fcb4246` |
| 11 | `theorem` | [quadraticChar_one_iff_isSquare](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-one-iff-issquare.md) | 134 | `result-track:c97a49d84fdc282607cdaca3ed4213ac98cab1b5b488267ce87d2fe66222634f` |
| 12 | `theorem` | [quadraticChar_sq_one'](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-sq-one-source-edition-2.md) | 140 | `result-track:f4992cbdf6eecb4ffe2268fcc815c38f697512bbdc6c46f80c846a7578b61245` |
| 13 | `theorem` | [quadraticChar_sq_one](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-sq-one.md) | 145 | `result-track:02ad7387c96f74198efe9f487457519767e5a8385a9ebdf390309acc40e837bc` |
| 14 | `theorem` | [quadraticChar_dichotomy](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-dichotomy.md) | 149 | `result-track:feb0517f520e48e525a753b72995a9fdd715e26a3970640226ee1fea2a289ff3` |
| 15 | `theorem` | [quadraticChar_eq_neg_one_iff_not_one](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-eq-neg-one-iff-not-one.md) | 154 | `result-track:8365294dbd239d27079487fd9d0eb551f7b9ea62ee55dbfd532daaa2dc5d5a74` |
| 16 | `theorem` | [quadraticChar_neg_one_iff_not_isSquare](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-neg-one-iff-not-issquare.md) | 159 | `result-track:3df6e945af1be570358cf2d3d0542efe511320158d4c4afaeab4363ad4bd4146` |
| 17 | `theorem` | [quadraticChar_exists_neg_one](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-exists-neg-one.md) | 165 | `result-track:64fac631d0c713b6050c1db2984196f311030791114fe38dc0507df6e84d9b9f` |
| 18 | `lemma` | [quadraticChar_exists_neg_one'](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-exists-neg-one-source-edition-2.md) | 169 | `result-track:91793090a28a0d79aadf10274a6ce06d860a1e97c87ccae61f5ad04340157801` |
| 19 | `theorem` | [quadraticChar_eq_one_of_char_two](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-eq-one-of-char-two.md) | 175 | `result-track:079de3275fbe61b78637f42f624bc1b855b86ddbae73abc93f9d182781d57426` |
| 20 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-eq-pow-of-char-ne-two.md) | 181 | `result-track:46cb4de2acecf50b731f838de12ad520a05a5657392e6bc84674ebce84b6f982` |
| 21 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two'](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-eq-pow-of-char-ne-two-source-edition-2.md) | 185 | `result-track:b3efcbb31a4001a45275739972fb732f118202c1ace4df3ca50662497b59a31e` |
| 22 | `theorem` | [quadraticChar_isQuadratic](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-isquadratic.md) | 199 | `result-track:357bbcd702af95ab7c2a211d7468b761b00614234cf5a8d0173625874e944231` |
| 23 | `theorem` | [quadraticChar_ne_one](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-ne-one.md) | 207 | `result-track:bc47a1066b0abad2a71c5dcacc2744e1d85381efd795487b86eb9ad0934bdb75` |
| 24 | `theorem` | [quadraticChar_card_sqrts](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-card-sqrts.md) | 214 | `result-track:0bb918e69300500b7d64254af08ad1c6522f6e39c236ea348ff91a882fbfd0ab` |
| 25 | `theorem` | [quadraticChar_sum_zero](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-sum-zero.md) | 239 | `result-track:70d65a603d2060e676feaf6cb71022bf10f6b1d4e3edf3e8dbed417929c981bc` |
| 26 | `theorem` | [quadraticChar_neg_one](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/quadraticchar-neg-one.md) | 258 | `result-track:8d85609d12728731a4bcf0bf4c818b30d911ac8fb758b104fd15dcea7637690d` |
| 27 | `theorem` | [FiniteField.isSquare_neg_one_iff](../../../../NumberTheory/QuadraticCharBasicPublic.lean/declarations/finitefield-issquare-neg-one-iff.md) | 268 | `result-track:183f3487cb70590246a759854fab8ff49e0952171464670fc1846231b3a6cd6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a864805c086c6cb810f196a7a851c492554dc03b0b696f0f2fcf6f25a5546a2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
