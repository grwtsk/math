# Verification target: Mv Polynomial Cardinal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "340822f9aecbad0ca2f26677ea5f717726fa27cc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `340822f9aecbad0ca2f26677ea5f717726fa27cc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Cardinal` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_max_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/declarations/cardinalmk-eq-max-lift.md) | 46 | `result-track:00d88e0020c2fc8622d8c187443afe5e59de3897f514af65b751694f47027c9b` |
| 2 | `theorem` | [cardinalMk_eq_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/declarations/cardinalmk-eq-lift.md) | 51 | `result-track:bf848ca39f557e0313564d18bc6d8bc2650b8f299dbc6c206b514aa2ed423efb` |
| 3 | `theorem` | [cardinalMk_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/declarations/cardinalmk-eq-one.md) | 54 | `result-track:01ad95604bbc5561239ab767006d2d85c9b7b9905e222041b060558304297df1` |
| 4 | `theorem` | [cardinalMk_le_max_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/declarations/cardinalmk-le-max-lift.md) | 61 | `result-track:4ed30d213786a49c78c66c8528efee552dcf27e9253e0e69208d12600eb58287` |
| 5 | `theorem` | [cardinalMk_eq_max](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/declarations/cardinalmk-eq-max.md) | 69 | `result-track:e49d71bbd6ae53f8043ec00ac0af4f3a435a99ec6cdec01b1c7f46f16bf97198` |
| 6 | `theorem` | [cardinalMk_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/declarations/cardinalmk-eq.md) | 72 | `result-track:75f3a3889678c6b063626e9d08275f5e1612d4822366ce680a8b5ffcad2a6a67` |
| 7 | `theorem` | [cardinalMk_le_max](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialCardinalNamespacedPublic.lean/declarations/cardinalmk-le-max.md) | 78 | `result-track:a243c815569c500d7423ab069fee294b31f1d8c818d5080bc6a120e46654b37c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=320c7ffda414f08c89f2186ce874cdace5790235d9190be3eec2be83869357f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Cardinal/Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
