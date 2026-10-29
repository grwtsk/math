# Verification target: Constructions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43ea09fe84c486bc77d41248fa8185a169ae0965",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant24cb4bc3f8bf3289e10a3ead1b0d52122bf7e4111dd31215058699241fd1e880.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Constructions.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Constructions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43ea09fe84c486bc77d41248fa8185a169ae0965`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant24cb4bc3f8bf3289e10a3ead1b0d52122bf7e4111dd31215058699241fd1e880.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Constructions/Variant24cb4bc3f8bf3289e10a3ead1b0d52122bf7e4111dd31215058699241fd1e880.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Constructions.lean/declarations/finiteinter.md) | 29 | `declaration-track:97103d27216a167cfba222d12854e6d498d404045c0891083acac3946e23d774` |
| 2 | `inductive` | [finiteInterClosure](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Constructions.lean/declarations/finiteinterclosure.md) | 38 | `declaration-track:a2ddbb1295f8681676b31d499436c067d7cac45139c17047cbdb44fb7659480d` |
| 3 | `theorem` | [finiteInterClosure_finiteInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Constructions.lean/declarations/finiteinterclosure-finiteinter.md) | 43 | `result-track:bf0376255b088eebb9a2285eeb097ea5792aa8938f1fa0965ae96fa629a092be` |
| 4 | `theorem` | [finiteInter_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Constructions.lean/declarations/finiteinter-mem.md) | 49 | `result-track:19a83085691318dcb995db704767863d3a3d1a80087e1cb6fe60dd650fe5ab49` |
| 5 | `theorem` | [finiteInterClosure_insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Constructions.lean/declarations/finiteinterclosure-insert.md) | 60 | `result-track:2a51fe5f8abcef9f03d922b2c4986b90c352ca8598d1f2c4ee21f5e7dafe9598` |
| 6 | `theorem` | [mk₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Constructions.lean/declarations/mk.md) | 82 | `result-track:97475cea4d5563d70a8c4da80cb8f9353f9fc26fd3c75d0257da6f7d56e720e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98ad4083ccb719c89423d089bd019aec4f996a7998f16fc927f038f5e45b86ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant24cb4bc3f8bf3289e10a3ead1b0d52122bf7e4111dd31215058699241fd1e880.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Constructions/Variant24cb4bc3f8bf3289e10a3ead1b0d52122bf7e4111dd31215058699241fd1e880.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
