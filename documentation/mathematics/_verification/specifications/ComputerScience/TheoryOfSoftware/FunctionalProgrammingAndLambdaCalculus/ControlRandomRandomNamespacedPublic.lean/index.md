# Verification target: Control Random Random Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccd384cc11d600c2000f3b13aa5eb1bc412063e6",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variante3e135fd5950bcebcb5f2b6a9c70556db00fc1bb0d5ada401363f1c7a8f51ffc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccd384cc11d600c2000f3b13aa5eb1bc412063e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variante3e135fd5950bcebcb5f2b6a9c70556db00fc1bb0d5ada401363f1c7a8f51ffc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variante3e135fd5950bcebcb5f2b6a9c70556db00fc1bb0d5ada401363f1c7a8f51ffc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RandGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/randgt.md) | 46 | `declaration-track:6f68264df9cda41daa0f0b2e9a79c4195624c5464d9c74868d457ff668e5be63` |
| 2 | `abbrev` | [RandG](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/randg.md) | 48 | `declaration-track:c667bc38359191372fb3eae078dc3efcbace0351da3b7fa13415a8ab16f6b99a` |
| 3 | `abbrev` | [RandT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/randt.md) | 52 | `declaration-track:af39b540dbc0b1995b4897a7bc9d295fa9d2d6b5525e1188243c0e351d57ee94` |
| 4 | `abbrev` | [Rand](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/rand.md) | 55 | `declaration-track:0459b2eb39de9433bee5eac2bae4ee14968a65a3820f245658c1d6da673d3efa` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 57 | `declaration-track:9d93e92fab8209e3b2e6db386fbd2f7c32563663097dec20f5956a9f73415016` |
| 6 | `class` | [Random](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/random.md) | 63 | `declaration-track:2ed20c8c4018ad61e68e4aa427c53fa1b793c146ee9145e79d88e18d461add4d` |
| 7 | `class` | [BoundedRandom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/boundedrandom.md) | 69 | `declaration-track:30ed6f30cad19d3c21fa6dfe93a8b6c54f3c5953e2d46b99c2e53fb7335c00b6` |
| 8 | `def` | [next](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/next.md) | 75 | `declaration-track:1653d86667a86cf14bf2ac89bcdbed4e84d4794a620208296cff1d6f2bfa8bb9` |
| 9 | `def` | [split](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/split.md) | 82 | `declaration-track:616031d286a91795d5fa32e08d6221344273d0049061c28addd195c2414b42f1` |
| 10 | `def` | [range](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/range.md) | 89 | `declaration-track:301a6c6e7cec2b223a543e349ba79e665f4cb6682bbec22cee717314049ec6a3` |
| 11 | `def` | [rand](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/rand-source-edition-2.md) | 99 | `declaration-track:3a2567c0eed1de0128e0926243819af6e79770a96412e3d687d77be244ac0fd1` |
| 12 | `def` | [randBound](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/randbound.md) | 102 | `declaration-track:98ab73d0ba3a8aa8a8a15a43ba7320cdbdfb1877fe484d030f0782633eaeb84b` |
| 13 | `def` | [randFin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/randfin.md) | 108 | `declaration-track:81071969c7bb34c0e6f6738a7d28e3b68426614d50f96cac1a4d947d4525b7ec` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/instance.md) | 111 | `declaration-track:30630070d3697c92f241254944d1d6a238b54cbcf9225c39bc68b7e9728cd5e4` |
| 15 | `def` | [randBool](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/randbool.md) | 115 | `declaration-track:b993f96e268b1b6d86a3a5c11f8960899f8062e2c6c8f06147a915812f63a20f` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:3f4c4e5f02935a55d8ce71b2eacf0f5795562b6d12f2c5c4436d07d30007ebd4` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 121 | `declaration-track:f87f22dd8ef9d9967a1a312d13ebf523fda1c91cc63324bd87dc2ff0f0781da2` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 124 | `declaration-track:960cc074f0b973c10db1f2f57b63fa19310f4d8ec43f74bb808f614ba597c9c2` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 132 | `declaration-track:47ce3d617f2674241116075d85137fc04690b770d0809abfd1daf54ec318cdda` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 142 | `declaration-track:46babd559b413a45723c1e27bc39011599217faf3209bf7d33f0bfe621abb1f1` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 147 | `declaration-track:83080cce7bc6fc98cecce74e6c0a26ec503d71dd5e5657101e3a2aed71a06851` |
| 22 | `def` | [runRand](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/runrand.md) | 169 | `declaration-track:1dbe66c5350615bc6424c1bda7a04dfb61ba9d03298c1248566e057cef593a4c` |
| 23 | `def` | [runRandWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlRandomRandomNamespacedPublic.lean/declarations/runrandwith.md) | 176 | `declaration-track:1d117b0ea9534c3fa8bf6433332d05423b8cc1f30badf6eabeb5f2a67e6e52bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a33831d4fef880431cf1d1b6e65277f1ad992dea36dde40a42ae7c111c177933 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variante3e135fd5950bcebcb5f2b6a9c70556db00fc1bb0d5ada401363f1c7a8f51ffc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variante3e135fd5950bcebcb5f2b6a9c70556db00fc1bb0d5ada401363f1c7a8f51ffc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
