# Verification target: Euler Data

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0f2c641dadd8ffd067f550993302dc7862ced7a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EulerData/Variantea2f3adda454d48481f705d582d5741e9f292d1bc9feecfd0745912eea3506b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/EulerData.lean/index.md) · [Full source](../../../../CommutativeAlgebra/EulerData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0f2c641dadd8ffd067f550993302dc7862ced7a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EulerData/Variantea2f3adda454d48481f705d582d5741e9f292d1bc9feecfd0745912eea3506b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EulerData/Variantea2f3adda454d48481f705d582d5741e9f292d1bc9feecfd0745912eea3506b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Prismatic.FinitePrimeState` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.BigOperators` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalEulerSpecification](../../../../CommutativeAlgebra/EulerData.lean/declarations/localeulerspecification.md) | 24 | `declaration-track:92ce5d279eb51417d6cda1e36c9ddddbcfe59c101a2009252ac5f3817cca9600` |
| 2 | `structure` | [CandidateLocalEulerDatum](../../../../CommutativeAlgebra/EulerData.lean/declarations/candidatelocaleulerdatum.md) | 31 | `declaration-track:fefa416e769e508fc8c41eb3a820fbb992c580d7796bf955607018957238107c` |
| 3 | `structure` | [CertifiedLocalEulerDatum](../../../../CommutativeAlgebra/EulerData.lean/declarations/certifiedlocaleulerdatum.md) | 39 | `declaration-track:b44557b00531355a46495a0fd14dafc39f4c277fe8514ec55d0f56581a848c06` |
| 4 | `structure` | [LocalEulerExtractionCertificate](../../../../CommutativeAlgebra/EulerData.lean/declarations/localeulerextractioncertificate.md) | 50 | `declaration-track:e61cfe25ab4609b9d5180c11a4bcffef17e17108e82f69581834bdacc621c1d0` |
| 5 | `structure` | [CertifiedEulerFamily](../../../../CommutativeAlgebra/EulerData.lean/declarations/certifiedeulerfamily.md) | 64 | `declaration-track:74e2c1fef76e28e233cc546543e7c59c16a2fcfbaff139d198f1f84703a005ec` |
| 6 | `def` | [finiteEulerProduct](../../../../CommutativeAlgebra/EulerData.lean/declarations/finiteeulerproduct.md) | 76 | `declaration-track:b2fd5acf4098d922fd02c1bf86835ce05fb07001bf9911e6c95d4336ebb72486` |
| 7 | `theorem` | [finiteEulerProduct_insert](../../../../CommutativeAlgebra/EulerData.lean/declarations/finiteeulerproduct-insert.md) | 84 | `result-track:c0381fa39e12901cbb1110a2143019471a2073158133e4c8bf64e523e6b414f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab732911aa492eb529f2c92bbcc9edc9e326c6e047586819c8823ae7281b7adf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/EulerData/Variantea2f3adda454d48481f705d582d5741e9f292d1bc9feecfd0745912eea3506b4.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/EulerData/Variantea2f3adda454d48481f705d582d5741e9f292d1bc9feecfd0745912eea3506b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
