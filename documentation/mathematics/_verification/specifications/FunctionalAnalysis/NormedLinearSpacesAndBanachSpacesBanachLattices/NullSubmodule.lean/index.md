# Verification target: Null Submodule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebeae2cf9db4fa02b298831fd206b0799ed357de",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NullSubmodule/Variant8e064189d244489baba4cceb970181add0e0999afb78cb44c6f48576d3451db3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NullSubmodule.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NullSubmodule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebeae2cf9db4fa02b298831fd206b0799ed357de`.

Source path: `GRWTSK/Topology/GeneralTopology/NullSubmodule/Variant8e064189d244489baba4cceb970181add0e0999afb78cb44c6f48576d3451db3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NullSubmodule/Variant8e064189d244489baba4cceb970181add0e0999afb78cb44c6f48576d3451db3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nullSubgroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NullSubmodule.lean/declarations/nullsubgroup.md) | 34 | `declaration-track:cc9d84a79784c593eb805a8775abcf8b535700f5fe3a65d6a56a6ae8f5ef0567` |
| 2 | `lemma` | [isClosed_nullSubgroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NullSubmodule.lean/declarations/isclosed-nullsubgroup.md) | 44 | `result-track:6738db671ba1019d63de18e36f6279710f7cb81402803ae057c117201d66ae4d` |
| 3 | `lemma` | [mem_nullSubgroup_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NullSubmodule.lean/declarations/mem-nullsubgroup-iff.md) | 48 | `result-track:b411a20553d0e2f26cc8d00f64be64dc60cc0614bf4f4d1009ee21aeeda5ae3b` |
| 4 | `def` | [nullSubmodule](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NullSubmodule.lean/declarations/nullsubmodule.md) | 55 | `declaration-track:b36b19347ccc0938ab8c8090b6c6fa72170fd7763969e14d8191be0665fc5b67` |
| 5 | `lemma` | [isClosed_nullSubmodule](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NullSubmodule.lean/declarations/isclosed-nullsubmodule.md) | 62 | `result-track:5bd50ce81bf264e86bf3e3c5913dad50d2c2615fd156bd1f1feafe54722898a5` |
| 6 | `lemma` | [mem_nullSubmodule_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NullSubmodule.lean/declarations/mem-nullsubmodule-iff.md) | 65 | `result-track:cfcf7ec8aad4c4dcaac347bb8c2fcb7cbcfea99025e3f51ccee9bf468b157939` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e833b6a82eeb084bfc6440190239bde85cdf529e4fd168524e14ab0d6a346b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/NullSubmodule/Variant8e064189d244489baba4cceb970181add0e0999afb78cb44c6f48576d3451db3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/NullSubmodule/Variant8e064189d244489baba4cceb970181add0e0999afb78cb44c6f48576d3451db3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
