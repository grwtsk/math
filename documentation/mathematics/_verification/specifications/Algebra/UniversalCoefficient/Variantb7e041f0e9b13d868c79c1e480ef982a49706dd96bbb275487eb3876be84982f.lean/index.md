# Verification target: GRWTSK.Algebra.UniversalCoefficient.Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7975bd9be29397503c7374126ef222d09ca786d2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean/index.md) · [Full source](../../../../../Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7975bd9be29397503c7374126ef222d09ca786d2`.

Source path: `GRWTSK/Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.TorsionLedger` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Exact.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.CharacterModule` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniversalCoefficientTorsionTransfer](../../../../../Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean/declarations/universalcoefficienttorsiontransfer--5eed61ba5752d669c91c7e2c.md) | 22 | `declaration-track:5eed61ba5752d669c91c7e2c5805985120258c7af159bd80bd20a0aeff72fca2` |
| 2 | `def` | [cohomologyDegree](../../../../../Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean/declarations/cohomologydegree--ce548a88ed0e6888afd47c88.md) | 63 | `declaration-track:ce548a88ed0e6888afd47c889cfa3c9106b966ad08498d378576380f3cbec2b5` |
| 3 | `instance` | [instFiniteIntegralTorsion](../../../../../Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean/declarations/instfiniteintegraltorsion--b45b9b6982ede87db7e91150.md) | 67 | `declaration-track:b45b9b6982ede87db7e911508a13010ec486b5b4dd6304461eacf7e2d4f90221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acccb2ceadf6c36726e793b2fc5a23a2d4557a1d8b71137337e079b456e552d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean","GRWTSK/_verification/specifications/Algebra/UniversalCoefficient/Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
