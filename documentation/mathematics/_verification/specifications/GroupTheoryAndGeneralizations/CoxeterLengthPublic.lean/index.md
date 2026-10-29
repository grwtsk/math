# Verification target: Coxeter Length Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cc79d848f0873586949bb6d035eccbf9831a171",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant259b3f23c3692379bcb7a3d17cc62240645f91b100e63e2cc08d0de4a2db8ed9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cc79d848f0873586949bb6d035eccbf9831a171`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant259b3f23c3692379bcb7a3d17cc62240645f91b100e63e2cc08d0de4a2db8ed9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant259b3f23c3692379bcb7a3d17cc62240645f91b100e63e2cc08d0de4a2db8ed9.lean.json)

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
| 1 | `theorem` | [exists_word_with_prod](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/exists-word-with-prod.md) | 68 | `result-track:2325400402e90b3ed0adda4f837e349438b7904bbdaf2adc84265d99b4988ba6` |
| 2 | `def` | [length](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length.md) | 75 | `declaration-track:cc58adc434512fce85f87bd4d96dff482af7ec5056a48637ac6fcce8303e6bfa` |
| 3 | `def` | [IsReduced](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isreduced.md) | 81 | `declaration-track:fa35d070f34aceceabf1401a326dc1e1986dfbd80a663f358059463640bf2028` |
| 4 | `theorem` | [IsReduced.eq](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isreduced-eq.md) | 83 | `result-track:ca100e96bde2a7cdb2cd96943ddcbcf27c7dacf708c03690ba8cf03638b7cc68` |
| 5 | `theorem` | [exists_isReduced](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/exists-isreduced.md) | 85 | `result-track:662e277bb09fedf7ef3d025cb28d8f87483001545727954707445eb0d8b5217d` |
| 6 | `theorem` | [length_wordProd_le](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-wordprod-le.md) | 93 | `result-track:0e3adb5a7f1277cb58c1fdf57c7cdb2599730fd4477e6ded60c1bf0ecdfbe734` |
| 7 | `theorem` | [length_one](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-one.md) | 97 | `result-track:3fefc619d5e1a8b2edc2a400f22136bd32cf053a9b0bb4e31cae76679d671d01` |
| 8 | `theorem` | [length_eq_zero_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-eq-zero-iff.md) | 100 | `result-track:603d119096123db79ef71887b6a899c1623460b1efe04e838831fb489025d4eb` |
| 9 | `theorem` | [length_inv](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-inv.md) | 110 | `result-track:c0d7de90acfa23f513ed0d5f320553b451b4db405813a360e12736b8ee9f5d33` |
| 10 | `theorem` | [length_mul_le](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-mul-le.md) | 119 | `result-track:463234ce4a5fe94f04f11539a9cc535de857838df2918f374f58678ac70958bd` |
| 11 | `theorem` | [length_le_length_mul_add_left](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-le-length-mul-add-left.md) | 125 | `result-track:266e3f67898c8f7c53a2e5254c246ef0db5ce6d7010d20f510f722f5cee5f853` |
| 12 | `theorem` | [length_le_length_mul_add_right](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-le-length-mul-add-right.md) | 128 | `result-track:ce85b97e4c7ee223f99549ef9163079be398c3a289fa11f4d460f9cce0749385` |
| 13 | `theorem` | [length_mul_ge_length_sub_length](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-mul-ge-length-sub-length.md) | 132 | `result-track:6682172306afa614c995a1bc968767d1b5945c28c1b2a6f916fe49326706ea48` |
| 14 | `theorem` | [length_mul_ge_length_sub_length'](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-mul-ge-length-sub-length-source-edition-2.md) | 136 | `result-track:a780686a582dd824b8fbeaf8608f9dd0ed214fb2136e103c7a5b281f192c1dc7` |
| 15 | `theorem` | [length_mul_ge_max](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-mul-ge-max.md) | 141 | `result-track:eea4a785e7f1f2f57c54b0c76cb547acc2c7e55189421b26682842fecd044b65` |
| 16 | `def` | [lengthParity](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/lengthparity.md) | 146 | `declaration-track:ce52b3f2d4f0f0e9067de26c2176be30ccd7c0aee78a215df68d11ab44025789` |
| 17 | `theorem` | [lengthParity_simple](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/lengthparity-simple.md) | 150 | `result-track:47e20d218631f66121212e59ecb0b36b424c0d8e7aabb5c62b887b040388fc52` |
| 18 | `theorem` | [lengthParity_comp_simple](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/lengthparity-comp-simple.md) | 153 | `result-track:3ce0b955e4fee1d5a9eee6601c08d59e709d54c5073313b199fbeeed2e577e73` |
| 19 | `theorem` | [lengthParity_eq_ofAdd_length](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/lengthparity-eq-ofadd-length.md) | 156 | `result-track:7b01cf5072ea310d1e6b1319389102738c1156a07a7f1f9167e146a36f71fc2b` |
| 20 | `theorem` | [length_mul_mod_two](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-mul-mod-two.md) | 162 | `result-track:11a61faa290650b60949530e8cd6b6f590f182d3765d478020adb6bfdac88720` |
| 21 | `theorem` | [length_simple](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-simple.md) | 167 | `result-track:0677b38deeda57014d1c8416231e520bf5eec25990dcb28d70ec0b1044d8634d` |
| 22 | `theorem` | [length_eq_one_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-eq-one-iff.md) | 177 | `result-track:cf54b7ed9b15e7ac98328b7df9a38f038196ed07b438204c4b53dc4edfc05193` |
| 23 | `theorem` | [length_mul_simple_ne](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-mul-simple-ne.md) | 186 | `result-track:6c33b53aaa7373be7ffd48376aeccf89d24e7578658ec401f497172108a425e6` |
| 24 | `theorem` | [length_simple_mul_ne](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-simple-mul-ne.md) | 192 | `result-track:1341102212549e2a7f28e5ba987194f594f5bfebf50639181fee331b95bfc611` |
| 25 | `theorem` | [length_mul_simple](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-mul-simple.md) | 196 | `result-track:07a202df8f8ced0759268af0118641d74f4666ebfaef15c04d86bcec9fe1aae8` |
| 26 | `theorem` | [length_simple_mul](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/length-simple-mul.md) | 203 | `result-track:dba3f0da679870d8e7ed80f0c194325211d062a3cecf0e61633186058160c1ab` |
| 27 | `theorem` | [isReduced_reverse_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isreduced-reverse-iff.md) | 210 | `result-track:8f165f8e21955310b397fcf504fbeea55c4073c69022d39eb24aac5ae04e17cd` |
| 28 | `theorem` | [IsReduced.reverse](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isreduced-reverse.md) | 213 | `result-track:b8e08423e13f53827a8b92aaf765342c6e1bd9cf836160f65c95815c599ba02d` |
| 29 | `theorem` | [isReduced_take_and_drop](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isreduced-take-and-drop.md) | 218 | `result-track:7c6fb23c03031c45d0e13206ce267b1fcb475b98a13bb37a3901baf334765178` |
| 30 | `theorem` | [IsReduced.take](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isreduced-take.md) | 231 | `result-track:85c8a8664e20c2d913bfc4e4d71e598b5a8964ef6615a12e32d058b6581a4fc2` |
| 31 | `theorem` | [IsReduced.drop](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isreduced-drop.md) | 235 | `result-track:e2f0d21b92b8cae15c96f602851ed7f0453fee7d834386bc937d4ce4e51d8a3b` |
| 32 | `theorem` | [not_isReduced_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/not-isreduced-alternatingword.md) | 239 | `result-track:308fb2829d47396cc12ec4514a1fbe9ac143d2c5d40cc301f619f774be568c5b` |
| 33 | `def` | [IsLeftDescent](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isleftdescent.md) | 266 | `declaration-track:bbf53c6a8320bd5f36608e3882c906679b1dfc7d235700ff74a6386478c647a1` |
| 34 | `def` | [IsRightDescent](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isrightdescent.md) | 269 | `declaration-track:3075edc8ad58b420f1920815cc1d9b2fbc45dc4e6aeac63098ef2d7366bdc6de` |
| 35 | `theorem` | [not_isLeftDescent_one](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/not-isleftdescent-one.md) | 271 | `result-track:b2451fce5eaca74ebf2999a70edee5a6123dacfec10d33e1644a34e2df982328` |
| 36 | `theorem` | [not_isRightDescent_one](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/not-isrightdescent-one.md) | 273 | `result-track:ecda143afc8b36a5556a4dab6d9b942768293d04581a24af16c848dadb6e0604` |
| 37 | `theorem` | [isLeftDescent_inv_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isleftdescent-inv-iff.md) | 275 | `result-track:79640373f426d9c222217ad828f2747312cec8024a659ad11dbe15d3651eb92b` |
| 38 | `theorem` | [isRightDescent_inv_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isrightdescent-inv-iff.md) | 281 | `result-track:9cb2b721aeb13bbf6e2d5b4065ba6a40adeb9a3a942f3035ac26f14e45d42bee` |
| 39 | `theorem` | [exists_leftDescent_of_ne_one](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/exists-leftdescent-of-ne-one.md) | 285 | `result-track:e13e1a85b324640571bc32697e40bf17566cfaa82b51eaa6ae13f52b0bea55a4` |
| 40 | `theorem` | [exists_rightDescent_of_ne_one](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/exists-rightdescent-of-ne-one.md) | 295 | `result-track:48e1481ac556ba271cef97dce05b4102ea9947305ed0035ce58fcb3e1c08a8d4` |
| 41 | `theorem` | [isLeftDescent_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isleftdescent-iff.md) | 300 | `result-track:de89c541b3cd17d2eab63b6a2963e940cde9da601ffbbd64866c3c2560b7af61` |
| 42 | `theorem` | [not_isLeftDescent_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/not-isleftdescent-iff.md) | 308 | `result-track:27877e4d63731ac97aad0cb00afeda3f600c22decf4e4780f293e4ef0245f9cb` |
| 43 | `theorem` | [isRightDescent_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isrightdescent-iff.md) | 316 | `result-track:6c2de090d68bb43521043ceea5537718a9bf7bea8680652495c9be6625d25ec5` |
| 44 | `theorem` | [not_isRightDescent_iff](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/not-isrightdescent-iff.md) | 324 | `result-track:19041ad125885af82c09e8773e8502871b336a62bb543f2df86b081ecac596ac` |
| 45 | `theorem` | [isLeftDescent_iff_not_isLeftDescent_mul](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isleftdescent-iff-not-isleftdescent-mul.md) | 332 | `result-track:350de16953653031be8e5a0908db187b3973b3231888ef7093a6a1651c6ff67b` |
| 46 | `theorem` | [isRightDescent_iff_not_isRightDescent_mul](../../../../GroupTheoryAndGeneralizations/CoxeterLengthPublic.lean/declarations/isrightdescent-iff-not-isrightdescent-mul.md) | 337 | `result-track:3e012c7f4304f1e0ac8d2ff5b04e1f51a2cb0fb491017a27267122ed9f8ea5e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49b90c0a031a79b0cb55df1bd99b9a98a2c73dff14cf11b4d401856da3a55c61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant259b3f23c3692379bcb7a3d17cc62240645f91b100e63e2cc08d0de4a2db8ed9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant259b3f23c3692379bcb7a3d17cc62240645f91b100e63e2cc08d0de4a2db8ed9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
