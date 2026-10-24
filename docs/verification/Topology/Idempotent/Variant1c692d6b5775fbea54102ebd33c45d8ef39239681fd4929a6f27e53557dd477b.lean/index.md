# Verification target: GRWTSK.Topology.Idempotent.Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8232207b783803c9083efe11c195865fdacdb07d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/index.md) · [Full source](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8232207b783803c9083efe11c195865fdacdb07d`.

Source path: `GRWTSK/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIdempotentElem_toLinearMap_iff](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/declarations/isidempotentelem-tolinearmap-iff--13e02883d27b5bd69a37abda.md) | 46 | `result-track:13e02883d27b5bd69a37abda205d3ff3cebce6c496e5db4577eefb086eb315fe` |
| 2 | `lemma` | [ext_iff](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/declarations/ext-iff--dca501f3c6b145ecf0914486.md) | 60 | `result-track:dca501f3c6b145ecf091448666fe8367e9263785b55671be0de0025f8ae926b3` |
| 3 | `lemma` | [range_mem_invtSubmodule_iff](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/declarations/range-mem-invtsubmodule-iff--29e0b50c340d6ab68ab6e5c0.md) | 69 | `result-track:29e0b50c340d6ab68ab6e5c0e1bb105fde86892374327c67a1074e31a35084d9` |
| 4 | `lemma` | [ker_mem_invtSubmodule_iff](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/declarations/ker-mem-invtsubmodule-iff--ea340fadad929cd87c32e608.md) | 80 | `result-track:ea340fadad929cd87c32e608c10cb7d2b333557a00a8abd3f73974a7d38845da` |
| 5 | `lemma` | [commute_iff](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/declarations/commute-iff--ca187a55ad4684058048d43e.md) | 91 | `result-track:ca187a55ad4684058048d43efd385414e9f46ae0e9624cc1c0b570b4c4f1634e` |
| 6 | `theorem` | [commute_iff_of_isUnit](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/declarations/commute-iff-of-isunit--33fb214b7926cce38481df2c.md) | 101 | `result-track:33fb214b7926cce38481df2c2f3d3b023c3f69669edb6856ee6b658727c0a0ed` |
| 7 | `theorem` | [isClosed_range](../../../../mathematics/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/declarations/isclosed-range--6a383a2431a9d2dcf4b93f82.md) | 109 | `result-track:6a383a2431a9d2dcf4b93f821f42fee632c08d35fecc8a96249d34899e84f202` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
