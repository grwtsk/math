# Verification target: Fd Rep Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f6ef4fe94932e4533999ea3500faea8c3ea8a6b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f6ef4fe94932e4533999ea3500faea8c3ea8a6b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.Rep` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.FGModuleCat.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Schur` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FdRep](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/fdrep.md) | 47 | `declaration-track:d163afbe85da82696b74f6cf6ae00f61fae13c881821810f86f3253f4f90e262` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-9.md) | 56 | `declaration-track:a1994d8d762fd5d552e7a64f13db777ab8d477dbf0f88bb5b9be3b0adcdf0c87` |
| 3 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-5.md) | 57 | `declaration-track:4fe7b0e646762d70e7a93b264691d71c912dd725059b1a5b07c3df9b33add1d0` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-4.md) | 58 | `declaration-track:47195537af2a20e847aec767ea7f5b0f9188e07e44f08ed46e4672f1211c52df` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-8.md) | 59 | `declaration-track:9f7d871598a82fc156fbd691abad0805839020a8ef557114a9471635b75a16ab` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance.md) | 61 | `declaration-track:0d50045886b2d8ae135757425741dd2aa1159b5dc923e3b3fe7bd83472c3653d` |
| 7 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:3c7e3f2d73b1af48fb1a4a897c89e1d917883b9e31422b8c72d917263808974f` |
| 8 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-3.md) | 66 | `declaration-track:42db1ab83c9d09c2abbea38e39cf1ee0bba27c61eb45b6f3bb6a7c32b11d1b09` |
| 9 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-12.md) | 69 | `declaration-track:e20f3373d1d559e5a0353c7cb7a7b5b9de5feac4d46e7e8eae69cdaa4fd2011d` |
| 10 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-11.md) | 72 | `declaration-track:dbbfd11141d1932b24cf7cf35502a5930da14d9a801fcd634a3769d3e7683aa4` |
| 11 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-13.md) | 76 | `declaration-track:ee832ee9b3b65e60d85c78ae7912d6ca6486b8b624b2925a269b4513a72babc4` |
| 12 | `def` | [ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/anonymous.md) | 81 | `declaration-track:e1abd88ad7744e44e85c67aaa2971c074ff78dc8a7a910b3a616a27ab95af94c` |
| 13 | `def` | [isoToLinearEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/isotolinearequiv.md) | 86 | `declaration-track:fd480278e12fff452340636e2719a163f7d42513b52ab9d9e1ea1733c8596a23` |
| 14 | `theorem` | [Iso.conj_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/iso-conj.md) | 90 | `result-track:29b7757aa6aaacb3d818fb917e58f1e2b9f170e797830aee3452f1d7881d5bf2` |
| 15 | `def` | [of](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/of.md) | 100 | `declaration-track:623df3b62e98821f8d595836e68d8bc0253600f77e476a5c994d5f45daaaea13` |
| 16 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-10.md) | 105 | `declaration-track:b0e3cf983efb17e78975edf07a82a5d2575ac269b09c3b17e275fd87d7384fcb` |
| 17 | `theorem` | [forget₂_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/forget.md) | 108 | `result-track:70ea2d3c77515023c4f2a2d6fd2d351d7fda13eeae01c6f8b73ed54cf54c22c5` |
| 18 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/example.md) | 113 | `declaration-track:1c462bb221f97a4e66d9d145a15f0d5feef5de4d112dcfe43568c627b22b0ca0` |
| 19 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/example-source-edition-3.md) | 115 | `declaration-track:a5a6392d8f5298c5f5823a715ae4cfa04d69d9e47f3467a1493edc008d34ffe7` |
| 20 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/example-source-edition-2.md) | 117 | `declaration-track:6430e87ee9f801bc20c731261a40f129fea7494136b7112960e13a733b8ae06a` |
| 21 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-6.md) | 125 | `declaration-track:58c590abd9d0599655283de815c9f97517914dd7a8a1ec41e14899706c1611ee` |
| 22 | `theorem` | [finrank_hom_simple_simple](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/finrank-hom-simple-simple.md) | 128 | `result-track:e4ced7ce8a8124dbec4139dab2c552a6d5bbbb70eebeb2e5043ae79c5b5e4b0d` |
| 23 | `def` | [forget₂HomLinearEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/forget-homlinearequiv.md) | 134 | `declaration-track:6c339ffcf89cc668fe72b7ab8e0b6c597e21ce3cc5ef10a8d05de507b26af589` |
| 24 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/instance-source-edition-7.md) | 152 | `declaration-track:5b71274c5208a2850e226e0fbc55754ee9f975d413917394fc69bd0396ba52a2` |
| 25 | `def` | [dualTensorIsoLinHomAux](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/dualtensorisolinhomaux.md) | 174 | `declaration-track:bd809c6ddeeb240bf6ac19fa0f3915ed35e6718ed45732ef025081c5b34b3bcd` |
| 26 | `def` | [dualTensorIsoLinHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/dualtensorisolinhom.md) | 183 | `declaration-track:ce5898e7c4ce350df5eb047e974f1bf1e9591038df73e90230b221dc75f46930` |
| 27 | `theorem` | [dualTensorIsoLinHom_hom_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FdRepSource.lean/declarations/dualtensorisolinhom-hom-hom.md) | 189 | `result-track:12afcaacaab18a52e4719f4d9eba5dc1bec9ad7c0d3c8e26bc1979b087125258` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38b183f2ca1e054ae717e8877515f96428b9f825962d6cf42a9bf83a78dd7191 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
