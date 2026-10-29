# Verification target: Equalizer Products

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bd2079d54ef7d242309c69aacb64f64010c25e7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EqualizerProducts.lean/index.md) · [Full source](../../../../GeneralTopology/EqualizerProducts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bd2079d54ef7d242309c69aacb64f64010c25e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piOpens](../../../../GeneralTopology/EqualizerProducts.lean/declarations/piopens.md) | 40 | `declaration-track:4895e6721da6ce22b3f90df5eadae78808d7b518584daec8c80b31498218beec` |
| 2 | `def` | [piInters](../../../../GeneralTopology/EqualizerProducts.lean/declarations/piinters.md) | 46 | `declaration-track:ac891b34169119d84fbedd4de09b870953f7d1339bcbb52a440b98b0223c17d4` |
| 3 | `def` | [leftRes](../../../../GeneralTopology/EqualizerProducts.lean/declarations/leftres.md) | 52 | `declaration-track:2f3727f358780a2566032f1331305d163cb92b541ec252b72a82606c45e07386` |
| 4 | `def` | [rightRes](../../../../GeneralTopology/EqualizerProducts.lean/declarations/rightres.md) | 58 | `declaration-track:7a9d990364f05c175ca92af2f97b1dceffb44953505f5c425887e91ff1c7a114` |
| 5 | `def` | [res](../../../../GeneralTopology/EqualizerProducts.lean/declarations/res.md) | 64 | `declaration-track:8c53a731fb4e469f1db13305f1c8707cdcc0978917cb159f0b3404b235f43954` |
| 6 | `theorem` | [res_π](../../../../GeneralTopology/EqualizerProducts.lean/declarations/res-source-edition-2.md) | 68 | `result-track:db70da34ed23569b8f296f9cc5239be486e2ea8b8570fefc05a93efa1c6a7e2f` |
| 7 | `theorem` | [w](../../../../GeneralTopology/EqualizerProducts.lean/declarations/w.md) | 72 | `result-track:37a785216e5bcee99e30eedc65ce607644801f27169e54fdf658ebc5bf0368d4` |
| 8 | `abbrev` | [diagram](../../../../GeneralTopology/EqualizerProducts.lean/declarations/diagram.md) | 83 | `declaration-track:16435545eeb42e6f35d526fff5682179885f85504f3be9b186b89532771be7b0` |
| 9 | `def` | [fork](../../../../GeneralTopology/EqualizerProducts.lean/declarations/fork-source-edition-2.md) | 89 | `declaration-track:f195d3a37f732f6a298f087c7abe1c74d77504ebb38b8fa476484c525385b357` |
| 10 | `theorem` | [fork_pt](../../../../GeneralTopology/EqualizerProducts.lean/declarations/fork-pt.md) | 93 | `result-track:4c4aaec52ab91af1f029fb4300a438da9947e79568cdf3bcf860f584b55d391f` |
| 11 | `theorem` | [fork_ι](../../../../GeneralTopology/EqualizerProducts.lean/declarations/fork.md) | 97 | `result-track:10d9c0be7dfdae38cd63aac0979604b9cb92e96b852a0e2755df70935912bec3` |
| 12 | `theorem` | [fork_π_app_walkingParallelPair_zero](../../../../GeneralTopology/EqualizerProducts.lean/declarations/fork-app-walkingparallelpair-zero.md) | 101 | `result-track:89108a4b1c718a27348b4cadbd6cdefeeaec661ac9379365cb85ebd91fb0a0a8` |
| 13 | `theorem` | [fork_π_app_walkingParallelPair_one](../../../../GeneralTopology/EqualizerProducts.lean/declarations/fork-app-walkingparallelpair-one.md) | 106 | `result-track:5c1a0a39a9cc8fc68154d3b6981f4777860f8104427157dc15a5330138122166` |
| 14 | `def` | [piOpens.isoOfIso](../../../../GeneralTopology/EqualizerProducts.lean/declarations/piopens-isoofiso.md) | 114 | `declaration-track:40dae7370552b6c1b529bc113e08bef3630eca2f861a09b13c48f88bf27c9fdc` |
| 15 | `def` | [piInters.isoOfIso](../../../../GeneralTopology/EqualizerProducts.lean/declarations/piinters-isoofiso.md) | 119 | `declaration-track:36248e4ebb87e4eac41f0a3c1274c5fb9021280cc85b0682371d319ad7131545` |
| 16 | `def` | [diagram.isoOfIso](../../../../GeneralTopology/EqualizerProducts.lean/declarations/diagram-isoofiso.md) | 123 | `declaration-track:8cc2957ee4717f391f8dc543312b4ab334ae7415e31042c93d2c184971a75add` |
| 17 | `def` | [fork.isoOfIso](../../../../GeneralTopology/EqualizerProducts.lean/declarations/fork-isoofiso.md) | 150 | `declaration-track:2fdf83f85969824cb8f9d06f31aff3266c99520fb4031d60407dd1109321a8f8` |
| 18 | `def` | [IsSheafEqualizerProducts](../../../../GeneralTopology/EqualizerProducts.lean/declarations/issheafequalizerproducts.md) | 170 | `declaration-track:601db276f869b258bc51ff07c788dd9caeef0bfe0a894a0e99ced4d934405a6a` |
| 19 | `def` | [coneEquivFunctorObj](../../../../GeneralTopology/EqualizerProducts.lean/declarations/coneequivfunctorobj.md) | 185 | `declaration-track:c56836ae9362f24f9cceb1dd31e3bd1989eb02bbb2683ffad56831227feab138` |
| 20 | `def` | [coneEquivFunctor](../../../../GeneralTopology/EqualizerProducts.lean/declarations/coneequivfunctor.md) | 229 | `declaration-track:aa86ecd884565efcb405ea74b071cd94749845ef81bd3a8012fba5ea3ee26458` |
| 21 | `def` | [coneEquivInverseObj](../../../../GeneralTopology/EqualizerProducts.lean/declarations/coneequivinverseobj.md) | 246 | `declaration-track:b85cce0022e45c15cd75213b10b307a105ab391e1c47edf4193a101d0c945a26` |
| 22 | `def` | [coneEquivInverse](../../../../GeneralTopology/EqualizerProducts.lean/declarations/coneequivinverse.md) | 292 | `declaration-track:2df993dbeeb18ab4a5c80ee6c5e9759c3a34cfaba41e4d8ff8f3abb6ca98567d` |
| 23 | `def` | [coneEquivUnitIsoApp](../../../../GeneralTopology/EqualizerProducts.lean/declarations/coneequivunitisoapp.md) | 310 | `declaration-track:9f5fc0f5c2c362fb0c6ada2643023e38f76e260ce7fb689f445caf550e2f1072` |
| 24 | `def` | [coneEquivUnitIso](../../../../GeneralTopology/EqualizerProducts.lean/declarations/coneequivunitiso.md) | 330 | `declaration-track:d352a3d45bf12425f36001fe1429b3b7bd82c32f4d0912d9771433568b938373` |
| 25 | `def` | [coneEquivCounitIso](../../../../GeneralTopology/EqualizerProducts.lean/declarations/coneequivcounitiso.md) | 336 | `declaration-track:c48dd37cf4435be873d921254eb663d42c8c184c81291a0d4fcf978fc012ea96` |
| 26 | `def` | [coneEquiv](../../../../GeneralTopology/EqualizerProducts.lean/declarations/coneequiv.md) | 374 | `declaration-track:4a2bac76dde7580c6502f7a92591141037dda143554f16a912da66c6fcbfcf41` |
| 27 | `def` | [isLimitMapConeOfIsLimitSheafConditionFork](../../../../GeneralTopology/EqualizerProducts.lean/declarations/islimitmapconeofislimitsheafconditionfork.md) | 385 | `declaration-track:55bf00b28cf07c9d52477fa28ba2141fc633cfb1d13670495545528dfb384737` |
| 28 | `def` | [isLimitSheafConditionForkOfIsLimitMapCone](../../../../GeneralTopology/EqualizerProducts.lean/declarations/islimitsheafconditionforkofislimitmapcone.md) | 420 | `declaration-track:e47471d1eebe2a80e027d6855223529a2f2fcdccca11224c160d1bba04da2c76` |
| 29 | `theorem` | [isSheaf_iff_isSheafEqualizerProducts](../../../../GeneralTopology/EqualizerProducts.lean/declarations/issheaf-iff-issheafequalizerproducts.md) | 459 | `result-track:e782ed7e2faf9c125293383cab51cb99e52acdfacb51a288874cd5700c2e5705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6837858f7bdb916ece8a43e99ed81ef12914f1a2b8fefb4d27c62da4661b9639 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
