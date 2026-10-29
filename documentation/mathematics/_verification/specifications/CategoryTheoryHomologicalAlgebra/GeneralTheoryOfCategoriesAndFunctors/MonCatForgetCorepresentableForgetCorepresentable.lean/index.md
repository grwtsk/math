# Verification target: Mon Cat Forget Corepresentable Forget Corepresentable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e239a8b5c3a0408d7bf1ae6b0cc92c9e0d93734",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e239a8b5c3a0408d7bf1ae6b0cc92c9e0d93734`.

Source path: `GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Hom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftMultiplesHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/uliftmultipleshom.md) | 35 | `declaration-track:872ce5fb617acd899617defa09d701e4c1a30ec02a1153b2ebf3edba18e5a559` |
| 2 | `def` | [uliftPowersHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/uliftpowershom.md) | 41 | `declaration-track:5a0ad2ead0feee192dbc0013cff9385fcb06f347e7e2f066c9e062818ae077d6` |
| 3 | `def` | [fromMultiplicativeNatEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/frommultiplicativenatequiv.md) | 48 | `declaration-track:cc81be0f0969c240641be0a38fa17856453be054125e91dba40879de1d5899c6` |
| 4 | `def` | [fromULiftMultiplicativeNatEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/fromuliftmultiplicativenatequiv.md) | 53 | `declaration-track:fe7a122567051c63bb3009c6040674d8f9e0e8aac5e458ca667f26dd69ffeaa0` |
| 5 | `def` | [fromNatEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/fromnatequiv.md) | 63 | `declaration-track:3c367e430af0ae7ef83aa392226be62b59c22026d414355e3cb085c1df824136` |
| 6 | `def` | [fromULiftNatEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/fromuliftnatequiv.md) | 67 | `declaration-track:1781adf79ed6f5a03d2397cbc70bec27e5f4cfa63cafe8d2cc4acb4f64f52f14` |
| 7 | `def` | [MonCat.coyonedaObjIsoForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/moncat-coyonedaobjisoforget.md) | 73 | `declaration-track:74161ad1e4af03f30e8a85854d2a7779b2ef22a8afc781670b0beb55dceaa6e4` |
| 8 | `def` | [CommMonCat.coyonedaObjIsoForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/commmoncat-coyonedaobjisoforget.md) | 80 | `declaration-track:40f924c73da504d2b112721b32bbbee4eb4dcb6a66e4f0c5d82c13c28c004f6f` |
| 9 | `def` | [AddMonCat.coyonedaObjIsoForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/addmoncat-coyonedaobjisoforget.md) | 86 | `declaration-track:6cbb24318f862465d6b4572ad4c7544e0a88c963302f8888c98edcb9ffecc70b` |
| 10 | `def` | [AddCommMonCat.coyonedaObjIsoForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/addcommmoncat-coyonedaobjisoforget.md) | 92 | `declaration-track:4e1975d1033c6e6610f0da7cfbe78e74b111470aaf3427cfee2a5bc420b80755` |
| 11 | `instance` | [MonCat.forget_isCorepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/moncat-forget-iscorepresentable.md) | 97 | `declaration-track:c96486f208ff733e08ae7e1aec563c2aaba54bd67f47e54c8f3f5ae0e71c961c` |
| 12 | `instance` | [CommMonCat.forget_isCorepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/commmoncat-forget-iscorepresentable.md) | 101 | `declaration-track:7f87bd046814ae2930cbb26301ecf2ce28e512e2c020ed4dc0348c12fb4e0e32` |
| 13 | `instance` | [AddMonCat.forget_isCorepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/addmoncat-forget-iscorepresentable.md) | 105 | `declaration-track:23db62be8095f0da1dc19500a47adbcd241a647fb82550b152dc9a6581227d1f` |
| 14 | `instance` | [AddCommMonCat.forget_isCorepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatForgetCorepresentableForgetCorepresentable.lean/declarations/addcommmoncat-forget-iscorepresentable.md) | 109 | `declaration-track:54df3b94405218ad19b554cc50dde39b0f6c3914d9a65b62356ed98f60dd6a47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d03b5f1b3b30796760d7131f683658d132683070788be74fbc7782bbdc6bb81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
