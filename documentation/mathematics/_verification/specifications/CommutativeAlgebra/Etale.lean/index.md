# Verification target: Etale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45fdea5251f372e68b0d71e202ba62243570e20f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Etale.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Etale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45fdea5251f372e68b0d71e202ba62243570e20f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.QuotientNilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallyUnramified](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified.md) | 43 | `declaration-track:f171b688de8e0eb311a0bc9683f41042a7dfe08a2c13acb446d3e94eb13834e6` |
| 2 | `class` | [FormallySmooth](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth.md) | 53 | `declaration-track:f1baf44b37c9fd339f29cf24f4e8ae611b26a262b13ea6d87418a663bbce07d4` |
| 3 | `class` | [FormallyEtale](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale.md) | 63 | `declaration-track:fb38ed9d68b12db4f7a997b21367a6a916911f227f604cea80ba90eb30b3c935` |
| 4 | `theorem` | [FormallyEtale.iff_unramified_and_smooth](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale-iff-unramified-and-smooth.md) | 72 | `result-track:39affcf4dcd8c9e31b27ec242e97145f10ed3b69005a6540df7021e121bd0dd2` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Etale.lean/declarations/instance.md) | 79 | `declaration-track:70acfa2381b2d8572da0b767e442274361e2303a1d1a44b8ee0ea8c23a738d6d` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Etale.lean/declarations/instance-source-edition-2.md) | 84 | `declaration-track:d36c4c90ad04a4c3d2dbf7502b43b80a7f2ed358472464ee699f9805ebfdc000` |
| 7 | `theorem` | [FormallyEtale.of_unramified_and_smooth](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale-of-unramified-and-smooth.md) | 88 | `result-track:8b6c90883aa67f96ea78a26058e5bf2e549de8ca4f3092066ee13ef500910b56` |
| 8 | `theorem` | [FormallyUnramified.lift_unique](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-lift-unique-source-edition-2.md) | 93 | `result-track:7e99856b3fbe032eb41c7285bb2df02742e9fed76da61b83cd9e6644ab240de4` |
| 9 | `theorem` | [FormallyUnramified.ext](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-ext.md) | 110 | `result-track:65af3bec171bdca7f279d9ee9cf35eacf0f500c52cbc74bf852a3efb6accfc2a` |
| 10 | `theorem` | [FormallyUnramified.lift_unique_of_ringHom](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-lift-unique-of-ringhom.md) | 115 | `result-track:89bf46a24173ff15aa82b08d3ab46089ae55c6879a6a00ef6a55ab645117c6a1` |
| 11 | `theorem` | [FormallyUnramified.ext'](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-ext-source-edition-2.md) | 126 | `result-track:c9bf277e11d43895f6f358018c692009fa07eccc1fcec5706ba2a9d812c267c8` |
| 12 | `theorem` | [FormallyUnramified.lift_unique'](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-lift-unique.md) | 132 | `result-track:672e5de48069856eeca2644d77acf1b3301f9f2402fb6cd2daebe687a6d9d838` |
| 13 | `theorem` | [FormallySmooth.exists_lift](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-exists-lift.md) | 138 | `result-track:f590f73fe9315c73239f9a25f2480c7841721115485a52e963bed151f39cc17b` |
| 14 | `def` | [FormallySmooth.lift](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-lift.md) | 163 | `declaration-track:d4f055fc39e87b0ebaf0c991427b568480588d8f280a3aafd5e278844ae01ee6` |
| 15 | `theorem` | [FormallySmooth.comp_lift](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-comp-lift.md) | 169 | `result-track:36fa92aca0bf9800b4ae8257105e1ece2049d57b2afef4c30aa2c7fcc9162e4f` |
| 16 | `theorem` | [FormallySmooth.mk_lift](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-mk-lift.md) | 175 | `result-track:fe98d103b03c6f50c9de7ff1ad0d13d52617f80f7a82c19176895ce0afa8ef78` |
| 17 | `def` | [FormallySmooth.liftOfSurjective](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-liftofsurjective.md) | 184 | `declaration-track:a705b6e1d75f3c0ef399cce37bfb9b84189274b3f089c6c44b30a2efbb4c6b7f` |
| 18 | `theorem` | [FormallySmooth.liftOfSurjective_apply](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-liftofsurjective-apply.md) | 191 | `result-track:39c147d87572967c10c26b9d07523e24162cd47edf79c4864501733f6a0eb79a` |
| 19 | `theorem` | [FormallySmooth.comp_liftOfSurjective](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-comp-liftofsurjective.md) | 205 | `result-track:8ba041fa4d6761a859c53fb8166de5ac2be570087aad90500822371d5fdcf3b8` |
| 20 | `theorem` | [FormallySmooth.of_equiv](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-of-equiv.md) | 219 | `result-track:db4b3c721ed1dc094ec9558a0a9edf33dc67a77beda1e818a1235e56f6a7ffef` |
| 21 | `theorem` | [FormallyUnramified.of_equiv](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-of-equiv.md) | 227 | `result-track:b8102a39fe2ecc3f6e5227176dbc5786b5b100a38ca0b9e7e24109dc3b40aaff` |
| 22 | `theorem` | [FormallyEtale.of_equiv](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale-of-equiv.md) | 237 | `result-track:3b7cad4a43d303ff3ce1cfd7b321ffd77174fdccb89e885c1735f6bdbb873396` |
| 23 | `instance` | [FormallySmooth.mvPolynomial](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-mvpolynomial.md) | 250 | `declaration-track:8507bc07f5f40ec83259a8070bc727df5c2e164380f891bb7b08122232f668d1` |
| 24 | `instance` | [FormallySmooth.polynomial](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-polynomial.md) | 262 | `declaration-track:b334f027561b7ac468996f096f5dbb2a20b4f27d2c4137a0f8fee76283279f82` |
| 25 | `theorem` | [FormallySmooth.comp](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-comp.md) | 278 | `result-track:1f6003daab251a7a79b7cd3109160842289fdbe36983d08a38ebfc78cc0bf873` |
| 26 | `theorem` | [FormallyUnramified.comp](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-comp.md) | 289 | `result-track:d6de8c22667613f0cfe926624b4acb29b382a28b4c20530e539f83cb111807d1` |
| 27 | `theorem` | [FormallyUnramified.of_comp](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-of-comp.md) | 305 | `result-track:53fd438a88a02362c99f95528125f8a75e7315f51925f07423ae89dbd85d1478` |
| 28 | `theorem` | [FormallyEtale.comp](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale-comp.md) | 316 | `result-track:b806b305cfff41801d58b7864b9f17d5d39670c91b3721b01ac952991066eb97` |
| 29 | `theorem` | [FormallySmooth.of_split](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-of-split.md) | 331 | `result-track:193ff292ccd62fb5f9312723e444ce88dcd10da5fe0e4d7f06e35b1b4df61704` |
| 30 | `theorem` | [FormallySmooth.iff_split_surjection](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-iff-split-surjection.md) | 357 | `result-track:5c9d5f1d2becdd83363b7c91a800b36241b6dec11df00aaf44b976fa86637dd2` |
| 31 | `instance` | [FormallyUnramified.subsingleton_kaehlerDifferential](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-subsingleton-kaehlerdifferential.md) | 398 | `declaration-track:6183e8c6ad234ba2ba2cef97012cedf54e01d909f212364574f0c0e1b9fddf2a` |
| 32 | `theorem` | [FormallyUnramified.iff_subsingleton_kaehlerDifferential](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-iff-subsingleton-kaehlerdifferential.md) | 410 | `result-track:83378b72e68e84223668a4a93cf49f4b38fa6457a02f7aea8befa0be0d447405` |
| 33 | `instance` | [FormallyUnramified.base_change](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-base-change.md) | 437 | `declaration-track:1a5e9a7b19da1bbcc3fc07e57d425002cf6908b939225d514d76bf06e9fe80ce` |
| 34 | `instance` | [FormallySmooth.base_change](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-base-change.md) | 448 | `declaration-track:87d558f0295f7cf53eb4d189b71d5378b5ddb809d8913274af7869cbe0004ed6` |
| 35 | `instance` | [FormallyEtale.base_change](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale-base-change.md) | 462 | `declaration-track:f3ff0b01c15e446a3dfc72d3ca80dbdac859b027467b5a43cd253c92f7462a36` |
| 36 | `theorem` | [FormallySmooth.of_isLocalization](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-of-islocalization.md) | 483 | `result-track:c3f5e678c87cd9d1810155c469197c4f0aa21c2b8cd240b16fcc14b14c46f8b2` |
| 37 | `theorem` | [FormallyUnramified.of_isLocalization](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-of-islocalization.md) | 501 | `result-track:755cbb9c17d89d5d0e677ed503d63d132d342c6fcdcf9d26277f691a5dac0459` |
| 38 | `theorem` | [FormallyEtale.of_isLocalization](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale-of-islocalization.md) | 510 | `result-track:a4792efb6d496cb22f858f6d0f5e92117efb57b3de21b38c350c2d2734fca746` |
| 39 | `theorem` | [FormallySmooth.localization_base](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-localization-base.md) | 515 | `result-track:5330805269b8ad5901da906aa54adf95c04b2b5c136b9ecec8e0284b5e32f4ac` |
| 40 | `theorem` | [FormallyUnramified.localization_base](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-localization-base.md) | 543 | `result-track:9d8529494eb5147f93ced6f7504570e32ed9e118069faa71d7bec1926208ae9f` |
| 41 | `theorem` | [FormallyEtale.localization_base](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale-localization-base.md) | 549 | `result-track:42ad4e628914554e1297aea8d15ea04afd44aea935f8497cb80ab6380c4b5bed` |
| 42 | `theorem` | [FormallySmooth.localization_map](../../../../CommutativeAlgebra/Etale.lean/declarations/formallysmooth-localization-map.md) | 554 | `result-track:31fa748a9b7b40fe5aecbfd43e1c9a6a9293f32b8fcde4dc15cef9620fa3c8ef` |
| 43 | `theorem` | [FormallyUnramified.localization_map](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyunramified-localization-map.md) | 560 | `result-track:6958a81af9b3b0c7b700ce82fe5c5414eeb437be65f9646accd59a0a9f38bde6` |
| 44 | `theorem` | [FormallyEtale.localization_map](../../../../CommutativeAlgebra/Etale.lean/declarations/formallyetale-localization-map.md) | 568 | `result-track:4688d919585ea00ff818da9ecfd090fa81c15a7f1d146adf011ce50e064f430d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b03ed2278f2aadb12558337a0ae1d3494bf3b3b812e991c00451a16d7029e33f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
