# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.OnePrimeMoment.Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1c3a7b87e5a1da793f73f6a52883ae162105152",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1c3a7b87e5a1da793f73f6a52883ae162105152`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.QSeries.CoefficientRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OnePrimeMomentSystem](../../../../../../NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean/declarations/oneprimemomentsystem--2e7011cb55efc664db5a8918.md) | 20 | `declaration-track:2e7011cb55efc664db5a89186d186bfd7dc7e17c568cdd1b27eb2624ef929782` |
| 2 | `def` | [OnePrimeMomentSystem.q](../../../../../../NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean/declarations/oneprimemomentsystem-q--81875a1ca53aa21fd4a51722.md) | 34 | `declaration-track:81875a1ca53aa21fd4a51722a394bafd8e42cd31ab1c9eaffb3cc10e34c0fbb9` |
| 3 | `theorem` | [OnePrimeMomentSystem.q_nonnegative](../../../../../../NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean/declarations/oneprimemomentsystem-q-nonnegative--610f99c249e2f21a6e2b4a09.md) | 38 | `result-track:610f99c249e2f21a6e2b4a09414a8e3617ac0ad8adf487125b72ea4044d387ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdefa2ad708635ccbcecc09c0e64ac6d359c559ab04a860d52b861af741b4741 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
