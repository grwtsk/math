# Verification target: Reduced Filter Inverse Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97ba9b390525e754ac1b6e12b212f1b48a3b13dc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97ba9b390525e754ac1b6e12b212f1b48a3b13dc`.

Source path: `GRWTSK/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourcePolynomial_leading_error](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/sourcepolynomial-leading-error.md) | 14 | `result-track:423ffa0cf684c8607822b91715b96f174c27ec549342a081aa8bd539f89134ef` |
| 2 | `theorem` | [sourceTailGap_pos](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/sourcetailgap-pos.md) | 36 | `result-track:147e7160a996f78ef6190bcf75a0e6f77d7ae2dac2f3be50513e3dd53f46dccb` |
| 3 | `theorem` | [sourceEndpoint_tail_lower](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/sourceendpoint-tail-lower.md) | 41 | `result-track:deb591e6b97b3ad35190ead5e656c1f086aa491da8881db3d73633f68ef3e517` |
| 4 | `theorem` | [reducedW_closedFormula](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/reducedw-closedformula.md) | 89 | `result-track:89f9fcdd4f794c757d755b2e35cd69eec1b40231421212129802b618aa626ee2` |
| 5 | `theorem` | [norm_add_half_ge](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/norm-add-half-ge.md) | 109 | `result-track:8aac59e4218a7d42d30b282015348f6b54b833e6a310ceaf09d42cab6e00c869` |
| 6 | `theorem` | [reducedW_tail_lower](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/reducedw-tail-lower.md) | 119 | `result-track:5c3180d7cb1f302f4c4a3a3f9b670bff0496531149fd096d0ed5d089a841348b` |
| 7 | `theorem` | [reducedW_inverse_tail_bound](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/reducedw-inverse-tail-bound.md) | 157 | `result-track:cd1e8077ba5c4b2ffbad03a2609970d5610fcc62ef0e5a0cc0e3467a30a34afe` |
| 8 | `theorem` | [reducedW_inverse_uniform_bound](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/reducedw-inverse-uniform-bound.md) | 174 | `result-track:366a97e3a5ff028b7dbfbcd7ac5b2e889867b973ae933c3efd4aee8137788079` |
| 9 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-8.md) | 216 | `declaration-track:c110cd817decd9843e830f6f2553f88b14f85e5ea9ca728dcbbee2049667f56d` |
| 10 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-7.md) | 219 | `declaration-track:bff9124801c7f6fe2bffd1e8f2f79d545d62892445f1e713512803baacf4226e` |
| 11 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example.md) | 221 | `declaration-track:1565b20b7759749d4b4bfc4b1734509dd7cd12f16235de16bf80796a59a17862` |
| 12 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-4.md) | 227 | `declaration-track:5f4f30db87564c01b58967a91ba529c360ba9d2bbc80a598a6922062c254bf7c` |
| 13 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-9.md) | 232 | `declaration-track:c7b8ad39bbb6a19df3f204d2f3946c0757be855c7ad76b0228f57ed92937d5c8` |
| 14 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-10.md) | 234 | `declaration-track:f1a6079ff8b4e223b28aa28471aa22655c94132f3b3617134b3e3f46d4110956` |
| 15 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-3.md) | 239 | `declaration-track:48f6480c9343ee49443da094fe321ad5634728611ef6c75bc1ce90cfa5a4c5ea` |
| 16 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-6.md) | 245 | `declaration-track:98510b0332f2fab3ab5fe57eb0b2effa66172030c66f176cafce5276dd085598` |
| 17 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-2.md) | 249 | `declaration-track:41d3b4f20ec1348f12d56d581438795213e16cc95b5cdd74bb83bfa2d3108c16` |
| 18 | `example` | [(anonymous)](../../../../MeasureAndIntegration/ReducedFilterInverseStatements.lean/declarations/example-source-edition-5.md) | 256 | `declaration-track:714d28ec040c6df65f51b88e4df314a6ecca4b48b1331136365f4d18d7e37c80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=837b0e5ee0454b00694c59ab67922a4207d5d1a1b2c22b37955a17cf07e15704 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
