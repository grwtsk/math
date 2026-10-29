# Verification target: Bitraversable Instances Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59235631efff83499065bfaab7b8933a0569fad2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantd076be6379b6dd81709d34a24ea25a2c5d673d3fc104a8f69b5827f805efa444.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59235631efff83499065bfaab7b8933a0569fad2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantd076be6379b6dd81709d34a24ea25a2c5d673d3fc104a8f69b5827f805efa444.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantd076be6379b6dd81709d34a24ea25a2c5d673d3fc104a8f69b5827f805efa444.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Bitraversable.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prod.bitraverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/prod-bitraverse.md) | 47 | `declaration-track:6e0b8f0b11e5dde947ce4b4269ff72e6723855646f2a39d2456831abc59658c7` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-6.md) | 50 | `declaration-track:aa0a4edffc6919642cbd6f8b44fb5dca3809c8974ab595fe1f68b2a667c8f1ec` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance.md) | 52 | `declaration-track:0bf87b6ba8de5b9574ea4f93f9b8945b925093a568968dc6ba57b3d565788164` |
| 4 | `def` | [Sum.bitraverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/sum-bitraverse.md) | 59 | `declaration-track:9c4e450b5fc202f9ac0b3f60880e5c7d51ee45a83093c9b5f44480540dd81733` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-5.md) | 63 | `declaration-track:9f9a10e77dc04ef0896cab44061623f531468909f1f408bc9fa43394b92e83ee` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-10.md) | 65 | `declaration-track:ed0dcfc28bf8270df7f49f498a6c3eee24c0ac802f9380679e81a274f9ed901b` |
| 7 | `def` | [Const.bitraverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/const-bitraverse.md) | 73 | `declaration-track:8f47b290ed16b3348c9316e8554e758a27d525ac672a1f6905b73f8f0f9a8696` |
| 8 | `instance` | [Bitraversable.const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/bitraversable-const.md) | 77 | `declaration-track:0cbda5bdb39a3af4deecbb36bf779720820f1af48df8a31e1a6ead807ec58aa2` |
| 9 | `instance` | [LawfulBitraversable.const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/lawfulbitraversable-const.md) | 79 | `declaration-track:d232b1d34620d47f26b01367f4040e432eaba25fe0b9f46798e0de1d56a7e8b5` |
| 10 | `def` | [flip.bitraverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/flip-bitraverse.md) | 83 | `declaration-track:162299779d8eabf61ad5a4b68d3414671ea3d0d5ddd08ab805b28e8594f2c624` |
| 11 | `instance` | [Bitraversable.flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/bitraversable-flip.md) | 87 | `declaration-track:8d55b7207f50b23c88403c66355f18216e3308df509fe522759916302923ee5d` |
| 12 | `instance` | [LawfulBitraversable.flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/lawfulbitraversable-flip.md) | 91 | `declaration-track:010094d20a390c940f0504501a30dafba2b5ba3bd96e3c85852d6b838a59f7a4` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-9.md) | 96 | `declaration-track:e7bdd1e4aa72b7b716733278a09b7debd6f2d3f66cfecc9b13a79c2d376fa82e` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-4.md) | 99 | `declaration-track:788209eca78d87b0d2c336e0e065c13d5c314deb6d125f5fa727a879214f81c6` |
| 15 | `def` | [Bicompl.bitraverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/bicompl-bitraverse.md) | 117 | `declaration-track:fdf86a2c366d7d35fcf76fdf00c078f2b7ab147d5bd190f61abe6645c6f20154` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-3.md) | 121 | `declaration-track:1f7acd34232d4bfe7970cf7e920eced36cc4e08f0ec255ce304687360cc07edf` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-7.md) | 123 | `declaration-track:cb8966fe9676051cda1ebb5e0c9be2275870d6801d8031d41568d2fa2c7e8782` |
| 18 | `def` | [Bicompr.bitraverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/bicompr-bitraverse.md) | 139 | `declaration-track:2fa5b2b1120f8c5152987cc82fac8838ce5356436f7c3ed70610ba9922991eee` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-8.md) | 143 | `declaration-track:da1d72fbacf6aad430831d088c11ad3c9d6e1903bb52fd6d8d7e37efb8cb62da` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BitraversableInstancesNamespaced.lean/declarations/instance-source-edition-2.md) | 145 | `declaration-track:1757f7c6fb81452ff3e83a935c803e59dbe0cd32d3c500a50d060da3fa2bd1d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5c6c0ac218c348d1c825a80fedfbc082be4985b733c23969231226a656c3b12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantd076be6379b6dd81709d34a24ea25a2c5d673d3fc104a8f69b5827f805efa444.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantd076be6379b6dd81709d34a24ea25a2c5d673d3fc104a8f69b5827f805efa444.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
