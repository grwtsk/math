# Verification target: Tuple Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd27dd0c75ea028354831b36a295d5a9b86aeaf8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TupleNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TupleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd27dd0c75ea028354831b36a295d5a9b86aeaf8`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Phase` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SafeResidueTuple](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TupleNamespaced.lean/declarations/saferesiduetuple.md) | 23 | `declaration-track:b7fcd35b3033ca118be07ef55e053c1d9269348d60a136ce8e7e3e1156205b4b` |
| 2 | `def` | [SafeResidueTuple.total](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TupleNamespaced.lean/declarations/saferesiduetuple-total.md) | 30 | `declaration-track:f31faaaec8117caaa5453fd3e2a0c47a26291c8a07f8a21fd5e81e7c506bc5cc` |
| 3 | `structure` | [TuplePhase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TupleNamespaced.lean/declarations/tuplephase.md) | 37 | `declaration-track:4d1e100bfa91c23d51b203f13fb7ee72e111d24d7d04e095f0c7d7003f011261` |
| 4 | `def` | [TuplePhase.act](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TupleNamespaced.lean/declarations/tuplephase-act.md) | 42 | `declaration-track:a03c48d281f14f561c92a2fe9493200f7329440b1d43c47147207c214e4a2db6` |
| 5 | `def` | [TuplePhase.PreservesTotal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TupleNamespaced.lean/declarations/tuplephase-preservestotal.md) | 58 | `declaration-track:d032d3c17bf4e1c3ee12ed5bc4662fa5dffa7c139a3a5e6e434b394664a036ba` |
| 6 | `structure` | [TupleConstraintStabilizer](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TupleNamespaced.lean/declarations/tupleconstraintstabilizer.md) | 66 | `declaration-track:fd31bf67abe0feabe5002e1db7532352639567f05f8c96eb7348ce5d4f808791` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c24e80dc9bcd5f36d404d23517ce375d87e9e9d232876d1dfe0c4e37f171c7d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
