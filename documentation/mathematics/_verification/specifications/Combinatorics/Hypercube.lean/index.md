# Verification target: Hypercube

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba00ca15259d46acf0a64cea168ba0c1166723ce",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hypercube/Variant2aaddf8f5e174558ac37c282ce932fb281b195317b52f7a36f6300398ee167d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Hypercube.lean/index.md) · [Full source](../../../../Combinatorics/Hypercube.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba00ca15259d46acf0a64cea168ba0c1166723ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Hypercube/Variant2aaddf8f5e174558ac37c282ce932fb281b195317b52f7a36f6300398ee167d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Hypercube/Variant2aaddf8f5e174558ac37c282ce932fb281b195317b52f7a36f6300398ee167d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Manifest` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AxisEvidence](../../../../Combinatorics/Hypercube.lean/declarations/axisevidence.md) | 11 | `declaration-track:291bb31554e5243082013c748022437809eff372a450de7aa36089848400aed3` |
| 2 | `structure` | [HypercubicCell](../../../../Combinatorics/Hypercube.lean/declarations/hypercubiccell.md) | 17 | `declaration-track:5df029fca54f8bacecd609bc68ed44a9df8db5c8e4ba343533a5332f710ef834` |
| 3 | `def` | [Closed](../../../../Combinatorics/Hypercube.lean/declarations/closed.md) | 36 | `declaration-track:030f603481e69874ac085c9bfb3a6b52ca624d3249af2f12c527cc0d84589367` |
| 4 | `theorem` | [evidence_present](../../../../Combinatorics/Hypercube.lean/declarations/evidence-present.md) | 40 | `result-track:3fa22747b98dc4ab8bb21685e827811aa25dad272fb4864c77d11dff8a13075d` |
| 5 | `structure` | [FaceTransition](../../../../Combinatorics/Hypercube.lean/declarations/facetransition.md) | 49 | `declaration-track:16f4a323b683b55301a9b6a29c535e7ab16a1dfd902c9c3fb7a7a1de59ddfd5a` |
| 6 | `theorem` | [FaceTransition.trans](../../../../Combinatorics/Hypercube.lean/declarations/facetransition-trans.md) | 55 | `result-track:39dde8849691ca14afe4df9401fad6bc4276f0077b002310397623ba1175560f` |
| 7 | `structure` | [TheoremCell](../../../../Combinatorics/Hypercube.lean/declarations/theoremcell.md) | 69 | `declaration-track:d3d7bb728e42e8716f180eb47b3fbfd4fd7e33075edfd390324534f740204eba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcab104f0aed56facb05ab141846d788e6c24e43d6cff7ab6f5523b3d52d4970 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Hypercube/Variant2aaddf8f5e174558ac37c282ce932fb281b195317b52f7a36f6300398ee167d1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Hypercube/Variant2aaddf8f5e174558ac37c282ce932fb281b195317b52f7a36f6300398ee167d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
