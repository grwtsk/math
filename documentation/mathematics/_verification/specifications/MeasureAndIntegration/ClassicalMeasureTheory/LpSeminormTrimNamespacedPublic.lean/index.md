# Verification target: Lp Seminorm Trim Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11c48599950e5b397c9c00c9aec8ff5024c2d5e1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11c48599950e5b397c9c00c9aec8ff5024c2d5e1`.

Source path: `GRWTSK/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/declarations/elpnorm-trim-source-edition-2.md) | 35 | `result-track:6cde7600ece94f244b2bec0e0e5cd54d48668bf75e5de82f868a2485671e4678` |
| 2 | `theorem` | [limsup_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/declarations/limsup-trim.md) | 41 | `result-track:0f9899dccbe6c72869f31c62ea15f61831aa59ba919a9d8dcc54a8062a11f4e2` |
| 3 | `theorem` | [essSup_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/declarations/esssup-trim.md) | 52 | `result-track:b069ec002bb40e53822d6abd42e74a6d48d1b2da82f5a04a369274fadd0123f0` |
| 4 | `theorem` | [eLpNormEssSup_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/declarations/elpnormesssup-trim.md) | 57 | `result-track:987ca5ba260d96af5411aecc0eaa4174c098675fbc03833ce76eb12dd346f823` |
| 5 | `theorem` | [eLpNorm_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/declarations/elpnorm-trim.md) | 61 | `result-track:6a4c8f21c523d1b2990fef5b117801c5d54f88aab1c8da47cdd4128977c452b0` |
| 6 | `theorem` | [eLpNorm_trim_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/declarations/elpnorm-trim-ae.md) | 76 | `result-track:50c7b3f24ba9b8deb8a75eada2ed90e8e980a8e5ae0057fb3560e306a3fab69f` |
| 7 | `theorem` | [memLp_of_memLp_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormTrimNamespacedPublic.lean/declarations/memlp-of-memlp-trim.md) | 83 | `result-track:ae73514011432ab3c342ea3c673ebf417f729fec9cfae0f302b16192580a6758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5e42ce46afbc7b229494ef15d338208cf13484d878d44533780a93dd2993b36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
