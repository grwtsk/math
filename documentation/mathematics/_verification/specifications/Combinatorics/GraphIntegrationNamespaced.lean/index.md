# Verification target: Graph Integration Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdebbffb562bd3b3c962a0f62edd25cbd134c7ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/GraphIntegrationNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/GraphIntegrationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdebbffb562bd3b3c962a0f62edd25cbd134c7ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Priority` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.All` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RHNodeClass](../../../../Combinatorics/GraphIntegrationNamespaced.lean/declarations/rhnodeclass.md) | 24 | `declaration-track:dccfc61cdba4da984ffbd1964da970ae76724357d72e97edd5bd3de654d59733` |
| 2 | `inductive` | [RHEdgeClass](../../../../Combinatorics/GraphIntegrationNamespaced.lean/declarations/rhedgeclass.md) | 34 | `declaration-track:9e3084ff2d326997e25d3057e745276d33a7a7e34b1fdb9dd9b97004d5c9fd0b` |
| 3 | `inductive` | [RHObjective](../../../../Combinatorics/GraphIntegrationNamespaced.lean/declarations/rhobjective.md) | 45 | `declaration-track:360d5611b64d265cd3edb293dcd71c16d28374322bf0553fe4dc00cc2a7e2b38` |
| 4 | `def` | [canonicalGraphModePlan](../../../../Combinatorics/GraphIntegrationNamespaced.lean/declarations/canonicalgraphmodeplan.md) | 55 | `declaration-track:e9a9953f0ef497019608eb6a575491ea50b1df80ae12bf242466757f063fd3c9` |
| 5 | `structure` | [RHGraphAccessPlan](../../../../Combinatorics/GraphIntegrationNamespaced.lean/declarations/rhgraphaccessplan.md) | 66 | `declaration-track:6968ce85a429e88c48c9f427a7e5707cf4280c9e46444d5f1319a6008ea74173` |
| 6 | `def` | [RHObjective.toGraphAccessPlan](../../../../Combinatorics/GraphIntegrationNamespaced.lean/declarations/rhobjective-tographaccessplan.md) | 76 | `declaration-track:5eb3d3381f41461b9a6f319d209daafec2ff0ecbb471a63a2b32bf29d54fd143` |
| 7 | `theorem` | [RHObjective.compiledPlan_supported](../../../../Combinatorics/GraphIntegrationNamespaced.lean/declarations/rhobjective-compiledplan-supported.md) | 151 | `result-track:dba710a90ca45c937f01ec648d2aa3bdb4176127797533bd88743522260bdb91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60b443a51c6ccb34d87345e24b8029fa0a2cb9a5fe11a639976b3b5c1ff11c43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
