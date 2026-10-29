# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChangeOfRings.Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc61e9830b8a535f9d285053cfb7aebdd4688af3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc61e9830b8a535f9d285053cfb7aebdd4688af3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Sheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.ChangeOfRings` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalars](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean/declarations/restrictscalars--15a80d862e3dff1b9b510be3.md) | 40 | `declaration-track:15a80d862e3dff1b9b510be3017d8975b477e821376ad35414037f86c3078748` |
| 2 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean/declarations/instance--e805de46fb2189c67d1f7f46.md) | 47 | `declaration-track:e805de46fb2189c67d1f7f46fd2a425ba0ea21cefcb21708b5dfa342083d8c9c` |
| 3 | `def` | [restrictHomEquivOfIsLocallySurjective](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean/declarations/restricthomequivofislocallysurjective--12847cee6e5937403c08a9b8.md) | 58 | `declaration-track:12847cee6e5937403c08a9b82ec678d4fbf118fc3685733be738fc740bc205fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c724df47cefebb5568b5aaba2cf63f4386921f14f811fd81e0186b5c6c9ee4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0eb17c2b0029698aa1222ce50e5daba184f4c05bf3ac314baec1c30967a24691.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
