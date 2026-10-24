# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.CauSeqFilter.Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c33f9c52ddc802dea46e0425ea9fa7293833725d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c33f9c52ddc802dea46e0425ea9fa7293833725d`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CauSeq.tendsto_limit](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/declarations/causeq-tendsto-limit--72f939a7eb26bd4593a30f92.md) | 29 | `result-track:72f939a7eb26bd4593a30f922ab075cc8b1b01fa91c996be988aa1f25035fdd7` |
| 2 | `theorem` | [CauchySeq.isCauSeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/declarations/cauchyseq-iscauseq--cb22af89818f7460caeae26c.md) | 55 | `result-track:cb22af89818f7460caeae26c6659c739fb1dc99aece3e9725d7ae30f9f3e00ab` |
| 3 | `theorem` | [CauSeq.cauchySeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/declarations/causeq-cauchyseq--8911b1cd8c58728fc977d4af.md) | 66 | `result-track:8911b1cd8c58728fc977d4af3ddc5b13a58150ca9c6fabdf74826ab60d2ff088` |
| 4 | `theorem` | [isCauSeq_iff_cauchySeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/declarations/iscauseq-iff-cauchyseq--d033eae93cee732fb88eee5c.md) | 84 | `result-track:d033eae93cee732fb88eee5c691d678f6a32c54fd44090c3cc4b1e08b919f710` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/declarations/instance--3967e3e7f8f840e87e52716c.md) | 92 | `declaration-track:3967e3e7f8f840e87e52716cd0f291c51ba10d4b60f1897692fb273fbd939d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
