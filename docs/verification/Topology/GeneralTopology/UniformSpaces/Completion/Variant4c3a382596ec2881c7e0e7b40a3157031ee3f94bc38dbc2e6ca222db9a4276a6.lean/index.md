# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Completion.Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc12df8a99712ed4324b424eebd4a12a2d4d1d24",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc12df8a99712ed4324b424eebd4a12a2d4d1d24`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean.json)

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
| 1 | `lemma` | [IsUniformInducing.isUltraUniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/isuniforminducing-isultrauniformity--6cca478474002aa9c5d0776e.md) | 36 | `result-track:6cca478474002aa9c5d0776e599c0f6d20e8f82676ebf85708310c88d806b5cd` |
| 2 | `instance` | [CauchyFilter.isSymm_gen](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/cauchyfilter-issymm-gen--468a3ea97f15295264b243ee.md) | 40 | `declaration-track:468a3ea97f15295264b243ee677142cb932bd3a17734f7639d1c851e1373d674` |
| 3 | `instance` | [CauchyFilter.isTrans_gen](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/cauchyfilter-istrans-gen--a916d71a687e27d5d66d5033.md) | 44 | `declaration-track:a916d71a687e27d5d66d5033a8c0c3ea18d8ff11870772e58d35b932473bafb9` |
| 4 | `instance` | [IsUltraUniformity.cauchyFilter](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/isultrauniformity-cauchyfilter--2ba2c3166b4c9353dee8fab5.md) | 47 | `declaration-track:2ba2c3166b4c9353dee8fab59cda02280f985e23ffc503eb07d19e2ff179ae4f` |
| 5 | `lemma` | [IsUltraUniformity.cauchyFilter_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/isultrauniformity-cauchyfilter-iff--57dc2b9776f013371ea6ee31.md) | 53 | `result-track:57dc2b9776f013371ea6ee316cfbf5014e6dd99160a995e1f6cbe1f1ceac86f1` |
| 6 | `instance` | [IsUltraUniformity.separationQuotient](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/isultrauniformity-separationquotient--b45fdfabca9b1ef57e40ec53.md) | 58 | `declaration-track:b45fdfabca9b1ef57e40ec5371b9a88a622c908dd2c96602d3ba795a2f21c263` |
| 7 | `lemma` | [IsUltraUniformity.separationQuotient_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/isultrauniformity-separationquotient-iff--eb1d4785c39aba5dac7c0ea1.md) | 77 | `result-track:eb1d4785c39aba5dac7c0ea139146b52d3216b22281d860c2aea3826ed202781` |
| 8 | `lemma` | [IsUltraUniformity.completion_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/isultrauniformity-completion-iff--a8fd652193a3dcc8a0a766f3.md) | 82 | `result-track:a8fd652193a3dcc8a0a766f372ebd541f0cccb80e5e88ff4aad56c6c951c4993` |
| 9 | `instance` | [IsUltraUniformity.completion](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/declarations/isultrauniformity-completion--4ce06902d8fd5bb3237f3bf6.md) | 87 | `declaration-track:4ce06902d8fd5bb3237f3bf6c07a21754d64d0b5454e13e0937b4b31d4e65e5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
