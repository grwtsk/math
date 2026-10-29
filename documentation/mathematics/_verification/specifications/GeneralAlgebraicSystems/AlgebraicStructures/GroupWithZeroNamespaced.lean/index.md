# Verification target: Group With Zero Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a6b3a6604e608a0ac41512f53adbb64f826c5b7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variantcb8ae1f65b3bd4bae5d529fab9de80870c7bca45ec47725e53a58640410bc4a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a6b3a6604e608a0ac41512f53adbb64f826c5b7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variantcb8ae1f65b3bd4bae5d529fab9de80870c7bca45ec47725e53a58640410bc4a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variantcb8ae1f65b3bd4bae5d529fab9de80870c7bca45ec47725e53a58640410bc4a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Units.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNamespaced.lean/declarations/mulleft.md) | 35 | `declaration-track:1500a44e1d95e103278c1bfbc8431c211ec9fef72eef26608c75293de378307a` |
| 2 | `theorem` | [Group With Zero Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mulleft-vari-source-edition-2.md) | 41 | `result-track:31dec3e470e2564cd788dd2ec087e907b412baf62b871bd76f09d043d677f0b6` |
| 3 | `def` | [mulRight₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNamespaced.lean/declarations/mulright.md) | 48 | `declaration-track:9d3c80760101d1b45304762cede80aa04e8d5b70337eefab3b8408ba46535ede` |
| 4 | `theorem` | [Group With Zero Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mulleft-vari.md) | 54 | `result-track:06947ce552e8c69ecc8639806929731919526cf76ffea77ffb8b2d3e5acaca8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1d8bb54a2bd672eafc7f2b5baa85ed83eccdee417debfd55ca7bde02170f206 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variantcb8ae1f65b3bd4bae5d529fab9de80870c7bca45ec47725e53a58640410bc4a2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variantcb8ae1f65b3bd4bae5d529fab9de80870c7bca45ec47725e53a58640410bc4a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
