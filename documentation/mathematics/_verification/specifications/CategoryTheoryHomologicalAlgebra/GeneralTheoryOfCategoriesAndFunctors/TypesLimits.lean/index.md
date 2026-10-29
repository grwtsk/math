# Verification target: Types Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ffce443cc038e415c2d179b2fad4c67cd75e7f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ffce443cc038e415c2d179b2fad4c67cd75e7f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneOfSection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/coneofsection.md) | 26 | `declaration-track:b73843994f687c9317d28edd4ec39030ef0b029816b2af8bb01d3c0a112f24dd` |
| 2 | `def` | [sectionOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/sectionofcone.md) | 34 | `declaration-track:7002e4ee97ff54ad6dca71735465d51e5421f9f0668b72105549354a05461ef3` |
| 3 | `theorem` | [isLimit_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/islimit-iff.md) | 37 | `result-track:19b1ba62bccce7f6873576fee5bb9c4324bf1510ba1aa4eccaecd5c15938833b` |
| 4 | `theorem` | [isLimit_iff_bijective_sectionOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/islimit-iff-bijective-sectionofcone.md) | 47 | `result-track:8c159e6cb6d8ff48698d42234de148656a5842fec16d8c7996393286e11ee720` |
| 5 | `def` | [isLimitEquivSections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/islimitequivsections.md) | 54 | `declaration-track:49e33f431632ed335488b14c2d2b95aaf6e108bf6bc88e9be85885aee8671ff2` |
| 6 | `theorem` | [isLimitEquivSections_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/islimitequivsections-apply.md) | 62 | `result-track:7cddc7b834548798f5fb08a81c25ba5a362528473d25a78392d0571e419ab1e8` |
| 7 | `theorem` | [isLimitEquivSections_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/islimitequivsections-symm-apply.md) | 66 | `result-track:1997cc649de67082a6f19aa88e96a0db5a3199307e23ab05ddf7b8c17cf6a555` |
| 8 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limitcone.md) | 102 | `declaration-track:63f734c5a2ecd6cd24730ece76bc5770068db4a4e56b0581e2eec92db70c221d` |
| 9 | `lemma` | [limitCone_pt_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limitcone-pt-ext.md) | 111 | `result-track:03d811038835045174847032449c504806b3f29bc93ef2bd9bdb48daf1b663fd` |
| 10 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limitconeislimit-source-edition-2.md) | 117 | `declaration-track:825de47bd05f110a7479850772b81bf3a1f2e6dc4073fdb584a85a90f2d181bd` |
| 11 | `theorem` | [hasLimit_iff_small_sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/haslimit-iff-small-sections.md) | 129 | `result-track:016a5f88059fedbe46a7e63baeb04f63bfaa8ff111724067bade5176a11a97df` |
| 12 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limitcone-source-edition-2.md) | 142 | `declaration-track:81cfb7354cc17386e03bce06f452c234d3d1ffebd20f70e0ba2e6b17d9c48916` |
| 13 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limitconeislimit.md) | 152 | `declaration-track:3dd8ba23a8a383a83cd9af416ead9ac27df826d13e62384f3a9324e08041d7b7` |
| 14 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/haslimit.md) | 175 | `declaration-track:2e4ca6ef6d68ad4c70592b04ecd34599388ac2c56cd2a8637a3a0a3bd3460eee` |
| 15 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/haslimitsofshape.md) | 178 | `declaration-track:74a6e2fe00670232ec87412710ae95fca4722537278b216b2343c8f43498f7a7` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/instance.md) | 185 | `declaration-track:6fc148484aaad7c97958c960cbc7ec58f5bb6d4dd664db0c14b59c5169da10d1` |
| 17 | `def` | [limitEquivSections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limitequivsections.md) | 193 | `declaration-track:fdccec2c8ff9af2baba338a1338a6487e343323e4b0d75d59413d2e058b6bb3f` |
| 18 | `theorem` | [limitEquivSections_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limitequivsections-apply.md) | 197 | `result-track:e1dedb0ce680840bb1ea21b3c4de3088242ed6a073b2b1bc13be13d554363fd6` |
| 19 | `theorem` | [limitEquivSections_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limitequivsections-symm-apply.md) | 202 | `result-track:050f45eb7116cd769dcb7dcaa7802acd855437f50143688690fec2c1874c1a27` |
| 20 | `def` | [limNatIsoSectionsFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limnatisosectionsfunctor.md) | 207 | `declaration-track:cd2c48cbd83f687846497e94bc8e4d29b2b1e734b9c2d25fe202f5028499728f` |
| 21 | `def` | [Limit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-mk.md) | 216 | `declaration-track:85e12a5f5c9abdb635e6de2a235c50ba41f14c582481a6dd70dac1e9b152f692` |
| 22 | `theorem` | [Limit.π_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-mk-source-edition-2.md) | 221 | `result-track:a4583d5274b634763675600a21e29fe43d5ea67a64ce9f6dc23019a93768100d` |
| 23 | `theorem` | [limit_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-ext-source-edition-2.md) | 228 | `result-track:ef3a8b74bbcde0952d99e932b29dfbf76a1a2a5578bbb7f5560f13e80b0c5460` |
| 24 | `theorem` | [limit_ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-ext.md) | 234 | `result-track:988a6dca05af3239de751478efc934e901219e4c671e1ae7a9e9e024a90eab61` |
| 25 | `theorem` | [limit_ext_iff'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-ext-iff.md) | 238 | `result-track:25bf5b903af4340ebba10cc3a0479476e64a436481df52195a4d99286c84a643` |
| 26 | `theorem` | [Limit.w_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-w-apply.md) | 248 | `result-track:664172e90f5b0a28797dcf271ba7cf2a3d5c8fb8af3b27fcaa4800407a74f622` |
| 27 | `theorem` | [Limit.lift_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-lift-apply.md) | 253 | `result-track:91ed4381010ac9c1b3826f5f951a6f5d5bf4fecc7bdd8d3c441b155ef75dedcd` |
| 28 | `theorem` | [Limit.map_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-map-apply-source-edition-2.md) | 258 | `result-track:e2383b9263c920f8cc988ea21a7be0dfe6186658694708d9458fa38b69da0fdc` |
| 29 | `theorem` | [Limit.w_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-w-apply-source-edition-2.md) | 263 | `result-track:faa4070d76b100b2cbaad54cc6fd752002a2f2586a0549db1966c1d93a410462` |
| 30 | `theorem` | [Limit.lift_π_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-lift-apply-source-edition-2.md) | 268 | `result-track:eb052e11fef362fd25e9c850e6637358f6c06cee53f52d52f164da3f8ba73d7a` |
| 31 | `theorem` | [Limit.map_π_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/limit-map-apply.md) | 273 | `result-track:ba224edee59ce391a5d52f0f6b14f787481e78d34f71e24d15c4c428b4d7209d` |
| 32 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/example-source-edition-5.md) | 284 | `declaration-track:cbb7a87e5c4c55372356e086cccb62a67b6d2ec6b04509cb022ff6b588e5f052` |
| 33 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/example-source-edition-3.md) | 285 | `declaration-track:930f129fc0f062430b611a6773dee5132998ca3f0a0d65b06c464d4d16447cf1` |
| 34 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/example-source-edition-4.md) | 287 | `declaration-track:ad698bc0909c9e95c86fb80218a22bb408dc6c96e5c76cd1f840ad8103fc3704` |
| 35 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/example-source-edition-2.md) | 288 | `declaration-track:82320e610c88cdf5012b51284880f80c3fc78287ebe978e1e6c2c0869f62f814` |
| 36 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimits.lean/declarations/example.md) | 290 | `declaration-track:4ad7561cce79e84a404312de62aa3fb1d157c3e645d60d59681b9b19418ccc45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ef6b6cf8b3fc792c29108ee8d010364eaf0d48116b0c157eedce51437e1f442 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
