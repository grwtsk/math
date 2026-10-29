# Verification target: Int Mod Eq Namespaced Coe Nat Mod Eq Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20eba0dd8c82ba864919d993fb08f2597dbf4e1f",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20eba0dd8c82ba864919d993fb08f2597dbf4e1f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Int.DivMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModEq](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq.md) | 39 | `declaration-track:5718c4aef91e519e002778e644bbc20ef831f9ab3595c95ba6eef37db8a50f97` |
| 2 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/instance-source-edition-2.md) | 49 | `declaration-track:4c9a822c526be19a3e841c7ed669493a907e648d634ce535f4fd391da0457164` |
| 3 | `theorem` | [refl](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/refl.md) | 54 | `result-track:1d139b7608def12e0000b2c5e8ee39621010d63445e63fc480e532d21ebfc180` |
| 4 | `theorem` | [rfl](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/rfl.md) | 58 | `result-track:30a79df067115bd6d7c69c0466d586a0506d342e883377e7505ca72cdd720e89` |
| 5 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:f4799e65f81411ed520e4497b46937ec43b07334a810d7047397e8ada6dba3b2` |
| 6 | `theorem` | [symm](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/symm.md) | 66 | `result-track:7df4079065ff784f1bb26ea31a3007b1ec7c747a04fa8369d2d5767667300dfd` |
| 7 | `theorem` | [trans](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/trans.md) | 71 | `result-track:f8f5c586f34f941bc97bdac4100771c740522c02e87040bcb7e4805adc3e7f22` |
| 8 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/instance.md) | 75 | `declaration-track:0befc1f91b9f2f5c7e202aec10876691962a3fcabef0a94f3e4e56a8fab7efd3` |
| 9 | `theorem` | [eq](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/eq.md) | 78 | `result-track:ade5368767a4b1ac070b312d710d434048c2bd33d7bfbff5d2caa8cc869e17dd` |
| 10 | `theorem` | [modEq_comm](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-comm.md) | 83 | `result-track:d5ff9f576673bdaa1e00c8362fdbdeb39c49844eeee4a7f295ccf3f879a30bf8` |
| 11 | `theorem` | [coe_nat_modEq_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/coe-nat-modeq-iff.md) | 86 | `result-track:c815fd215c12645d3ce8a2a5169f8c71160ce702062bbe1832f5769bf600de91` |
| 12 | `theorem` | [modEq_zero_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-zero-iff-dvd.md) | 90 | `result-track:42f5fa312ff03e8b2c53befc168ea3da440a2e2d8c44bc0b2e27c91d39bfb498` |
| 13 | `theorem` | [Int Mod Eq Namespaced Coe Nat Mod Eq Iff](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-modeq-varian.md) | 94 | `result-track:2d695571b241368ad76c72cd144eb87a09acc46c8b073d7503552dc99001766c` |
| 14 | `theorem` | [Int Mod Eq Namespaced Coe Nat Mod Eq Iff](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-modeq-varian-source-edition-2.md) | 98 | `result-track:9c96e7cf6ca1f603c7214b08ce46a39f4132d3772eb1874d6d93d3c8703b4f28` |
| 15 | `theorem` | [modEq_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-iff-dvd.md) | 102 | `result-track:20b3961f9c8535074d239823b3bc32dfbedac5b5e595e7a3e1542203b8f6d32b` |
| 16 | `theorem` | [modEq_iff_add_fac](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-iff-add-fac.md) | 107 | `result-track:4276dd9141fddc33585a6847d9b1a53fd5df11e7d249b76458c7fd05b05d11fd` |
| 17 | `theorem` | [mod_modEq](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mod-modeq.md) | 116 | `result-track:407c7f2bcc20ee399041c045b460c999580d9482bc19294843cbb2434d902d3b` |
| 18 | `theorem` | [neg_modEq_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/neg-modeq-neg.md) | 121 | `result-track:1d06d39b46800b0a5ae03825f2df483807e100aaf6e07fd4eeacc68ff6471619` |
| 19 | `theorem` | [modEq_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-neg.md) | 127 | `result-track:53b3322aeef4364b03b4f3fb516470accf74e1393bd2f21c57388225089a939f` |
| 20 | `theorem` | [of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/of-dvd.md) | 132 | `result-track:fd7309b2a449e2778b07300e9f6624eb7cdabb1725203c7bdf4566b672483632` |
| 21 | `theorem` | [mul_left'](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mul-left.md) | 136 | `result-track:72bf080b14ddce23cb32e199a6ffb9824f67caf128bd0b11e3056990005ed1aa` |
| 22 | `theorem` | [mul_right'](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mul-right.md) | 144 | `result-track:552138ab0570ae29c9fe69c2221b4d118d4d800c05bded806ba0dec667d70887` |
| 23 | `theorem` | [add](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add.md) | 149 | `result-track:0a6db84e1714331afbfd83010db78dee6446d777f73f8f6d2486453744659a61` |
| 24 | `theorem` | [add_left](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add-left.md) | 155 | `result-track:4741bd157f2e4fb0fd4d1c630e3637ba2ce0912904e11abf2cdbde4c4db67ad8` |
| 25 | `theorem` | [add_right](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add-right.md) | 159 | `result-track:8663e699d8fff9a0402119cfd943e093f7fce30f8a7107ded3950a9712423579` |
| 26 | `theorem` | [add_left_cancel](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add-left-cancel.md) | 163 | `result-track:0732c4f625e42ce7e8e83b57d94668ce41b8f707f10ae0ad4dee827269cce373` |
| 27 | `theorem` | [add_left_cancel'](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add-left-cancel-source-edition-2.md) | 171 | `result-track:287fc701976384be0efe3408f5f1ec8b0d620c525b9313f4f14fc8f4473511ab` |
| 28 | `theorem` | [add_right_cancel](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add-right-cancel-source-edition-2.md) | 175 | `result-track:e9f4b29f474ff16a543c6644b90e8883d6a5233da2937c13e1ae1f1a398a0468` |
| 29 | `theorem` | [add_right_cancel'](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add-right-cancel.md) | 181 | `result-track:39c1f892b4dec300efe54e544061605ddafe2263c936dcc3861c57ef2f8f93a9` |
| 30 | `theorem` | [neg](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/neg.md) | 185 | `result-track:be204905a3cfc43203ec2660b77b2bfe3578af7d994baa3061bb261025446adb` |
| 31 | `theorem` | [sub](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/sub.md) | 190 | `result-track:12fa1bb5f5e78d92163d89e651ecbdf50b7b3207c782399cc2631987974e0cd4` |
| 32 | `theorem` | [sub_left](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/sub-left.md) | 195 | `result-track:75b84a41671eff08b9fb1c806dbfeb70e9d35250658041e70568b0b80ee74cb2` |
| 33 | `theorem` | [sub_right](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/sub-right.md) | 199 | `result-track:cb5b369bc474a6a958e694093c9125283eb14da45f2f2ba0066bb6f488c4aa76` |
| 34 | `theorem` | [mul_left](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mul-left-source-edition-2.md) | 203 | `result-track:a9e6b0b838d1604e2c658b33ad193bda03649753e4a10ecd50e39ab81e1a4b23` |
| 35 | `theorem` | [mul_right](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mul-right-source-edition-2.md) | 207 | `result-track:77e01ecfc382b35c2d029931305917bf99e2a30b7c06c06d5c5ce07f0bce10d8` |
| 36 | `theorem` | [mul](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mul.md) | 212 | `result-track:c53b9a3de7e08e1a36b860c58250540faf3f9ef9dea63ad1fffdfba49e947ec0` |
| 37 | `theorem` | [pow](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/pow.md) | 216 | `result-track:ef46f326958b2fbb75f2af767eabe101305357a238bb08aab7909e0efb27908e` |
| 38 | `lemma` | [of_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/of-mul-left.md) | 222 | `result-track:9ab2901dbc93d6972a7e4b3cae2cbd726b8d2a3b1bb1b1a7c81c537846f73d32` |
| 39 | `lemma` | [of_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/of-mul-right.md) | 226 | `result-track:784b4cb0678730d998a4807d0dd5868dd37d3baea8b7d8c75355affdd9b32a85` |
| 40 | `theorem` | [cancel_right_div_gcd](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/cancel-right-div-gcd.md) | 231 | `result-track:3f0b26d1b8ad2b52c3b8029ba168c05348293fa5f8b0b0067abcb68235399d37` |
| 41 | `theorem` | [cancel_left_div_gcd](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/cancel-left-div-gcd.md) | 245 | `result-track:1b7e7d2fa1088381e35330c555efc6ceded648f9583bd36379d8d4a870621627` |
| 42 | `theorem` | [of_div](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/of-div.md) | 249 | `result-track:2756f1da92f81a0823b8ff2885eb8375f6274cec62d8d5dae78ca60b5bd4651d` |
| 43 | `theorem` | [modEq_one](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-one.md) | 255 | `result-track:4020c7b0f2e0f015a650228b1a6375a8c0104af4a2305a3626fc2068b64ae064` |
| 44 | `theorem` | [modEq_sub](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-sub.md) | 259 | `result-track:25627ad294f1b087b39f0a01e5378e2fbb7df307bcfaa7fcc7d080fa36333bc4` |
| 45 | `theorem` | [modEq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-zero-iff.md) | 264 | `result-track:0bd0e4391c308a90e7f9ba52d46e48483c650bb28a9a467f339860187d51b45b` |
| 46 | `theorem` | [add_modEq_left](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add-modeq-left.md) | 268 | `result-track:5a8efd96a09a765d01df8430c7b3dbc796779903d0c96e96f231ec77d1dea6b1` |
| 47 | `theorem` | [add_modEq_right](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/add-modeq-right.md) | 272 | `result-track:af0977e2f1a4e7845a32244c2c623ba986ee76c4dfcc775b1849cfd63638e4bc` |
| 48 | `theorem` | [modEq_and_modEq_iff_modEq_mul](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-and-modeq-iff-modeq-mul.md) | 275 | `result-track:2671dca2cbc94f41c76c8ddadc722b0b0817a877a667e10787a8869d8e9716d7` |
| 49 | `theorem` | [gcd_a_modEq](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/gcd-a-modeq.md) | 285 | `result-track:690ba6fad52d1b3395e9ad9013d3978c287738728c6cff3f3fb85ecf8e118629` |
| 50 | `theorem` | [modEq_add_fac](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-add-fac.md) | 290 | `result-track:317c6fc8e6cc7305fc26a07e99812d159419c3dfa87972e59c3ad8b63a8114ca` |
| 51 | `theorem` | [modEq_sub_fac](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-sub-fac.md) | 297 | `result-track:9e1a870a201978cb9135097deca520d22d3940050c7dd6c7df8dd886d5cda0e6` |
| 52 | `theorem` | [modEq_add_fac_self](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/modeq-add-fac-self.md) | 301 | `result-track:4011767c523cc546c193e67bec25ad9f532223b4c1235fe6e2cac26552bd6c06` |
| 53 | `theorem` | [mod_coprime](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mod-coprime.md) | 305 | `result-track:308dd1b33846a30acba0d83552aa31d0dc900f4d27ea84e367d70a69198c5522` |
| 54 | `theorem` | [exists_unique_equiv](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/exists-unique-equiv.md) | 315 | `result-track:635e080338d5740cf2b45d114f1a222373a6a804d5d5c13a881d2174471e3622` |
| 55 | `theorem` | [exists_unique_equiv_nat](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/exists-unique-equiv-nat.md) | 323 | `result-track:396bde51d05fbf2df3973d3e66c85b52bedb2eeb21c6805981135693821e00f2` |
| 56 | `theorem` | [mod_mul_right_mod](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mod-mul-right-mod.md) | 329 | `result-track:d562a04ed85757d7e9a940ec5a48b1b61915be7fb8f883f385b30556d0ececc6` |
| 57 | `theorem` | [mod_mul_left_mod](../../../../../NumberTheory/ElementaryNumberTheory/IntModEqNamespacedCoeNatModEqIff.lean/declarations/mod-mul-left-mod.md) | 333 | `result-track:5c710ec31fed7861f71ad6bda862ee6aeadd7013d8e245bb824708c6963a5109` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24d388c6582907e75f4aa3ca0279250861173d5dd254d9c9b26dd3995a6f4c4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantf4bd8e9339e62ab3bdda59ee628d55e2bce093f8818303736c3d81aa39a03676.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
