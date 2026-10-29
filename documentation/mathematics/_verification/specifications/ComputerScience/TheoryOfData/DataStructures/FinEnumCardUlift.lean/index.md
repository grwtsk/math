# Verification target: Fin Enum Card Ulift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1421586941a7f039f746e22511dc3a46f9a12585",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1421586941a7f039f746e22511dc3a46f9a12585`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ProdSigma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/finenum.md) | 24 | `declaration-track:cd01766ad9424d726ad9ac81d880aa46670a87817bb947915635873df6cb737c` |
| 2 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/ofequiv.md) | 39 | `declaration-track:0abe6fd4dab07a89c77c2ecd8316854514c1f03bf5238918f161ff6bdabfe1e2` |
| 3 | `def` | [ofNodupList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/ofnoduplist.md) | 45 | `declaration-track:3b87d82bdba4435e46ea812f0e1b113dfc9cadbaa9a48094d4e5b3e2fce2f728` |
| 4 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/oflist.md) | 53 | `declaration-track:8411bc3f60eb4a55c96ff3cd958e057ce4dfe1dcc0297210bce5f37d3f748d54` |
| 5 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/tolist.md) | 57 | `declaration-track:c90c90b87ccc8646b5c05cfbc5f81d3ab0fe2898bb08a1afaa8597343c287fda` |
| 6 | `theorem` | [mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/mem-tolist.md) | 63 | `result-track:7d3ef3c417277ce65fcc31f87576af722145e37babe89acdb11fbc6824765f23` |
| 7 | `theorem` | [nodup_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/nodup-tolist.md) | 67 | `result-track:e245ec04da59b9fafbe34a962dcdebed114b63f9d1884c0bcd7c61082c860da5` |
| 8 | `def` | [ofSurjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/ofsurjective.md) | 71 | `declaration-track:b6ce3acb641d7265f38756ea022527b5d5f2d606a40534492a8a39613707d419` |
| 9 | `def` | [ofInjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/ofinjective.md) | 75 | `declaration-track:caa6236af01e141bf5dad5e30fb311bf953cc270d2840cd53f76b8648c03ca2e` |
| 10 | `instance` | [_root_.ULift.instFinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/root-ulift-instfinenum.md) | 84 | `declaration-track:cde02c624b7cb3701f2639d596f983f3769664953cdea5dd406ca400a7436342` |
| 11 | `theorem` | [card_ulift](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-ulift.md) | 88 | `result-track:f8fc1bd8e6e6f37cf979e350ddfcec7ac2362959c42462a23faaa279037e089a` |
| 12 | `lemma` | [equiv_up](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/equiv-up.md) | 94 | `result-track:6cac729cdc27fcf66f7ce31452e1f5a2e4a5affc51a6ce9ad9066e12b001e0d6` |
| 13 | `lemma` | [equiv_down](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/equiv-down.md) | 95 | `result-track:2a916a400a88c900f9b1d91fb86092f287b276c3e3a7870a3655531727e5ec97` |
| 14 | `lemma` | [up_equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/up-equiv-symm.md) | 96 | `result-track:cf37716cde88ec365675a6b9959c8f22bc33f7100e5baba818cf4c1c7b5d9b1e` |
| 15 | `lemma` | [down_equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/down-equiv-symm.md) | 97 | `result-track:4c5b049ec9d32c320cbf09cd78b7cf2ba7f23e97babeb6f99cf8d2d17364968c` |
| 16 | `instance` | [pempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/pempty.md) | 101 | `declaration-track:6323e6f6132849e7df808aec1e69fcc8f4b7b83cc30359e1c46662a431a8db21` |
| 17 | `instance` | [empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/empty.md) | 104 | `declaration-track:d6e5a537e100885458fd739bc2cffbd81190a3aa3bf47f34545ab50768931edc` |
| 18 | `instance` | [punit](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/punit.md) | 107 | `declaration-track:57aa6be37d6be88d19e59a98cefda212bd2f29cac426d72b687bb2284c4f8298` |
| 19 | `instance` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/prod.md) | 110 | `declaration-track:ab0abfdead963d67db4d66f4f2a782aa63501c45a97c5be6fb719968b54db607` |
| 20 | `instance` | [sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/sum.md) | 113 | `declaration-track:1021d06f049e925ec99f5c83a32a624ffca509360fb8fb172a65031988fb1399` |
| 21 | `instance` | [fin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/fin.md) | 116 | `declaration-track:0c68b509987acaaaac0a8c884e6db9e620516729dbe16fb068e06e01fe90f52a` |
| 22 | `theorem` | [card_fin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-fin.md) | 120 | `result-track:f84e0eb7b41903f36f4d8134e385f8e01745b1e991bac6ae1f063fce685fb412` |
| 23 | `instance` | [Quotient.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/quotient-enum.md) | 122 | `declaration-track:0f6d0554d1f7c17d19027a7d709f649a1088ad7b8dff24bca963ff070ddc9acd` |
| 24 | `def` | [Finset.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/finset-enum.md) | 127 | `declaration-track:e42cb0024113c418b3ddc9eaab0f33e16c28db641204de84fdeafd6f9bc7b85f` |
| 25 | `theorem` | [Finset.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/finset-mem-enum.md) | 134 | `result-track:7436827d1e0b06e86b547afe058b957162a4d0f3112218fad3ba2554f98b6ddb` |
| 26 | `instance` | [Finset.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/finset-finenum.md) | 145 | `declaration-track:af373f596f6f7a13d70bf55da9d495567899b93c7d53a5e52f911c2985e933ec` |
| 27 | `instance` | [Subtype.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/subtype-finenum.md) | 148 | `declaration-track:79875b65df610e816d7343b96de0869cca310861046ff67cd34379b2e1e0a560` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/instance-source-edition-3.md) | 152 | `declaration-track:d682ec919b1a645e36c7fb9f40309957cd0529e6e54e611d69e4e3641b3a602f` |
| 29 | `instance` | [PSigma.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/psigma-finenum.md) | 156 | `declaration-track:82d6afffec208c127e571f3146378296a4e9af054daf6d9b5e4c2f449e1e57fb` |
| 30 | `instance` | [PSigma.finEnumPropLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/psigma-finenumpropleft.md) | 159 | `declaration-track:025a2829b41bd2f119d7cca0f6ecb876b0702c73f31274583ef622f69499e865` |
| 31 | `instance` | [PSigma.finEnumPropRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/psigma-finenumpropright.md) | 164 | `declaration-track:1ca67853263659d5170e80907a94541efaaba0aa73e091940ddf91963e8cffcc` |
| 32 | `instance` | [PSigma.finEnumPropProp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/psigma-finenumpropprop.md) | 169 | `declaration-track:426f8078ecc2f8cc35fa987fa471cb45f3ad490028f405dd370e7c6b1bd0448a` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/instance.md) | 174 | `declaration-track:178e21a29b0bd26e3c348b047c9081986bd3243c6801a99f487057c23a6f18b0` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/instance-source-edition-5.md) | 176 | `declaration-track:ea717e71138d307c6e8734b60f28571b6b32d6be6bdeeefdb2775fbc1fb93d63` |
| 35 | `theorem` | [card_eq_fintypeCard](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-eq-fintypecard.md) | 181 | `result-track:6146eb538e34c245c2ebf129b511e93e2303aacfa15bc08d5c51c0965b0f65dc` |
| 36 | `theorem` | [card_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-unique.md) | 185 | `result-track:ae447331f9bbb42a9b0ec3a3951ef6ec8ea0b237705f826d375b7870cd2d48e7` |
| 37 | `theorem` | [card_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-eq-zero-iff.md) | 192 | `result-track:361b824983c5b25639f537550097e4b107ac5a27b58e28195f27f0c5765679af` |
| 38 | `theorem` | [card_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-eq-zero.md) | 196 | `result-track:efb192b8ade5c57dd2115df5f19a4174e0370dee7cd6d7d90b2f82ca2f1a6ff2` |
| 39 | `theorem` | [card_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-pos-iff.md) | 200 | `result-track:4a946b6c5af13b4fb229f9926a4a8ff46a6ce526c4dcd3593ad2ad5ddc04f5d3` |
| 40 | `lemma` | [card_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-pos.md) | 204 | `result-track:47294d406b79b29e31ab4e77828e8b14a099b2c90824f594010ca82aaa1d9c39` |
| 41 | `lemma` | [card_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-ne-zero.md) | 208 | `result-track:d9a04b88ad011e2f234962f4c956ddd27f83e89e858be91d09bbb4a749b4600c` |
| 42 | `theorem` | [card_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/card-eq-one.md) | 211 | `result-track:0330706cfcf634b832f0b5e98fccba7dc266d80b46fbd4a4ffd550a3debc4ee0` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/instance-source-edition-4.md) | 214 | `declaration-track:dd3d232193c3ac508cd9c76e8a8c607e0f218588185a47c8257c811413c15696` |
| 44 | `def` | [ofIsEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/ofisempty.md) | 227 | `declaration-track:41a509bd4e48c2410b74cb3e0b4c0e7d5d1fa7ee1ffdbdaeb4244ec535f11016` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/instance-source-edition-2.md) | 229 | `declaration-track:449948cd6a558736a80e0e4e8163273f445ee3a65fc60a4d2c454fe621331947` |
| 46 | `def` | [ofUnique](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/ofunique.md) | 243 | `declaration-track:2a61fb5d41f403b042586fe62a0eb37be5370a506770c1be56a52f9f8327c832` |
| 47 | `theorem` | [mem_pi_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/mem-pi-tolist.md) | 251 | `result-track:61dd6f6fe8770f703128bcea625fb767b58e63420f3278533daf66bae4bccbdc` |
| 48 | `def` | [Pi.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/pi-enum.md) | 256 | `declaration-track:0c7dcbcf51514cae55fc24548f96a45a4e355e8f04106cb930381b0b3389004d` |
| 49 | `theorem` | [Pi.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/pi-mem-enum.md) | 259 | `result-track:e957a5475c28f491d6b865d56b92fbe2cc0e33f6697ad4c912472f2d627c8540` |
| 50 | `instance` | [Pi.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/pi-finenum.md) | 262 | `declaration-track:a750deda79e39b01d44b2258ec6fdf3a86003444a7aa380b593e9e65feaca13d` |
| 51 | `instance` | [pfunFinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/declarations/pfunfinenum.md) | 265 | `declaration-track:e0bd67184826863588226ef7ebdee32265733c0ff97cbd6dee408adf37ef4a75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9404ab6063654ce4c2d7f09542f7cbbb055e61a26432c9e9c6857730595bb349 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
