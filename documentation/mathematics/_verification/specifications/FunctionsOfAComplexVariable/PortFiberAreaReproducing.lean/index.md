# Verification target: GRWTSK.Interfaces.PortFiberAreaReproducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c17e78682f6043d9c06f46eb54b892ee220a60",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberAreaReproducing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c17e78682f6043d9c06f46eb54b892ee220a60`.

Source path: `GRWTSK/Interfaces/PortFiberAreaReproducing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberAreaReproducing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberAreaComplete`](../../../../MeasureAndIntegration/PortFiberAreaComplete.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicAreaReproducing`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicAreaReproducing.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/schemaversion.md) | 32 | `declaration-track:c3d2b685bf5e3b4e26d43716194cf8469843c51fffc8b0ae623b1020a7194cf6` |
| 2 | `inductive` | [AddedIndex](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/addedindex.md) | 34 | `declaration-track:c8dfdf214d1e56ce0ca74e298a11124e4ec66c3aaf42acd38abd8e2b05d05d74` |
| 3 | `def` | [AddedClaim](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/addedclaim.md) | 45 | `declaration-track:aa2b47d611804bf307cce7fecb6ff7eed17167830094195dc205b1b64d144a56` |
| 4 | `theorem` | [addedClaim_proof](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/addedclaim-proof.md) | 81 | `result-track:483ba3b87f97967c8889ff7e9d85eb34fbfb9af3f0680cb3c454d96b50634b55` |
| 5 | `def` | [portfolio](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/portfolio.md) | 100 | `declaration-track:e8b71ae6a1b82a16a2620622c0af95ba7e4889c17a74c88fcfab6917e8f08c1a` |
| 6 | `def` | [architecture](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/architecture.md) | 103 | `declaration-track:8f31a0f110da48d5d6d721c85974c7800520e9f0959b85d2cf2d8ce7dd7567f9` |
| 7 | `abbrev` | [PreviousIndex](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/previousindex.md) | 107 | `declaration-track:6a742bfcae23d430818d063159fc981c7f2220de6dc2878b554b4e44b03a1dcf` |
| 8 | `theorem` | [original_branch_unchanged](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/original-branch-unchanged.md) | 111 | `result-track:781abbd45c3618e982a0fec4e23da3559ec5db638aa0bcd712dce801516719ac` |
| 9 | `theorem` | [new_branch_proved](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/new-branch-proved.md) | 117 | `result-track:c2dacb10f4edfb96d4a551989215023bea4068ec1c835bef0688028e5d482f8c` |
| 10 | `theorem` | [target_unchanged](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/target-unchanged.md) | 122 | `result-track:4eb8a0002c1f97ce26a24cc8edcbaaea31f4236a1d23bf916129f3e976973259` |
| 11 | `theorem` | [retarget_preserves_new](../../../../FunctionsOfAComplexVariable/PortFiberAreaReproducing.lean/declarations/retarget-preserves-new.md) | 127 | `result-track:b2539ff9eef71c4d7345c287a0a466717bdb2fe401d685209c68e31abc52715d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5d6ba3418cabfaef9bea696f5be9805d5073e5051b2a4bf8f6dce55361c6e35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Interfaces/PortFiberAreaReproducing.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/PortFiberAreaReproducing.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
