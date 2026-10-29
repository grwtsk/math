# Verification target: Routing Residue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d08d77f3bff8dc502c6b10bbe8b5d1013c861f12",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RoutingResidue/Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d08d77f3bff8dc502c6b10bbe8b5d1013c861f12`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RoutingResidue/Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RoutingResidue/Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.Residue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.SeparatorObligation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClassificationStrategy](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/declarations/classificationstrategy.md) | 19 | `declaration-track:e7885e14140a4c3404daf6f86e76f4d03c7bcdc3ea4fd77b9787f7fb6395dcb3` |
| 2 | `inductive` | [RouteAssessment](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/declarations/routeassessment.md) | 26 | `declaration-track:bf61f2dcd885ac8975b74126c6cbd29fe34a609c8ac8f6ed6edc29d2c0033211` |
| 3 | `def` | [needsClassification](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/declarations/needsclassification.md) | 40 | `declaration-track:439c4c398bed28cd93bf733441dc4e787b963982c71923a0aefb6b890ef2aae3` |
| 4 | `theorem` | [named_does_not_activate](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/declarations/named-does-not-activate.md) | 47 | `result-track:a132c9338764bf4af2017c7a0e5aa82d671405c9956cb280bfcd7e7589ce8441` |
| 5 | `theorem` | [residue_activates](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/declarations/residue-activates.md) | 53 | `result-track:13d2a66c90f8f1e64c34b39dbab148e6c76a2ea31e646d528a514291f4d0d56b` |
| 6 | `structure` | [ResidueObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/declarations/residueobservation.md) | 64 | `declaration-track:f99ae8ec456e98e173d7fc9da149e3854111015bdb8a44ae12981d348b18061b` |
| 7 | `structure` | [ResidueCoupling](../../../../../ComputerScience/AlgorithmsInComputerScience/RoutingResidue.lean/declarations/residuecoupling.md) | 78 | `declaration-track:eb6dd689b7609ed786a6f5a14816f39e6b8dc7fc6f84cba788b71d351e358210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d300dda04bdd78e166b2dacef3818074749002d981b7f56aa19e1b68ff71a00d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RoutingResidue/Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RoutingResidue/Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
