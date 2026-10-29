# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db28a075a7d4001b4d90fb5fcda817a03fdd3bee",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db28a075a7d4001b4d90fb5fcda817a03fdd3bee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [objEqToHom](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/objeqtohom--a91f4cc0d2bc7c5191d1699e.md) | 48 | `declaration-track:a91f4cc0d2bc7c5191d1699e947c6a1410d858434b4f2e7bc2dc4bc1e8914bac` |
| 2 | `theorem` | [objEqToHom_refl](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/objeqtohom-refl--458b408b6566efe4e6d690b9.md) | 53 | `result-track:458b408b6566efe4e6d690b99b59f707d023f1a33baddacdcc515eecaa39c48a` |
| 3 | `theorem` | [objEqToHom_d](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/objeqtohom-d--8b159283af98c00c02ead351.md) | 60 | `result-track:8b159283af98c00c02ead3511829c6f486eab8ea96aecb32c752a10313d7db3b` |
| 4 | `theorem` | [d_squared_apply](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/d-squared-apply--7877c972f607743c5aec0067.md) | 64 | `result-track:7877c972f607743c5aec0067cde072d2883a085b2b4069d64443707eaf1c2994` |
| 5 | `theorem` | [eqToHom_f'](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/eqtohom-f--907c8bc352a8d122f2eb1f59.md) | 69 | `result-track:907c8bc352a8d122f2eb1f592f4dc52116b903b4690a80d1484c1eed25b0c702` |
| 6 | `theorem` | [d_eqToHom](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/d-eqtohom--dbcd9980457e60c946acf33c.md) | 82 | `result-track:dbcd9980457e60c946acf33c1f444d34c6d547cc752ddaf778e0025173d3856e` |
| 7 | `def` | [dgoToHomologicalComplex](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/dgotohomologicalcomplex--5601ccaf87a0f3a001f2b80a.md) | 90 | `declaration-track:5601ccaf87a0f3a001f2b80a888094b582f738ca5453fc6fd2c84eaf24924a8a` |
| 8 | `def` | [homologicalComplexToDGO](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/homologicalcomplextodgo--c4d5997a084ea5623d765bd1.md) | 112 | `declaration-track:c4d5997a084ea5623d765bd130c56121b70bea273daa43e486fb878e8ab3833b` |
| 9 | `def` | [dgoEquivHomologicalComplexUnitIso](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/dgoequivhomologicalcomplexunitiso--885098df51eb65247ab18e2b.md) | 125 | `declaration-track:885098df51eb65247ab18e2becf68c0c05086aba90d946d751353db5f0b787da` |
| 10 | `def` | [dgoEquivHomologicalComplexCounitIso](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/dgoequivhomologicalcomplexcounitiso--4088334e3dbccf4595a3544d.md) | 137 | `declaration-track:4088334e3dbccf4595a3544dc9a75598eac20fbe7b3a98a2fd8e4cc3104c9fa0` |
| 11 | `def` | [dgoEquivHomologicalComplex](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/declarations/dgoequivhomologicalcomplex--1281e2c9177010a2e6048773.md) | 149 | `declaration-track:1281e2c9177010a2e60487733e43af2adc03a54806ea2c38472325936c16ad60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a26d1bcd1717cd6890e7e1a223eb21d0d8882bc3461c2ad140bffd6d1adb6847 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
