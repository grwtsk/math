# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.CauSeqFilter.Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3983942cf88979e480e54fd90d3a598df5a2f16",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3983942cf88979e480e54fd90d3a598df5a2f16`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CauSeq.tendsto_limit](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/declarations/causeq-tendsto-limit--6217580edafe238464ef6e8e.md) | 31 | `result-track:6217580edafe238464ef6e8ebd9009cac342dc6cf85fff61c19d7c6baa4bfe3f` |
| 2 | `theorem` | [CauchySeq.isCauSeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/declarations/cauchyseq-iscauseq--a1e0a08582c4605b32103c46.md) | 57 | `result-track:a1e0a08582c4605b32103c469ee8b4430c206cb37fbf3ce1ff7e0e51a80a207e` |
| 3 | `theorem` | [CauSeq.cauchySeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/declarations/causeq-cauchyseq--9bf99757fd9721c63419a9c7.md) | 68 | `result-track:9bf99757fd9721c63419a9c704f6a11fd7ea7155492a8688e95e9384920958e6` |
| 4 | `theorem` | [isCauSeq_iff_cauchySeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/declarations/iscauseq-iff-cauchyseq--642f3e3bcf85e7c69054e6a2.md) | 86 | `result-track:642f3e3bcf85e7c69054e6a2a7eb9bc6b5d410804efdde67e756cb6dcb45f9a9` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/declarations/instance--601d6e401da6d55c9bf91d36.md) | 93 | `declaration-track:601d6e401da6d55c9bf91d363538484f1b0523f63418bdc48851945d9fc0cffa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
