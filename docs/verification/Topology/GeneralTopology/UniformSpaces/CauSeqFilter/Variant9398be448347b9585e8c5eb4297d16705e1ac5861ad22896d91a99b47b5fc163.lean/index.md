# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.CauSeqFilter.Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ff92ae30c0038a118f262f0e939b9cd6ae0ff92",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ff92ae30c0038a118f262f0e939b9cd6ae0ff92`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CauSeq.tendsto_limit](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/declarations/causeq-tendsto-limit--f76e47b129313271f67de4df.md) | 23 | `result-track:f76e47b129313271f67de4df2398229dc8d0548fbf9a682e724b2c197a49fb20` |
| 2 | `theorem` | [CauchySeq.isCauSeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/declarations/cauchyseq-iscauseq--82ea03f9b1915d1a2f07193a.md) | 49 | `result-track:82ea03f9b1915d1a2f07193a7fadb505aa2354d404af21b2a31535ceb4ae7952` |
| 3 | `theorem` | [CauSeq.cauchySeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/declarations/causeq-cauchyseq--11ee549049f9701be8a912c1.md) | 60 | `result-track:11ee549049f9701be8a912c1a124d54dcd651227c3b1732bccaae893ebf7085d` |
| 4 | `theorem` | [isCauSeq_iff_cauchySeq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/declarations/iscauseq-iff-cauchyseq--f3d63096c803a519b6f0807f.md) | 78 | `result-track:f3d63096c803a519b6f0807f914f779d1a4771f1cd62efb4d8f2f2ef5d5a2d76` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/declarations/instance--6e29bfd5cd49cb6df58310c3.md) | 85 | `declaration-track:6e29bfd5cd49cb6df58310c3a02cc744d4c881c73505f8799cecc2d1ef56a794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
