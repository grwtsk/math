# Verification target: Monad Tail Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "732078fcd2f7cce9a13c2959fd995c8b52a1a375",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Varianta80257b845a61378d9a328e3558dc549d92a74fc20c023d72b221f74fd23c2f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/MonadTailNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/MonadTailNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `732078fcd2f7cce9a13c2959fd995c8b52a1a375`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Varianta80257b845a61378d9a328e3558dc549d92a74fc20c023d72b221f74fd23c2f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Varianta80257b845a61378d9a328e3558dc549d92a74fc20c023d72b221f74fd23c2f5.lean.json)

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
| 1 | `class` | [MonadTail](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/monadtail.md) | 35 | `declaration-track:65b5c667fad52bd67826cd09adbc49ecdbe0cce6373b3a552690d3dfdb25a644` |
| 2 | `theorem` | [MonadTail.monotone_bind_right](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/monadtail-monotone-bind-right.md) | 46 | `result-track:10aa54ba49190c992e90027277e34a8808f6ff8f4a31a989b9d6bab7511234b7` |
| 3 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 55 | `declaration-track:7ea9c97435f7a56aa526d961a70425847e4b0d6499fa17a241691effb2ef6c27` |
| 4 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 59 | `declaration-track:fea6acff90c11aafb33759ffd1074574afb3ffe8614c2d130a3d92130ef57404` |
| 5 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 70 | `declaration-track:ffc247d9157cbe9ad2db94b3e7bd90eb219d96dda87411f3517c98afc6bd6f52` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 80 | `declaration-track:2e4609ebcef710f812d267695485afc6c60d6d57d2e4a50165876c9b6e7e6a15` |
| 7 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance.md) | 87 | `declaration-track:0fd2a31c31c1dc34a12ec19639f6d23ad57496b941b4e675345ad3ab9b3f9530` |
| 8 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 97 | `declaration-track:c4b67c78340ef468eee4bf02f44455b940eb2c56b705db18c31881cdc68a40e5` |
| 9 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 101 | `declaration-track:9422d57ff1a3fb9dffe3d4893b66f2f274ca573fc3b1ad4e681f692330007535` |
| 10 | `def` | [ST.bot'](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/st-bot.md) | 113 | `declaration-track:1bb9450dc3425b6d387d3909fa9ad5eadfb561711c38fd96dcc8f5ac021acd02` |
| 11 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 116 | `declaration-track:f370b93c7a1b2c1c5c44a7fb81eba2587955809f8c27b2b1beb059b4b95e8b05` |
| 12 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 123 | `declaration-track:72dd03da83c3069dd8d2cc2625515f0287a54ccab5eba1db811de3844d0263f3` |
| 13 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 131 | `declaration-track:a505534999ce7130ecb74fed2f24a01fdacd6be85ea7521d6130778761bd50b5` |
| 14 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 134 | `declaration-track:19395a0e9c38da942f5fd0d638dba528c92e4aa092817c910cc3ad1c1d12235d` |
| 15 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 138 | `declaration-track:36494baf82204a76e6339b5c5505fe117edd381c0e7cb1e3d6d0346184281d2b` |
| 16 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 141 | `declaration-track:6bb14a05aa15ab4803c71a874d24bc3c2d30d1c47fe1d4665c7edd134ec80ee1` |
| 17 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 144 | `declaration-track:7be01dd0020702a9c4689e396c46b81bc034f6df7ffd85c3dacf7f342599baa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62fdcdb381ad35a4412d177ef5230c0588d31c9dcfe2974d26a8b78c40f100a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Varianta80257b845a61378d9a328e3558dc549d92a74fc20c023d72b221f74fd23c2f5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Varianta80257b845a61378d9a328e3558dc549d92a74fc20c023d72b221f74fd23c2f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
