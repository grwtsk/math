# Verification target: Limits Of Shape Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3100e0a04494229f827d4147aa80388c6ce27f6c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3100e0a04494229f827d4147aa80388c6ce27f6c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [strictLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/strictlimitsofshape.md) | 48 | `declaration-track:75a81667a3efb354240e5d281360454a65aedadf29c8c066476edd9ddc94df55` |
| 2 | `lemma` | [strictLimitsOfShape_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/strictlimitsofshape-monotone.md) | 53 | `result-track:fd276b3ffe1e16cf12748002da343406e06e57b267687b2d00e134f089ba403c` |
| 3 | `lemma` | [strictLimitsOfShape_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/strictlimitsofshape-bot.md) | 59 | `result-track:7432089591f2de355341d90a0935e5e684caecff160e3d3f5f54b9eb63144cd2` |
| 4 | `structure` | [LimitOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitofshape.md) | 67 | `declaration-track:07cdcde85480ee7f01e133c98d925a3a863c943c485fd6abd1eccc00cea745d5` |
| 5 | `def` | [limit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limit.md) | 77 | `declaration-track:be282d7d8ef6c6eda9ed17457788e54217c8fe087e6b07f13ec51ff4a1795409` |
| 6 | `def` | [ofIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/ofiso.md) | 85 | `declaration-track:1adf0d07af23aa82579632fd9f2badd25fce1cb32210fecf0cb96f994c2a9341` |
| 7 | `def` | [ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/ofle.md) | 93 | `declaration-track:eedf5dbcc9379173a145ba6d2e039e7ce9879e831c2be22af8c6ad91160e25ee` |
| 8 | `def` | [reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/reindex.md) | 100 | `declaration-track:0ab3ce45e4633cad1ba33956e8989930172935d3a7da8443bc86b91b99d46c74` |
| 9 | `def` | [toStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/tostructuredarrow.md) | 109 | `declaration-track:c79568e7ffec7a88edc560f6927533e8c2226230c115fed998d524d4e318fd5f` |
| 10 | `def` | [limitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitsofshape.md) | 120 | `declaration-track:73d1f93198355d704f7444f22bbbd76297b680aa49b39f91792d6ad93f375555` |
| 11 | `lemma` | [LimitOfShape.limitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitofshape-limitsofshape.md) | 124 | `result-track:3c4a2502781226f609613212dabf8cc6d9af14e87cff45b484d3013c5853d9ff` |
| 12 | `lemma` | [strictLimitsOfShape_le_limitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/strictlimitsofshape-le-limitsofshape.md) | 128 | `result-track:e8f33de4da12ae913216da60c217eaab1023c802c03ea59b9a907cea9c49a79d` |
| 13 | `lemma` | [limitsOfShape_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitsofshape-bot.md) | 134 | `result-track:9eeae863a1b4f09b96e8308cc7f670ad6f227d5c12b273b8b766fcf0746fdf90` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/instance-source-edition-2.md) | 139 | `declaration-track:6f79d32ad808dd7d0c27f2f3e30d3d1e11a561cf72df3112b93ff1fc287d8a3c` |
| 15 | `lemma` | [isoClosure_strictLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/isoclosure-strictlimitsofshape.md) | 143 | `result-track:7b6c9aa1610c55c88f1b5207ed92db05c6420e823f479d6e20a9c0b46f3b35fa` |
| 16 | `lemma` | [limitsOfShape_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitsofshape-monotone.md) | 154 | `result-track:2153ca27e9e3cc697b3478d8b2a32e67587f6ac8e9102c5d9edb87ea246f6b00` |
| 17 | `lemma` | [limitsOfShape_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitsofshape-isoclosure.md) | 160 | `result-track:1a512da400f0ce3daa7f08dacf2c7257868b8be99a6ebfd76323b0fd37a100e7` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/instance-source-edition-3.md) | 169 | `declaration-track:a738a10d7d4df2b3fc1cf32cb5c24052c5e0f6119a58ed96945e37d705787d4e` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/instance.md) | 177 | `declaration-track:1f35094ebb3639b5b5a2d822503dd0815c86df3861cc914d30898e9670c0339f` |
| 20 | `class` | [IsClosedUnderLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/isclosedunderlimitsofshape.md) | 185 | `declaration-track:ec721e87760fecb3a7b299e78945164e85d410aab1b9550d40a7ab568025e4f8` |
| 21 | `lemma` | [IsClosedUnderLimitsOfShape.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/isclosedunderlimitsofshape-mk.md) | 189 | `result-track:c748fa7b9ceda4a7df989670be02c3596ecd3bda1e96cf3433dfac7f804a1630` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/instance-source-edition-5.md) | 197 | `declaration-track:e0dc37ab541e88467b8ef87809703871df6a1778e5bc605d78d093f8f609799d` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/instance-source-edition-4.md) | 200 | `declaration-track:bdfe80c48dfc8c31272caced45d26b9e80ef5752514d1a4218dfc21c248103e5` |
| 24 | `lemma` | [LimitOfShape.prop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitofshape-prop.md) | 210 | `result-track:64998e84c02ffa94838ee00fa31b16e1f22e776f1685f2d34cb1bc0aab2e0320` |
| 25 | `lemma` | [prop_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/prop-of-islimit.md) | 213 | `result-track:1ec325f8bfc968a1080a21cef89b651b8a41d614f8b2a77f57e9962dd8c963a1` |
| 26 | `lemma` | [prop_limit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/prop-limit.md) | 217 | `result-track:ad3bf2c61168fd1d5247bfcbc08d841adfdb188b50134a4b4e2da0f946ff24cb` |
| 27 | `lemma` | [prop_pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/prop-pi.md) | 223 | `result-track:9c075034712aa1bf990dce3ee665a79fc7f6fbdd154921d68e078d7a0c2fcf77` |
| 28 | `lemma` | [limitsOfShape_le_of_initial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitsofshape-le-of-initial.md) | 229 | `result-track:3c466cc6e1b10dd40bf5cf4b3de020956ed8ce696400ed91bfa62cc4dd5d2387` |
| 29 | `lemma` | [limitsOfShape_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/limitsofshape-congr.md) | 234 | `result-track:7209b99ef39eb09934beb458da48ecafe077f6cc9ff04c6d8e2c4353e51ce7ef` |
| 30 | `lemma` | [isClosedUnderLimitsOfShape_iff_of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/isclosedunderlimitsofshape-iff-of-equivalence.md) | 240 | `result-track:d88c0e0d1d20b7e1b857bb6e7659adb2f6d10768a49ed869deb3195cc7b9d225` |
| 31 | `lemma` | [IsClosedUnderLimitsOfShape.of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/isclosedunderlimitsofshape-of-equivalence.md) | 246 | `result-track:dadeee7181ef170d2a6dd4036cf2a1dc67e96cb93a61592a13ea6b5a592c39c2` |
| 32 | `instance` | [IsClosedUnderLimitsOfShape.inverseImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/isclosedunderlimitsofshape-inverseimage.md) | 251 | `declaration-track:57fb993b0953358392f9cd1cbb29867055dd434f3f1851bf329ac3ebc79edc04` |
| 33 | `lemma` | [isClosedUnderLimitsOfShape_inverseImage_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapePublic.lean/declarations/isclosedunderlimitsofshape-inverseimage-iff.md) | 256 | `result-track:67df21c7277a2258c808df36afc7f3875096018d612273e24cdf2477a06adfac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4afb4ba17f6aed436d9ff8ce5617ea3b1f3032d67a7f8d13bb814c74c975b236 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
