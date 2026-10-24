# Verification target: GRWTSK.Topology.GeneralTopology.Quotient.Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2f4c19fb926d9551f84515a8d85c02f4d97da86",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2f4c19fb926d9551f84515a8d85c02f4d97da86`.

Source path: `GRWTSK/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/insttopologicalspace--51af53f29199217295fdbcd7.md) | 32 | `declaration-track:51af53f29199217295fdbcd758f0eb3864a55700a0e4ce7fa356f9a917eccb95` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instance--3ad4d8e24930e2ec2c633e25.md) | 36 | `declaration-track:3ad4d8e24930e2ec2c633e255c90a5d135ef7ffa80728f133567cd2492462fe2` |
| 3 | `theorem` | [isQuotientMap_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/isquotientmap-mk--1fd73036ca7d59e99a900de6.md) | 40 | `result-track:1fd73036ca7d59e99a900de643dbdbf3ff19a3898ff009ed69d22d743f943106` |
| 4 | `theorem` | [continuous_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/continuous-mk--21e070cb7861ab7fe5c6c32e.md) | 44 | `result-track:21e070cb7861ab7fe5c6c32e6f82af1496ad818d20bb26d440386ee28298884f` |
| 5 | `theorem` | [isOpenMap_coe](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/isopenmap-coe--724e6bee381281f1c2eeb554.md) | 52 | `result-track:724e6bee381281f1c2eeb5540a935a17764db1761105abd6d5d5007c375e72e3` |
| 6 | `theorem` | [isOpenQuotientMap_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/isopenquotientmap-mk--a347d3e930d2d48dd0b0d24d.md) | 55 | `result-track:a347d3e930d2d48dd0b0d24d666040376f8da5b4ab4aa7bc5b9ff844b768e0e5` |
| 7 | `theorem` | [dense_preimage_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/dense-preimage-mk--fa1f9b38c9b3d5591f526fff.md) | 59 | `result-track:fa1f9b38c9b3d5591f526fff1d74dd7aae65e1ffdaef6f55fca6a8bdfa425318` |
| 8 | `theorem` | [dense_image_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/dense-image-mk--e0e00ffbb6f964e8c05dbbe6.md) | 63 | `result-track:e0e00ffbb6f964e8c05dbbe6a256e13bd9db2ea0ef7e7d0fda7c1de035c10eb5` |
| 9 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instcontinuoussmul--e1959325bfdc498396715477.md) | 68 | `declaration-track:e1959325bfdc498396715477a6570684f3357de5fe411b17488eba0e44a9bae1` |
| 10 | `instance` | [instContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instcontinuousconstsmul--5b995fc56fbcff55964feb0d.md) | 75 | `declaration-track:5b995fc56fbcff55964feb0d1b9920ffc57bb481e6e8c18387958dcdc3a328d4` |
| 11 | `theorem` | [t1Space_iff](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/t1space-iff--fbd4757c91afe3f3b321457a.md) | 81 | `result-track:fbd4757c91afe3f3b321457a276d2e02a3d3056df4a840a8ad4f0517cfe6b4e2` |
| 12 | `theorem` | [discreteTopology_iff](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/discretetopology-iff--a770c479762018f97c22cc5f.md) | 88 | `result-track:a770c479762018f97c22cc5f1969aad5166da3b6250a4df0ac2e16d2c0ba3d19` |
| 13 | `instance` | [instT1Space](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instt1space--60d915965379c6ec1ea39ede.md) | 109 | `declaration-track:60d915965379c6ec1ea39ede00ec5f9263c91f9170f7968f6de68e34ad3f80cf` |
| 14 | `theorem` | [discreteTopology](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/discretetopology--a9b271d9d374ee4f0a4f5c6d.md) | 115 | `result-track:a9b271d9d374ee4f0a4f5c6db7835980db94c566f7ba9b7af67203a4b75924c0` |
| 15 | `instance` | [instLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instlocallycompactspace--18c4defa441e5469d8030a08.md) | 121 | `declaration-track:18c4defa441e5469d8030a089a312e8206994fdfc154858601bd8577903ec464` |
| 16 | `theorem` | [nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/nhds-eq--2f49c12feae51db47604ca7b.md) | 130 | `result-track:2f49c12feae51db47604ca7b8615503313331451b713b3109db0bd936194364e` |
| 17 | `instance` | [instFirstCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instfirstcountabletopology--02ef291b0284856c9e2d706d.md) | 134 | `declaration-track:02ef291b0284856c9e2d706dd81c3aa27e68e356185e961e1e4ff078869b01b7` |
| 18 | `instance` | [instSecondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instsecondcountabletopology--964e80bcd21e598272935f86.md) | 142 | `declaration-track:964e80bcd21e598272935f86de79e3362ffe342e823eccf16144bc8aeebe3f35` |
| 19 | `instance` | [instIsTopologicalGroup](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instistopologicalgroup--caff455e7a02d227ab762e8f.md) | 151 | `declaration-track:caff455e7a02d227ab762e8f46eb59b7438beed9f823c02eee78608ec9b3f9ba` |
| 20 | `theorem` | [isClosedMap_coe](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/isclosedmap-coe--247e309c72715fcedc8dd7e5.md) | 158 | `result-track:247e309c72715fcedc8dd7e5a004f58be0482ebfa72c339708a6036517c6205b` |
| 21 | `instance` | [instT3Space](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/declarations/instt3space--902676089b0c5648efe77968.md) | 165 | `declaration-track:902676089b0c5648efe779682f81344e24ea3466688f140d3b913dfd4297b5da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
