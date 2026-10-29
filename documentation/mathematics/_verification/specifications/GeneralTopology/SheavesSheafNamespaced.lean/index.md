# Verification target: Sheaves Sheaf Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "966ee74571391e3e132311552cbd8a57423cc3e4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheavesSheafNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SheavesSheafNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `966ee74571391e3e132311552cbd8a57423cc3e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Spaces` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheaf](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/issheaf.md) | 92 | `declaration-track:1faf3c9500453bf084fb3f4975fef5fe80f91539f11dbe5bf7cdcc7a2a5976ac` |
| 2 | `theorem` | [isSheaf_unit](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/issheaf-unit.md) | 99 | `result-track:23a428f86b9f340730df0fb21352c5d2d37a69bbf321ce3729e0834c6395ed49` |
| 3 | `theorem` | [isSheaf_iso_iff](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/issheaf-iso-iff.md) | 104 | `result-track:cda1a2b94e1fb8541dadc9fc10cd8c06258446b406e61377d032868ad9afb7eb` |
| 4 | `theorem` | [isSheaf_of_iso](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/issheaf-of-iso.md) | 111 | `result-track:f6ee5ec3380db1873712c66880eb1b9b55a4856a7f948d4347aedcfd20063663` |
| 5 | `def` | [Sheaf](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/sheaf.md) | 123 | `declaration-track:199a3552408a8531ceb8440ec5933323695e721e2c95637d493842edaf3fdff5` |
| 6 | `instance` | [SheafCat](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/sheafcat.md) | 129 | `declaration-track:fa901d16948fd1d1cea5bde0222b2dd8fe4a5e71adbb510a4b03ee9a5cd0a7ec` |
| 7 | `abbrev` | [Sheaf.presheaf](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/sheaf-presheaf.md) | 135 | `declaration-track:66f1fca3e158cc3625ec1346342e39062e0b44373cca3109b8fab2bcae5e98aa` |
| 8 | `instance` | [sheafInhabited](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/sheafinhabited.md) | 143 | `declaration-track:38450bce75c6081aa3f34f92f0122fdf1cca686bacf02b723214041dcf9b94f9` |
| 9 | `def` | [forget](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/forget.md) | 152 | `declaration-track:3d815a9c63a04e43f70ba6cac18b1bec0eff74341b0840aa1ba38ff44f4a6dcd` |
| 10 | `instance` | [forgetFull](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/forgetfull.md) | 158 | `declaration-track:0a516868c438646083f29c61d4d1877b8eb0eb600d22ab2c3539dc8b5c6ca278` |
| 11 | `instance` | [forgetFaithful](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/forgetfaithful.md) | 162 | `declaration-track:bfa729315cbf37195db0f596f91a2dd0015a2362f54c026b3f6d34c6ec641bee` |
| 12 | `theorem` | [id_app](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/id-app.md) | 166 | `result-track:10c58e9e11f82dc9e4422db26acc3f3bee0834546de5ddf29b3a9ce6e45c690e` |
| 13 | `theorem` | [comp_app](../../../../GeneralTopology/SheavesSheafNamespaced.lean/declarations/comp-app.md) | 171 | `result-track:ca8742a8d032a23e3b0ead558a5427ac43a0dde3d832127536d904451003ac6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a372226d0c93a195caae13d13811b22f60913d7d6cf52192070baebaa8a88d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
