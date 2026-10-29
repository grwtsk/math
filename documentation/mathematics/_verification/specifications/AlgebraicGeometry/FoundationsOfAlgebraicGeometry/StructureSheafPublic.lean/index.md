# Verification target: Structure Sheaf Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ae40f9026bbd9e9887a89f933432c1b0acab2c9",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ae40f9026bbd9e9887a89f933432c1b0acab2c9`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/isfraction.md) | 76 | `declaration-track:f2d63ea8a6d5d778935de2400e040399eab226ddb621402f0d3b377d69c8ed49` |
| 2 | `def` | [isFractionPrelocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/isfractionprelocal.md) | 84 | `declaration-track:1c54b1abac0719cd12ab89b8866df160d1e7fd05b1f9e801b682bfd46b2f3c6c` |
| 3 | `def` | [isLocallyFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/islocallyfraction.md) | 92 | `declaration-track:12e207d18277695c3c419f3c563e7f4d8b3d3cb713ac10dda204b16129df8ab7` |
| 4 | `theorem` | [zero_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/zero-mem.md) | 102 | `result-track:45aeac3a547ed0375c61447ec81a4071244a2693e9cede52d2d7a538444f3150` |
| 5 | `theorem` | [one_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/one-mem.md) | 107 | `result-track:93b36eae342bbc851c2fb305cd0bad459fe19e95fad60f1e61b89e8928e901a9` |
| 6 | `theorem` | [add_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/add-mem.md) | 112 | `result-track:8615e53f14cb61ac75d91bf9e9226de43cf569cc15079e22634bf0ec9b91e03a` |
| 7 | `theorem` | [neg_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/neg-mem.md) | 129 | `result-track:b72a509a1d0c312d1c144ad7514facec0e9c8373d95a02e3cd7169800d3f190a` |
| 8 | `theorem` | [mul_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/mul-mem.md) | 137 | `result-track:c5c0d0865b1248ad69fdf424ee23deb6b3a7d1f42bfcfd494f5c54edf448fd14` |
| 9 | `def` | [sectionsSubring](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/sectionssubring.md) | 162 | `declaration-track:503e6dd588a5c089b21eb46f4131717f61e733aea93ab0948a2047794541d16c` |
| 10 | `def` | [structureSheafInType](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/structuresheafintype.md) | 175 | `declaration-track:420d82603f209fa7753bb02312237f1bd6ed3d75ccb673c239ad7752035a707f` |
| 11 | `instance` | [commRingStructureSheafInTypeObj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/commringstructuresheafintypeobj.md) | 178 | `declaration-track:03407d76561cb4dd7e98c2d8e9826e8cab497e6cbb2b194c5d2243504c4212f1` |
| 12 | `def` | [structurePresheafInCommRing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/structurepresheafincommring.md) | 185 | `declaration-track:e39b7ef865d3480332f22a9581307822c4db17744fed356d54eaefd2399960fc` |
| 13 | `def` | [structurePresheafCompForget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/structurepresheafcompforget.md) | 196 | `declaration-track:8f3cae7b0382c03623f3bc088e3ed97ac512797d4407cce1c97c585650403816` |
| 14 | `def` | [Proj.structureSheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-structuresheaf.md) | 207 | `declaration-track:ff9981ce7b6bc1c8923cf2d3ae35e1ede5fecda53e0556345638fcdc28f7914e` |
| 15 | `theorem` | [Proj.res_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-res-apply.md) | 225 | `result-track:874d1103861dd8f1b1278e22e13efbc6615d0534d4c541a915631b50bf01b7e6` |
| 16 | `theorem` | [Proj.ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-ext.md) | 227 | `result-track:9c28cb4e55a88c39c31d3b73787a3d4dc8cf4511de7ba94087d646d253d32d8b` |
| 17 | `theorem` | [Proj.add_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-add-apply.md) | 228 | `result-track:d3bccfcdea0d94acad943ec16d6b4221c517e579fc2d0cdbab523258d02d864e` |
| 18 | `theorem` | [Proj.mul_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-mul-apply.md) | 229 | `result-track:7ca4ba8c4092f11be5fada04917e049df74f31f379ac66cfc33a3bc56ad0ee14` |
| 19 | `theorem` | [Proj.sub_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-sub-apply.md) | 230 | `result-track:6f493bef8f92ea7e25ad13c57e1871c90640ff7f1fb09bce4225f5a2d0341e78` |
| 20 | `theorem` | [Proj.pow_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-pow-apply.md) | 231 | `result-track:f9e51f4eb9b850e0de2426de38dbc642271e8b3df8bd97a7375af0e42e9c79c7` |
| 21 | `theorem` | [Proj.zero_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-zero-apply.md) | 232 | `result-track:6f1033a6bbdafcc76d44037ba92003d8070c06e9a11ed2c06ec429296691ec00` |
| 22 | `theorem` | [Proj.one_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-one-apply.md) | 233 | `result-track:99858f49478e9443fc98889b757551121a924bbcfe882b2cb041c358a88a7616` |
| 23 | `def` | [Proj.toSheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-tosheafedspace.md) | 238 | `declaration-track:795daf3f11a6489909c8db09f5c6307306e130044d1c287718ffaf4045b9aa34` |
| 24 | `def` | [openToLocalization](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/opentolocalization.md) | 247 | `declaration-track:b1ab66e9237a268f029a361777618f9171cba81c0512e96d882209592f55ca81` |
| 25 | `def` | [stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/stalktofiberringhom.md) | 260 | `declaration-track:d5de403dd014c50cccf61707b03f3334cb1d68a7e4e4105cc99cdeea611bf8b4` |
| 26 | `theorem` | [germ_comp_stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/germ-comp-stalktofiberringhom.md) | 269 | `result-track:43787620c00111bd25dbec997b48b2887e80631dbd5b8533286ed5f524fd26a1` |
| 27 | `theorem` | [stalkToFiberRingHom_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/stalktofiberringhom-germ.md) | 276 | `result-track:df4ecf6dd214a7094dd8c5ed267c4495c243afcc6110ca54362feed9284975f7` |
| 28 | `theorem` | [mem_basicOpen_den](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/mem-basicopen-den.md) | 282 | `result-track:ad7169297498a0814f9dbdd76a6d46efc2a4d697ee8c0f983d5b32ae476d36d6` |
| 29 | `def` | [sectionInBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/sectioninbasicopen.md) | 292 | `declaration-track:a39bbb7a0087866001ae578c14a641531e647852b4b0a48f1727f6e4f27bbdf1` |
| 30 | `def` | [homogeneousLocalizationToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/homogeneouslocalizationtostalk.md) | 305 | `declaration-track:840b95c7f63526791a9d87d692080550f2f82d9a76848b69fa210e048da6c6a9` |
| 31 | `lemma` | [homogeneousLocalizationToStalk_stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/homogeneouslocalizationtostalk-stalktofiberringhom.md) | 327 | `result-track:869fc25b1e1f182d13098d2ccf011bf7ac507c3a496298e74b2e116e110f3272` |
| 32 | `lemma` | [stalkToFiberRingHom_homogeneousLocalizationToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/stalktofiberringhom-homogeneouslocalizationtostalk.md) | 345 | `result-track:33e8ee4beda46b9fa818c8e7673bd61949d7eaaa63be9899a40cfeb926f701eb` |
| 33 | `def` | [Proj.stalkIso'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-stalkiso.md) | 354 | `declaration-track:db6e35aa401feb7e9ef5e85cd57e3d8b1a7eb195e6a7e2def43a2d123182aff6` |
| 34 | `theorem` | [Proj.stalkIso'_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-stalkiso-germ.md) | 362 | `result-track:c480daf85a9cd37526d600096bace1d1a987ec77d214560e7e97d6a4058bc4c1` |
| 35 | `theorem` | [Proj.stalkIso'_symm_mk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-stalkiso-symm-mk.md) | 368 | `result-track:5af59bbf0a8ff376df9089bf516392ed27b02b694df66700043bae33b0023ab5` |
| 36 | `def` | [Proj.toLocallyRingedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/StructureSheafPublic.lean/declarations/proj-tolocallyringedspace.md) | 374 | `declaration-track:fdadd4ecadb926f9f96ed473beb19d90087557680636149e4ae5a127b3d79cce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72bd902134b0fcb616e2e13475439e24beacfb39184b1e7162617874cbb9f318 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
