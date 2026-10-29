# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LocalSystem.Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1333bb9bbeeba88b228b57d50d9819f661ce0454",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean/index.md) · [Full source](../../../../../../Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1333bb9bbeeba88b228b57d50d9819f661ce0454`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Terrain` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TerrainFacet](../../../../../../Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean/declarations/terrainfacet--38bfbff5754f7c4c8703a468.md) | 30 | `declaration-track:38bfbff5754f7c4c8703a46836357a777ea4418269611ee3ac933322f6029e2b` |
| 2 | `structure` | [CertifiedPartialIsometry](../../../../../../Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean/declarations/certifiedpartialisometry--06036b2be07ba0fe1bd33160.md) | 43 | `declaration-track:06036b2be07ba0fe1bd331605e0a8da802f0d63ae73fc08308e527bdfe7c8e66` |
| 3 | `structure` | [FiniteLocalSystem](../../../../../../Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean/declarations/finitelocalsystem--63d0b33a53d04e3acafb816a.md) | 58 | `declaration-track:63d0b33a53d04e3acafb816a39092a855fbc2d113077dc26da0b0fa2c90d6026` |
| 4 | `theorem` | [transport_edge_resolves](../../../../../../Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean/declarations/transport-edge-resolves--988649e4904e8ac49ad60283.md) | 74 | `result-track:988649e4904e8ac49ad60283774bce6342efb8c2e4e571ce780f0af4a8e0f7cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3afafdde4c179d42e97de433cd3d886c9cf26e6421de6b8a6784bc1f9e66b77a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/LocalSystem/Variant72f348fa6054fbc46e927d7b3617fb5130acfd7f1aadb8af078194a59d2b663e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
