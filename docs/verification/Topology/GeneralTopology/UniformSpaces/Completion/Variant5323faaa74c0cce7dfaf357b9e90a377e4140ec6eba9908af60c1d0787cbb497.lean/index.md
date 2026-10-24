# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Completion.Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57e689f4979fdce829c29d13848e37228269025b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57e689f4979fdce829c29d13848e37228269025b`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean.json)

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
| 1 | `lemma` | [IsUniformInducing.isUltraUniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/isuniforminducing-isultrauniformity--7a894b743c5c85fa556b7333.md) | 28 | `result-track:7a894b743c5c85fa556b7333f163f22a680ae722f44c0b9cf42f134f93603016` |
| 2 | `instance` | [CauchyFilter.isSymm_gen](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/cauchyfilter-issymm-gen--c4db588a75654dc1e8543a75.md) | 32 | `declaration-track:c4db588a75654dc1e8543a75c57bf90d7c8050dc9e3d3b05ba23fbf35fff99ea` |
| 3 | `instance` | [CauchyFilter.isTrans_gen](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/cauchyfilter-istrans-gen--5b2f4fa49cf4fca1603786e9.md) | 36 | `declaration-track:5b2f4fa49cf4fca1603786e9af2aaa0ce7115161b49334f87b4413c615f65a96` |
| 4 | `instance` | [IsUltraUniformity.cauchyFilter](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/isultrauniformity-cauchyfilter--bfdb7236b78fd449f4f25ee4.md) | 39 | `declaration-track:bfdb7236b78fd449f4f25ee48c19e148f0d4df15abcf1ce8dc3645620a917ddb` |
| 5 | `lemma` | [IsUltraUniformity.cauchyFilter_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/isultrauniformity-cauchyfilter-iff--f5bb7961865b40e7056c435c.md) | 45 | `result-track:f5bb7961865b40e7056c435cd212b5b3ef13c9d9c33cba9ee31f4234c543dc05` |
| 6 | `instance` | [IsUltraUniformity.separationQuotient](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/isultrauniformity-separationquotient--d4a3bc7e995377964cebcc1a.md) | 50 | `declaration-track:d4a3bc7e995377964cebcc1a2cbe2d178c8ab24dd8969947aa3b126ecd1dda5a` |
| 7 | `lemma` | [IsUltraUniformity.separationQuotient_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/isultrauniformity-separationquotient-iff--cb62694e75c789e8c2de3c98.md) | 69 | `result-track:cb62694e75c789e8c2de3c98f8b2463bd20af80ea0bec46b290a46a513f8b21e` |
| 8 | `lemma` | [IsUltraUniformity.completion_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/isultrauniformity-completion-iff--15a9b1e463a032c96a8e6c96.md) | 74 | `result-track:15a9b1e463a032c96a8e6c96644ab85e81674c52483c7b16b7e3aad62fe3d28e` |
| 9 | `instance` | [IsUltraUniformity.completion](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/declarations/isultrauniformity-completion--2c9c56c3463b29cbe48c8bdc.md) | 79 | `declaration-track:2c9c56c3463b29cbe48c8bdc43d7d83e18b51336be8955cc34e71d1558afc109` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
