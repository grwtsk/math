# Verification target: Endpoint Expansion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa655e3e4aeda209ee18a9f1076c426b6d674cb",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EndpointExpansion/Variant96f7d4cdc74079b4a2f7cda30e56448a5f9450137c1b1197f135db6494c1a1ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EndpointExpansion.lean/index.md) · [Full source](../../../../GeneralTopology/EndpointExpansion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa655e3e4aeda209ee18a9f1076c426b6d674cb`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EndpointExpansion/Variant96f7d4cdc74079b4a2f7cda30e56448a5f9450137c1b1197f135db6494c1a1ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EndpointExpansion/Variant96f7d4cdc74079b4a2f7cda30e56448a5f9450137c1b1197f135db6494c1a1ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointLimit` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFullPolynomial](../../../../GeneralTopology/EndpointExpansion.lean/declarations/endpointfullpolynomial.md) | 17 | `declaration-track:045b3853fa69946babf55f7286a810fbaa92611c2d3f202a185712ecd0a2bf98` |
| 2 | `theorem` | [endpointPolynomialCorrelation_eq_full](../../../../GeneralTopology/EndpointExpansion.lean/declarations/endpointpolynomialcorrelation-eq-full.md) | 28 | `result-track:a0ccc6f9f5aa99289d93928b0ec03ae5ea697bc4999ebe2b5b15ee0b22bfa91b` |
| 3 | `theorem` | [actual_endpoint_full_polynomial](../../../../GeneralTopology/EndpointExpansion.lean/declarations/actual-endpoint-full-polynomial.md) | 58 | `result-track:1b68113bd94f968b571ccb3cf995f9189bab42db91650bb496121365396c11ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56878fe83d64fb76704a3b37b351fb453e7ff4785616719d7849bf1436f96b4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/EndpointExpansion/Variant96f7d4cdc74079b4a2f7cda30e56448a5f9450137c1b1197f135db6494c1a1ce.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/EndpointExpansion/Variant96f7d4cdc74079b4a2f7cda30e56448a5f9450137c1b1197f135db6494c1a1ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
