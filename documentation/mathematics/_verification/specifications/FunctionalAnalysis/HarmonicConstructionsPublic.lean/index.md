# Verification target: Harmonic Constructions Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfe9ad8c0b7f04408d706586465aefe35d1e4087",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfe9ad8c0b7f04408d706586465aefe35d1e4087`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Constructions/Variant0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContDiffAt.harmonicAt](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/declarations/contdiffat-harmonicat.md) | 38 | `result-track:af216518234aee3c3646218d10428dd14ad79b1ed340632040b2c88954563a34` |
| 2 | `theorem` | [AnalyticAt.harmonicAt](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/declarations/analyticat-harmonicat.md) | 48 | `result-track:81273d04d819ee77082d1acbf2ad91cd4648f4e8e4c99a1d2537796eba3376e4` |
| 3 | `theorem` | [AnalyticAt.harmonicAt_re](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/declarations/analyticat-harmonicat-re.md) | 54 | `result-track:6b7f5fd424221cd0c0e163f6e4354a5f1fff94ec9c522852abccd12a1e5cb862` |
| 4 | `theorem` | [AnalyticAt.harmonicAt_im](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/declarations/analyticat-harmonicat-im.md) | 60 | `result-track:86ce1ac9b2c5b0f5b595c78645c03ca8f40251c027955af9614eeaa26c3b8d21` |
| 5 | `theorem` | [AnalyticAt.harmonicAt_conj](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/declarations/analyticat-harmonicat-conj.md) | 67 | `result-track:5832c68989e76cc206b56c069174df0bbaebbb29382dd8ce674e5dbdd102f109` |
| 6 | `lemma` | [analyticAt_harmonicAt_log_normSq](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/declarations/analyticat-harmonicat-log-normsq.md) | 75 | `result-track:006dba67c797da3bcb46f4200cca3221bb98220fd402435189af86f33248d6fc` |
| 7 | `theorem` | [AnalyticAt.harmonicAt_log_norm](../../../../FunctionalAnalysis/HarmonicConstructionsPublic.lean/declarations/analyticat-harmonicat-log-norm.md) | 109 | `result-track:65d4f763a1042e6833b92d6cc9b0860e0d8876c55c1f98eb3bf9b382c54f4342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b87b02e35216b8066b3efa1ad4dfe1acdbdebf1021fd5d87c95b33b87a5a46a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Constructions/Variant0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
