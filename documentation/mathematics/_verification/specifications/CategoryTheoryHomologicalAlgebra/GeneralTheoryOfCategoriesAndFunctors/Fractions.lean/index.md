# Verification target: Fractions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465d603552c31ffbf3d3c2e57c43eeb8bccd38c8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465d603552c31ffbf3d3c2e57c43eeb8bccd38c8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.CalculusOfFractions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftFraction₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/leftfraction-source-edition-2.md) | 42 | `declaration-track:e8990461508e781371ca9286fbd53ca95388435b930e5e3400132809a6faae94` |
| 2 | `structure` | [LeftFraction₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/leftfraction.md) | 56 | `declaration-track:640a89c1f4e212c973e0eecb8d119fa59f2533ec7e88995c3bfa9167722b1eab` |
| 3 | `structure` | [RightFraction₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/rightfraction.md) | 72 | `declaration-track:15f2e2a5f3ff244805315819df29254e5789b9ca97a544e8a33951f5d11f3ef2` |
| 4 | `def` | [LeftFraction₂Rel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/leftfraction-rel.md) | 89 | `declaration-track:f24578f22bab635e8eb9c5993ba9f22d038290c69a98c9416a46cbb8673f2aec` |
| 5 | `abbrev` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/fst.md) | 98 | `declaration-track:54f80f3c96eaad72c02da7bf5995b07c1a3d9d213e543ce0f550ef85064f1b93` |
| 6 | `abbrev` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/snd-source-edition-3.md) | 105 | `declaration-track:b432af078ca15763edd5cb0b185ce4666914db815041f075cd9e0d88addc6e90` |
| 7 | `abbrev` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/symm.md) | 112 | `declaration-track:f0445485d17ef08e6e8586a6060cba1687e170eda5a2df9d17b71df889706594` |
| 8 | `abbrev` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/fst-source-edition-4.md) | 126 | `declaration-track:c234349096824fcf6385e8807938384fb9dcdfcee61b1b37740b4632f0da707a` |
| 9 | `abbrev` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/snd-source-edition-4.md) | 133 | `declaration-track:c87c5392d66b84d03d5a2b31f5190ad0bf54da4b02eee373a9247e3153b34d1c` |
| 10 | `abbrev` | [thd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/thd.md) | 140 | `declaration-track:c49425c2caf8c9ce1fb74c70ad0dbf6760673c48e3d178677809866577d6de41` |
| 11 | `abbrev` | [forgetFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/forgetfst.md) | 147 | `declaration-track:ad4509a78926475ab63a116f1e3bb081a48134174797977e2c60660f645c31ae` |
| 12 | `abbrev` | [forgetSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/forgetsnd.md) | 155 | `declaration-track:c2a72567e11b75220bafe05d74ec4ca6e040b9077c1fcd9718f15f0573a6c53f` |
| 13 | `abbrev` | [forgetThd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/forgetthd.md) | 163 | `declaration-track:0346712294b537fbdbecfc63c6799ba887c26a69bbc6d3a94672bd5997646d09` |
| 14 | `lemma` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/fst-source-edition-3.md) | 176 | `result-track:7d9698071f2b316ff6c16af41bd5bd009f66cfec57cd6b329703db7bbf697012` |
| 15 | `lemma` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/snd.md) | 180 | `result-track:545e82d7529d0996a67955da7f41a7d609aea020dd68db66be0687b51b50945f` |
| 16 | `lemma` | [map_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/map-eq-iff.md) | 191 | `result-track:16c2dee99e02c3bfd0c01b6635229e4ef91449a648d30d81b48e19694f7fe048` |
| 17 | `abbrev` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/fst-source-edition-2.md) | 225 | `declaration-track:72f3942569f4ceefaa203f0d8490d24638e100614e6629b37bdd048336baf091` |
| 18 | `abbrev` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/snd-source-edition-2.md) | 232 | `declaration-track:9a0ce9489dcf682d581913e0c5996a991875c7cf7a010eccd0ff125a2d2c96ba` |
| 19 | `lemma` | [exists_leftFraction₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/exists-leftfraction-source-edition-2.md) | 238 | `result-track:5ff5dd1147eeba9dff195962a3708e6c0f85de22c151dfb27115fcd5fc0af7d7` |
| 20 | `lemma` | [exists_leftFraction₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/exists-leftfraction.md) | 261 | `result-track:2d3ba14e898e3a667734e6849b18800fb0038fc7327f81a2e4635ec86314d55b` |
| 21 | `lemma` | [exists_leftFraction₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Fractions.lean/declarations/exists-leftfraction-source-edition-3.md) | 287 | `result-track:b8bcbf3cc9f8ba170af84188ad05b1ce97ac99fe8a33d7c07758cc930b16ef9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c58857fdd3d5d8c33550de0bb418db23e7c9a186455cbda13c22bcc69674832 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variant1c3e8caa6e13c8c851e40e2842d4a6ca5e58f1c7892734a197960e886392e0c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
