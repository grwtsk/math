# Verification target: Complex Euler Product Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2356a076b5db6e815983968dc05338251cb1f485",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ComplexEulerProductFinite.lean/index.md) · [Full source](../../../../Combinatorics/ComplexEulerProductFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2356a076b5db6e815983968dc05338251cb1f485`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteZetaEulerFactorComplex](../../../../Combinatorics/ComplexEulerProductFinite.lean/declarations/finitezetaeulerfactorcomplex.md) | 17 | `declaration-track:54a973660d09e725d0ea1f7ea1215b2d2308c16acd98351950a02b041c3e045c` |
| 2 | `def` | [finiteZetaEulerProductComplex](../../../../Combinatorics/ComplexEulerProductFinite.lean/declarations/finitezetaeulerproductcomplex.md) | 23 | `declaration-track:7c5418281b3d618df97a6effd896228f9337ad53e2e9688cbfe3b800695626f5` |
| 3 | `theorem` | [finiteZetaEulerProductComplex_expands_boundedSmoothNumbers](../../../../Combinatorics/ComplexEulerProductFinite.lean/declarations/finitezetaeulerproductcomplex-expands-boundedsmoothnumbers.md) | 29 | `result-track:25dfe662b9a8742a65b9626386eb2b1863ddfdbc60808470a5ec47243c482854` |
| 4 | `def` | [zetaEulerApproxComplex](../../../../Combinatorics/ComplexEulerProductFinite.lean/declarations/zetaeulerapproxcomplex.md) | 45 | `declaration-track:45c4f756f3105356d488f596553663be285448c98f8d8315190dc2c5be8ada10` |
| 5 | `theorem` | [zetaEulerApproxComplex_expands_boundedSmoothNumbers](../../../../Combinatorics/ComplexEulerProductFinite.lean/declarations/zetaeulerapproxcomplex-expands-boundedsmoothnumbers.md) | 50 | `result-track:963d4477ac4aaf92c248f4039e4e56ed79d2cc78b3c8101f63784a122487bd4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=198d258f40df5c8872c02a7a6eda357323806a334d1d40db36ecd6dd27d97f73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
