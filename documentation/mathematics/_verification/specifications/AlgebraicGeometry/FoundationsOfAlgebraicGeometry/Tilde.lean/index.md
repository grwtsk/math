# Verification target: Tilde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44a65da3bac6ece773f3afe802846643ecbf2a9b",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44a65da3bac6ece773f3afe802846643ecbf2a9b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.StructureSheaf` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Modules.Sheaf` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.FilteredColimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory.WithAlgebraicStructures` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Localizations](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/localizations.md) | 48 | `declaration-track:5588136dd96e10916f15740466223353be2449f08884f151d66470365f5551c2` |
| 2 | `def` | [isFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/isfraction.md) | 54 | `declaration-track:7ea53228499eec12b43ae6f5548609fd44242f33c77af6f292198e7869ded5cf` |
| 3 | `def` | [isFractionPrelocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/isfractionprelocal.md) | 61 | `declaration-track:a54c2c4f68c2f93fd245d84e84b8e59ffbdd87f71896c294d97d6feb0a623689` |
| 4 | `def` | [isLocallyFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/islocallyfraction.md) | 71 | `declaration-track:ddd8f5980b61e18bc94896fc2a7b19763e700d4c1dd1b6f5ce59da8fa440f553` |
| 5 | `theorem` | [isLocallyFraction_pred](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/islocallyfraction-pred.md) | 74 | `result-track:e14a173af329b8098527f15bdea8f0feb9aa343152513d368c2e471c5beb4dc8` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/instance-source-edition-3.md) | 84 | `declaration-track:1dd0a8cfc74375db2b7e275c13a4a29b78be4839b9eac03caf837b25be533d21` |
| 7 | `lemma` | [sections_smul_localizations_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/sections-smul-localizations-def.md) | 90 | `result-track:d1cc4d4f5a28c78888736a7983f5f0c97fcf3175ed1804236cd25ef8648b246f` |
| 8 | `def` | [sectionsSubmodule](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/sectionssubmodule.md) | 99 | `declaration-track:3dfb4fdf3565eb61ef8efaaf55e8ab259e4562658c5aa0235fdcbdfe52f412a6` |
| 9 | `def` | [tildeInType](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/tildeintype.md) | 143 | `declaration-track:309eeecee9e558c073bc262852d1bbce298b80e01c2915b92c215d1e7ebc0040` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/instance-source-edition-2.md) | 146 | `declaration-track:1747101f3f3c6228566b33fdaac166fc4473c6cb854e3e370e2a45174284b21c` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/instance-source-edition-4.md) | 150 | `declaration-track:a986c70648526e9cdc7120a9355f29cba08134a9ad2a54dd179a11eea323ad3a` |
| 12 | `def` | [tilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/tilde.md) | 157 | `declaration-track:37869a813e08f19900cf3914c56fe9dadfeb4dcc9ab9cf9c6a47f0b128d275cb` |
| 13 | `def` | [tildeInModuleCat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/tildeinmodulecat.md) | 174 | `declaration-track:6c127bed3c26bb04c33ecd0edc0f07e9312191b73693c399caf01efa39a0dcaa` |
| 14 | `theorem` | [res_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/res-apply.md) | 183 | `result-track:0cbb529154a3585aa4634cf0c781f57ff079694c9513308789fe8173db78a21e` |
| 15 | `lemma` | [smul_section_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/smul-section-apply.md) | 188 | `result-track:0dd1cfd9b0a02502643106b59cacb3889b9ebf64b7a6f47d113abf2f1f4bed9f` |
| 16 | `lemma` | [smul_stalk_no_nonzero_divisor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/smul-stalk-no-nonzero-divisor.md) | 192 | `result-track:a8619554aef0bc5b1bbae1240966af6b24b215e2704f59b9d56e2267772a5672` |
| 17 | `def` | [toOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/toopen.md) | 205 | `declaration-track:c7061e80e32e2e6b75e6ef61138a4868fb5fa6bef38bed560a62b2ea0c347b16` |
| 18 | `theorem` | [toOpen_res](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/toopen-res.md) | 220 | `result-track:626424a4c31837efd39e400f6a99fc5c5a6365f0e9f836bd448376ee92a435b5` |
| 19 | `def` | [toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/tostalk.md) | 228 | `declaration-track:145439488660d260c279f68b65b923b429fa5bc4a01c578bc18fa419011adf57` |
| 20 | `lemma` | [isUnit_toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/isunit-tostalk.md) | 233 | `result-track:257b270a09609eb7d4e2238e4041ee428390758d76f865786c27e3f1523ab6c2` |
| 21 | `def` | [localizationToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/localizationtostalk.md) | 259 | `declaration-track:3f2e4c7f7b88aa6f889fcd613f4165e3fff838673f1f4cc91e422367f266a769` |
| 22 | `def` | [openToLocalization](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/opentolocalization.md) | 268 | `declaration-track:108c7d03874a8e6f421ecb6b2b0e56fb8a504863198009071cab99880cbba3b8` |
| 23 | `def` | [stalkToFiberLinearMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/stalktofiberlinearmap.md) | 285 | `declaration-track:b7c438df6eb9ac91cb99551c73042002a34c66fcebf47f8f04cf79c99b1d593e` |
| 24 | `theorem` | [germ_comp_stalkToFiberLinearMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/germ-comp-stalktofiberlinearmap.md) | 294 | `result-track:6bc0f9ba546d4f99bc846222aa27d4dd83a4fe032fb103a1f1e3ff5fb1ed2b98` |
| 25 | `theorem` | [stalkToFiberLinearMap_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/stalktofiberlinearmap-germ.md) | 300 | `result-track:c4bc1e8ec83a571773efe5515245d1358145866b62414e7ac044bbfae3acd7c6` |
| 26 | `theorem` | [toOpen_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/toopen-germ.md) | 307 | `result-track:4aa30fd92c0dd4fd711773d83922779a2e610caa1892362763d635b751ca861a` |
| 27 | `theorem` | [toStalk_comp_stalkToFiberLinearMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/tostalk-comp-stalktofiberlinearmap.md) | 312 | `result-track:0bec1d4c7db85c209219f9489bfab7114140daf65b85690cf90158cec8ef9577` |
| 28 | `theorem` | [stalkToFiberLinearMap_toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/stalktofiberlinearmap-tostalk.md) | 317 | `result-track:ead970d7eee8eb52b9f8af7cea63ce7526dd157d8aed96d5511874e200164dc7` |
| 29 | `def` | [const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/const.md) | 327 | `declaration-track:ca71a7a8310c7db42f46a3d7f58a1ecf6ee05a30053b2f4f22c50404336a21ef` |
| 30 | `theorem` | [const_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/const-apply.md) | 336 | `result-track:278e51b7ac8879ab0d12e4ccd05854e3df56c18de8cbd356b38bb77891e4f221` |
| 31 | `theorem` | [exists_const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/exists-const.md) | 341 | `result-track:ec84d00fd2c36886a1e6665a9f0cf18677c2e4f54614778ff2f238bbeea72643` |
| 32 | `theorem` | [res_const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/res-const.md) | 357 | `result-track:09df39bb4cfd5a90113d03b78e4399197b4606a8df39e3115d20b992488ba5f3` |
| 33 | `theorem` | [localizationToStalk_mk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/localizationtostalk-mk.md) | 362 | `result-track:e0888aed5e53ba4cb5375c1373b93e932725aa450e5a57d43a1f560a421d1302` |
| 34 | `def` | [stalkIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/stalkiso.md) | 388 | `declaration-track:60ad650325aebe7f09d0ab7466ab25b9ee0eaa259aab25a06754d8376da94349` |
| 35 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Tilde.lean/declarations/instance.md) | 410 | `declaration-track:042ccfeae13e98f1e83d4dabd8a1c07a520ce01a27610cec5171f573691f941c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c196351a2a13e4c38a5c11b58386bcaf2eadd1efa9aa7f23a11fd30e22a4128 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
