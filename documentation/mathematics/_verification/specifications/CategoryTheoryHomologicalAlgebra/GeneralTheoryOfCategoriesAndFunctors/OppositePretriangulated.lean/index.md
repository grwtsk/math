# Verification target: Opposite Pretriangulated

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2cbd4c6def0ee15a35071ea01a7d57f9b024f32",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2cbd4c6def0ee15a35071ea01a7d57f9b024f32`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Opposite.Triangle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.HomologicalFunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [distinguishedTriangles](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/distinguishedtriangles.md) | 51 | `declaration-track:2149685ec86f31e6e7d334bb152e678722d9c1c7e3c72ab0fd471faa9d6037a7` |
| 2 | `lemma` | [mem_distinguishedTriangles_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/mem-distinguishedtriangles-iff.md) | 56 | `result-track:479247b12f89744acb5c683d965e617903c56f281dee8410aef8f46513860d52` |
| 3 | `lemma` | [mem_distinguishedTriangles_iff'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/mem-distinguishedtriangles-iff-source-edition-2.md) | 61 | `result-track:9266fdaba3386a8805136324c28910b4d7f2f619a8677227bf769bb7dcffb059` |
| 4 | `lemma` | [isomorphic_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/isomorphic-distinguished.md) | 74 | `result-track:ef27058e2ea0145956dea2070d86e2477c29f066f0d2c0b74bfd65c143bddd91` |
| 5 | `def` | [contractibleTriangleIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/contractibletriangleiso.md) | 84 | `declaration-track:ddb9ea3608fc26e89a46cacb1892d093403efe515ac304cd12f66911a5e587e4` |
| 6 | `lemma` | [contractible_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/contractible-distinguished.md) | 95 | `result-track:f4cc5bb962fc35f715fdd96233b800d0b1f6ba54b2c5b0a31f92f44a0242126e` |
| 7 | `def` | [rotateTriangleOpEquivalenceInverseObjRotateUnopIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/rotatetriangleopequivalenceinverseobjrotateunopiso.md) | 103 | `declaration-track:50da03f128bcb0a742cbd1641908d1cb73d38db1cb74def8122cb5aad519eec9` |
| 8 | `lemma` | [rotate_distinguished_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/rotate-distinguished-triangle.md) | 110 | `result-track:7a0161c092bf6685558499fe1878b24af42c27e88cb00fc1196dc07aae5b59d3` |
| 9 | `lemma` | [distinguished_cocone_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/distinguished-cocone-triangle.md) | 116 | `result-track:7338bcc7e67d528145754ad36042d3e5800832ab1abc82b93e890911f9820b68` |
| 10 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/complete-distinguished-triangle-morphism.md) | 127 | `result-track:62a1555c818e6615588b366b2aba2f602872435aaed96a0e75534c77af2db252` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/instance.md) | 153 | `declaration-track:8df7e5578eb1c28ead113701929b3fb82fcecb166bdd32377f1afe43b6a1dc0f` |
| 12 | `lemma` | [mem_distTriang_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/mem-disttriang-op-iff.md) | 165 | `result-track:644fcd5af4b4d86e5cafa1cbc2e182d10b56efa1af36c53a9d3f968c91620288` |
| 13 | `lemma` | [mem_distTriang_op_iff'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/mem-disttriang-op-iff-source-edition-2.md) | 169 | `result-track:d79c515e45cd646feb86631d445f9866363c83b7f0920be93a7a92d5ab574b80` |
| 14 | `lemma` | [op_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/op-distinguished.md) | 174 | `result-track:c68c7352b70e27a77f40d6f77aca49e410b2fed7fd6836565f781c4cf12305ee` |
| 15 | `lemma` | [unop_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/unop-distinguished.md) | 179 | `result-track:f7613a374623ae5403e935464bff5b469239ef5a6a09dab63abfbe459af89b88` |
| 16 | `lemma` | [map_distinguished_op_exact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositePretriangulated.lean/declarations/map-distinguished-op-exact.md) | 190 | `result-track:3047ebdd3e2696eeb1aff964fa198aaf9b0e535af15148e4553b9b1bc29b3f84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5a454b56f63a0bc527680ea512bfec16aec3e2ff0a281b4224c7bf871c5fc23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
