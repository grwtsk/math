# Verification target: Mul Character

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a21a112559eabc4d31e5be632f53c9e6b833fd56",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variant275997909726b09b4645560ce8dd3e68aa0671411d5898b44e21f5f0e31d6789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/MulCharacter.lean/index.md) · [Full source](../../../../NumberTheory/MulCharacter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a21a112559eabc4d31e5be632f53c9e6b833fd56`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variant275997909726b09b4645560ce8dd3e68aa0671411d5898b44e21f5f0e31d6789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MulCharacter/Variant275997909726b09b4645560ce8dd3e68aa0671411d5898b44e21f5f0e31d6789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Instances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MulChar](../../../../NumberTheory/MulCharacter.lean/declarations/mulchar.md) | 70 | `declaration-track:6ab15fec6a6878dd5ac9106f8c13f4340d432019852ba16c338d389edfd549da` |
| 2 | `instance` | [funLike](../../../../NumberTheory/MulCharacter.lean/declarations/funlike.md) | 74 | `declaration-track:d9f21c2da7e03fbf155c58c5422fa0a1edd5ef2e889a81096b4f4b5eb203ba26` |
| 3 | `class` | [MulCharClass](../../../../NumberTheory/MulCharacter.lean/declarations/mulcharclass.md) | 79 | `declaration-track:1adb3578975de8916276f383b49537b80467966e32de89445f98a4c7121b4b27` |
| 4 | `def` | [trivial](../../../../NumberTheory/MulCharacter.lean/declarations/trivial.md) | 107 | `declaration-track:481294ac0f50a9927125bf7864ca1b49d7d1d67ecc89e89d751ee6e91513710d` |
| 5 | `theorem` | [coe_mk](../../../../NumberTheory/MulCharacter.lean/declarations/coe-mk.md) | 123 | `result-track:7a36c1acd1c71f4a720d30c007fd2efebadf3c2f68558441c68f5ef389447f6f` |
| 6 | `theorem` | [ext'](../../../../NumberTheory/MulCharacter.lean/declarations/ext-source-edition-2.md) | 128 | `result-track:7ce89dc527b7e503f97c2174ec003970e0a5f33c650ce7a68f60e023f0002635` |
| 7 | `instance` | [(anonymous)](../../../../NumberTheory/MulCharacter.lean/declarations/instance.md) | 135 | `declaration-track:abb4f7f3a13dc4f49ff085ea7f983f8ca0384e6dccecf95027159c6f6283248b` |
| 8 | `theorem` | [map_nonunit](../../../../NumberTheory/MulCharacter.lean/declarations/map-nonunit.md) | 142 | `result-track:9d668f1cec3ed0e090805b115a5258997da96cad0ec6e383173400d701d919e9` |
| 9 | `theorem` | [ext](../../../../NumberTheory/MulCharacter.lean/declarations/ext.md) | 149 | `result-track:21dc9000d179244b896c507797a718f15f9dbcabaf8349f69b54ee6f3b8dcb25` |
| 10 | `theorem` | [ext_iff](../../../../NumberTheory/MulCharacter.lean/declarations/ext-iff.md) | 157 | `result-track:60e61c28ef927bb7693a23c7dce765f3aabb2480fbb3be8967877b13d85fde3c` |
| 11 | `def` | [toUnitHom](../../../../NumberTheory/MulCharacter.lean/declarations/tounithom.md) | 172 | `declaration-track:0bb82fb9d6927c92eb31adb24abb194460e3454e0fc211c997f1ecb9d9940c3c` |
| 12 | `theorem` | [coe_toUnitHom](../../../../NumberTheory/MulCharacter.lean/declarations/coe-tounithom.md) | 176 | `result-track:f00fa2c3e690410c138fc8a79fb3194d1f794d50e1596a83a710b5adf26f9aff` |
| 13 | `def` | [ofUnitHom](../../../../NumberTheory/MulCharacter.lean/declarations/ofunithom.md) | 181 | `declaration-track:d826be1f780fd7ed663157299515061073dcc23a501a3a27cecfa13806b85296` |
| 14 | `theorem` | [ofUnitHom_coe](../../../../NumberTheory/MulCharacter.lean/declarations/ofunithom-coe.md) | 203 | `result-track:6dc0612eb779e176298a1dff54607c9a09f0f196e5527b585c793a6bf534ec30` |
| 15 | `def` | [equivToUnitHom](../../../../NumberTheory/MulCharacter.lean/declarations/equivtounithom.md) | 207 | `declaration-track:2595f42330f734bb7f8fa5e31ea205d6c2fdc0aed83e3aa5e3cdabb83d7cdb00` |
| 16 | `theorem` | [toUnitHom_eq](../../../../NumberTheory/MulCharacter.lean/declarations/tounithom-eq.md) | 221 | `result-track:fc7b559fc014ae025f429c963d71314010e4266bbc109ffd3ed85790bea55c1d` |
| 17 | `theorem` | [ofUnitHom_eq](../../../../NumberTheory/MulCharacter.lean/declarations/ofunithom-eq.md) | 226 | `result-track:f6e4bf81e5eccaacb7239e5b5b10bbad4e0c0b92ae9c7ce4acb2c57f28871fc2` |
| 18 | `theorem` | [coe_equivToUnitHom](../../../../NumberTheory/MulCharacter.lean/declarations/coe-equivtounithom.md) | 231 | `result-track:230055491494c5d1e4d7fa107d86c12f2460f3da65c6b66b3707c8eb1856c3fd` |
| 19 | `theorem` | [equivToUnitHom_symm_coe](../../../../NumberTheory/MulCharacter.lean/declarations/equivtounithom-symm-coe.md) | 236 | `result-track:cb5d781895f959b13847f002927d047d4298464bcd1aeba8c4e4413080fe5401` |
| 20 | `theorem` | [map_one](../../../../NumberTheory/MulCharacter.lean/declarations/map-one.md) | 247 | `result-track:7d79c4ad561b5262d7e3e1373ce864137970e6c613a7c26b0e1f649a4d25159f` |
| 21 | `theorem` | [map_zero](../../../../NumberTheory/MulCharacter.lean/declarations/map-zero.md) | 252 | `result-track:42a93bad08b4fdedf9cf2733bc386d8ab5a7f34396141983587b5d6887b6267e` |
| 22 | `theorem` | [map_ringChar](../../../../NumberTheory/MulCharacter.lean/declarations/map-ringchar.md) | 257 | `result-track:c523f2a0b10b85b95d84ed04f44a086f5c5cc1d93ef3eaa8e2c312cd84872dd7` |
| 23 | `instance` | [hasOne](../../../../NumberTheory/MulCharacter.lean/declarations/hasone.md) | 261 | `declaration-track:242cafe01fd3b4decc55ed0b446d01758503556130b77a38e537ad033f3b8e30` |
| 24 | `instance` | [inhabited](../../../../NumberTheory/MulCharacter.lean/declarations/inhabited.md) | 265 | `declaration-track:c3a9b14d097e9aeb3856c02e721e0294dc62a2e646524846d61f389e35f7f780` |
| 25 | `theorem` | [one_apply_coe](../../../../NumberTheory/MulCharacter.lean/declarations/one-apply-coe.md) | 271 | `result-track:c885c1c87f2f4cc2847ebfe40a241d88d16bc8a43e7ed72e211554cb233621eb` |
| 26 | `def` | [mul](../../../../NumberTheory/MulCharacter.lean/declarations/mul.md) | 275 | `declaration-track:6d164ca9a986dd6d91d3d303d3f11bef9882ae51863585dd792c796ad6e7733e` |
| 27 | `instance` | [hasMul](../../../../NumberTheory/MulCharacter.lean/declarations/hasmul.md) | 281 | `declaration-track:de4ecaa2ef56e1bd5641862358886abe3aa1d37f0dacabd1c51c8aa183df7437` |
| 28 | `theorem` | [mul_apply](../../../../NumberTheory/MulCharacter.lean/declarations/mul-apply.md) | 285 | `result-track:e03b65778f232c0a38fa5eca627ac70f031f284e716af3dd92ba8e439676cac2` |
| 29 | `theorem` | [coeToFun_mul](../../../../NumberTheory/MulCharacter.lean/declarations/coetofun-mul.md) | 290 | `result-track:386c905e5af8eb7a77402277d30457edea5af181a5f82877f51e04a8f0b0026d` |
| 30 | `theorem` | [one_mul](../../../../NumberTheory/MulCharacter.lean/declarations/one-mul.md) | 294 | `result-track:18d798b01df938ea9eb40ed6d3687a3a2bc0d47f5dc0b0a64918a819decc6063` |
| 31 | `theorem` | [mul_one](../../../../NumberTheory/MulCharacter.lean/declarations/mul-one.md) | 299 | `result-track:6207eda55630668f0eebe926b78af0aff64ab89fe8e5d2298a960005d1ed3b3e` |
| 32 | `def` | [inv](../../../../NumberTheory/MulCharacter.lean/declarations/inv.md) | 305 | `declaration-track:13116df816d69ed43d257119b634bcaa73e1030e2da8de112f7fa5634cef1490` |
| 33 | `instance` | [hasInv](../../../../NumberTheory/MulCharacter.lean/declarations/hasinv.md) | 311 | `declaration-track:2e17f3a2edbf930886cbd520610b6a1211f5de4e8c0e4db7ce94dd93a1602652` |
| 34 | `theorem` | [inv_apply_eq_inv](../../../../NumberTheory/MulCharacter.lean/declarations/inv-apply-eq-inv-source-edition-2.md) | 316 | `result-track:6caedf8cdf834bf3779096e083964dc36b4fe09c2925c305ab03aff1ff361c5d` |
| 35 | `theorem` | [inv_apply_eq_inv'](../../../../NumberTheory/MulCharacter.lean/declarations/inv-apply-eq-inv.md) | 322 | `result-track:3ed57815cc16fa89137a51b1feb2d967aa5f8d0cf155bc54638b1353a2aee37b` |
| 36 | `theorem` | [inv_apply](../../../../NumberTheory/MulCharacter.lean/declarations/inv-apply-source-edition-2.md) | 328 | `result-track:bb4e790d5c2d2779f4f045d3fce36a8e89f9172d77867bcde1703a1aff0f74c4` |
| 37 | `theorem` | [inv_apply'](../../../../NumberTheory/MulCharacter.lean/declarations/inv-apply.md) | 348 | `result-track:08c2c130047c12dc129aa614e861338bdb1eae11847c7f546fdd71166be6fd78` |
| 38 | `theorem` | [inv_mul](../../../../NumberTheory/MulCharacter.lean/declarations/inv-mul.md) | 354 | `result-track:828321235f21d0dc228012c098a6c4edddfc96de903a178a70ca86a3951508ca` |
| 39 | `instance` | [commGroup](../../../../NumberTheory/MulCharacter.lean/declarations/commgroup.md) | 364 | `declaration-track:8eac749cef0241b2c4cc1987fb44c466e7ab88404b29443f308c840ba2b4133c` |
| 40 | `theorem` | [pow_apply_coe](../../../../NumberTheory/MulCharacter.lean/declarations/pow-apply-coe.md) | 382 | `result-track:1bd209b17d263014bdc17b5969dd002a486f22a2f74dbbae9c2da5bffc89e0c2` |
| 41 | `theorem` | [pow_apply'](../../../../NumberTheory/MulCharacter.lean/declarations/pow-apply.md) | 389 | `result-track:d157d341d5446040a54c2d6514e373187f4de494506d0cf3947a1c0efe79028e` |
| 42 | `def` | [IsNontrivial](../../../../NumberTheory/MulCharacter.lean/declarations/isnontrivial.md) | 420 | `declaration-track:fbd3c9e5eefcf34073a133d297ab3f6924dd49014f2905321b5f236df2fc1c95` |
| 43 | `theorem` | [isNontrivial_iff](../../../../NumberTheory/MulCharacter.lean/declarations/isnontrivial-iff.md) | 425 | `result-track:3425e34f4bce688e01358a917d3b42d79f2e0897eb22d1ded1aa89ebea7fb85b` |
| 44 | `def` | [IsQuadratic](../../../../NumberTheory/MulCharacter.lean/declarations/isquadratic.md) | 430 | `declaration-track:f475fb320b42fd8f7463c1a7ee202a55c6f8b555107b6a2abf95c4a60e880fba` |
| 45 | `theorem` | [IsQuadratic.eq_of_eq_coe](../../../../NumberTheory/MulCharacter.lean/declarations/isquadratic-eq-of-eq-coe.md) | 436 | `result-track:e1b2b5cd32007708102d52f2cffb4bcded3c8ae127ad2ab5483e31bd8ca14ad3` |
| 46 | `def` | [ringHomComp](../../../../NumberTheory/MulCharacter.lean/declarations/ringhomcomp.md) | 444 | `declaration-track:d494fbf8991c20ee6dca1be640adb8bf2a5ddd4b47866c1bcbe22280cf215978` |
| 47 | `theorem` | [IsNontrivial.comp](../../../../NumberTheory/MulCharacter.lean/declarations/isnontrivial-comp.md) | 451 | `result-track:334ae236fe1c2bbc00aa5841c1c248b5e94205de8a08c1012cc050d5b9c38aa0` |
| 48 | `theorem` | [IsQuadratic.comp](../../../../NumberTheory/MulCharacter.lean/declarations/isquadratic-comp.md) | 460 | `result-track:7a29941bb8b991ffcfe2ce3213335492349d3b2cf65d8fea1668e9572aefd0e7` |
| 49 | `theorem` | [IsQuadratic.inv](../../../../NumberTheory/MulCharacter.lean/declarations/isquadratic-inv.md) | 467 | `result-track:779c0cf6efbcec7cea5a9f379f13b5434077cd73f19c6189e244be5b77516a91` |
| 50 | `theorem` | [IsQuadratic.sq_eq_one](../../../../NumberTheory/MulCharacter.lean/declarations/isquadratic-sq-eq-one.md) | 480 | `result-track:ad0acb346453dd50ede38b502c83693b6ac20521dbd3505442b00f24176fe353` |
| 51 | `theorem` | [IsQuadratic.pow_char](../../../../NumberTheory/MulCharacter.lean/declarations/isquadratic-pow-char.md) | 486 | `result-track:9d6913dbb56e95ee1b460d66ebe52c9222e8451a39cd4145e618a2e0e3aab116` |
| 52 | `theorem` | [IsQuadratic.pow_even](../../../../NumberTheory/MulCharacter.lean/declarations/isquadratic-pow-even.md) | 497 | `result-track:d145242101f87423654e0d9379458f16762de19c6545d26dfdd1bbdb9055d8c0` |
| 53 | `theorem` | [IsQuadratic.pow_odd](../../../../NumberTheory/MulCharacter.lean/declarations/isquadratic-pow-odd.md) | 504 | `result-track:0cb565848aa874de59ffb6c4d7d5fe843c86f161519a47496b5f512294ba70aa` |
| 54 | `theorem` | [IsNontrivial.sum_eq_zero](../../../../NumberTheory/MulCharacter.lean/declarations/isnontrivial-sum-eq-zero.md) | 514 | `result-track:6e71020d62aeecf928b88f8377cd4130cd9b661784041591ba4c464c2319c40c` |
| 55 | `theorem` | [sum_one_eq_card_units](../../../../NumberTheory/MulCharacter.lean/declarations/sum-one-eq-card-units.md) | 525 | `result-track:3496ffcdda19809fb98b4254a6127a454290bf7343440568d63cd2c40ebbf12a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7daf08a5c79079cfd4204d8ba2c7d0d916e81846b185831efc4cd324a3ffac8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variant275997909726b09b4645560ce8dd3e68aa0671411d5898b44e21f5f0e31d6789.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/MulCharacter/Variant275997909726b09b4645560ce8dd3e68aa0671411d5898b44e21f5f0e31d6789.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
