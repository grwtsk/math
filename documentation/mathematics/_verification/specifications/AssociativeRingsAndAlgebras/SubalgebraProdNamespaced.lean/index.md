# Verification target: Subalgebra Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f19206dcf7d82f209c82ce5e7443f312aa50015",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant8f02f50bcfca34477841c5ad4eea3c868a3a02c1b66f6f63d2d39ad98764e016.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f19206dcf7d82f209c82ce5e7443f312aa50015`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant8f02f50bcfca34477841c5ad4eea3c868a3a02c1b66f6f63d2d39ad98764e016.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant8f02f50bcfca34477841c5ad4eea3c868a3a02c1b66f6f63d2d39ad98764e016.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/declarations/prod.md) | 36 | `declaration-track:e462ea092361c5d4c10b3fe6cc5b8af27d9780586d078fd730d17323a97ca686` |
| 2 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/declarations/coe-prod.md) | 42 | `result-track:89c294302c22c0f6be5ee36ecfe12871a39a3f24d4b6c0dbed831cc8ac4edbda` |
| 3 | `theorem` | [prod_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/declarations/prod-tosubmodule.md) | 46 | `result-track:0594922caa78f2c84e8760d925ff9fb40235bdee092779656df9b5d647b64b2b` |
| 4 | `theorem` | [mem_prod](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/declarations/mem-prod.md) | 49 | `result-track:8094b43f8da204ab7edc019d226aeb9197981fa961b3067df329a9c1c54e02fe` |
| 5 | `theorem` | [prod_top](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/declarations/prod-top.md) | 53 | `result-track:80a535b410e97b8955adfd91607db9dfee6119d7d69b0654ebefdd6d3f06a4d7` |
| 6 | `theorem` | [prod_mono](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/declarations/prod-mono.md) | 55 | `result-track:59cb00c83b892b2ac9a44c821b9efbdf063b2b07d62ae0d7028e9cf87e07cb24` |
| 7 | `theorem` | [prod_inf_prod](../../../../AssociativeRingsAndAlgebras/SubalgebraProdNamespaced.lean/declarations/prod-inf-prod.md) | 60 | `result-track:9f8266f705d87457084859131cdb3d01cde33f998c42efcada3b87e480aaf039` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9869649257163b0da1cfb93d422d9db435a0742b216f94d0eda8179c136da620 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Prod/Variant8f02f50bcfca34477841c5ad4eea3c868a3a02c1b66f6f63d2d39ad98764e016.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Prod/Variant8f02f50bcfca34477841c5ad4eea3c868a3a02c1b66f6f63d2d39ad98764e016.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
