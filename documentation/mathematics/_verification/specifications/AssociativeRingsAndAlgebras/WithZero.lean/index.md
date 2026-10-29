# Verification target: With Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25dd019cdf566aea882169f7c6ce8cfffa6df0a5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WithZero/Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/WithZero.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/WithZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25dd019cdf566aea882169f7c6ce8cfffa6df0a5`.

Source path: `GRWTSK/Algebra/WithZero/Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WithZero/Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.WithZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLeftDistribClass](../../../../AssociativeRingsAndAlgebras/WithZero.lean/declarations/instleftdistribclass.md) | 16 | `declaration-track:8f8e4c3bbc587489380b980ed15a3a422fa4ee15fb6085f5df0b8c34adef2d92` |
| 2 | `instance` | [instRightDistribClass](../../../../AssociativeRingsAndAlgebras/WithZero.lean/declarations/instrightdistribclass.md) | 23 | `declaration-track:277802e8d1be7d7cc497083722da5f2f3ade430b6a040c8c0c54a0140a957f20` |
| 3 | `instance` | [instDistrib](../../../../AssociativeRingsAndAlgebras/WithZero.lean/declarations/instdistrib.md) | 30 | `declaration-track:3c87b6c6a00b67f772b3e05996535a54288d5a26a198a183a7113589363bdcb8` |
| 4 | `instance` | [instSemiring](../../../../AssociativeRingsAndAlgebras/WithZero.lean/declarations/instsemiring.md) | 34 | `declaration-track:229e4778ae069537a54cdd1491da0853f6c66d59e9e50860d8a863c09f76782e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5c211f37bf6722ef6c9f366404593fbace842e1aed9fbdd6264906305d937f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/WithZero/Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b.lean","GRWTSK/_verification/specifications/Algebra/WithZero/Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
