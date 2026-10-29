# Verification target: Cached Gates Lemmas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48a70657d87e60f191d4cafce339b8fe9e344316",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48a70657d87e60f191d4cafce339b8fe9e344316`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [or_as_aig](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/or-as-aig.md) | 28 | `result-track:3e9703d4c05393c0140c26bacadb760b422670e7a6dd4b464845f9b2f43f0159` |
| 2 | `theorem` | [xor_as_aig](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/xor-as-aig.md) | 34 | `result-track:aeef080f3801641066bbc6427cbeadafd2e1c3837de2ca7633f84e20a78d85ec` |
| 3 | `theorem` | [beq_as_aig](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/beq-as-aig.md) | 40 | `result-track:97866d6bb36cfb5495a27c1b75a89db40f7d142d4db17e9f42c71d290d5cb1bf` |
| 4 | `theorem` | [imp_as_aig](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/imp-as-aig.md) | 46 | `result-track:e5dd012412a6142a736a9b5c8afd8a31fc156948f3a2c2038b1ef64348040951` |
| 5 | `theorem` | [mkNotCached_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mknotcached-le-size.md) | 51 | `result-track:1f47875747dcd859769a943da2c305e23062562931aebe120ea5e9e1e4bcdac3` |
| 6 | `theorem` | [mkNotCached_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mknotcached-decl-eq.md) | 55 | `result-track:4d3ba4d5ca8aba35448c9fc6bc628cf51c297bc7bdfbdfce59387fea9c5fde88` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/instance-source-edition-6.md) | 59 | `declaration-track:c6f3560d662d0ee4516f48aa86ed6e658b586c7742957529e9a00eb1c4a5ec43` |
| 8 | `theorem` | [denote_mkNotCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/denote-mknotcached.md) | 66 | `result-track:fee4e4cbe551ee27ffc8be45212b864cf6c223d09f38df22b3f453c415528cd0` |
| 9 | `theorem` | [mkAndCached_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkandcached-le-size.md) | 70 | `result-track:efe03d20f1f67531f287c0ca3d82e8413d40b471aa64404e17c345f8f12e41fc` |
| 10 | `theorem` | [mkAndCached_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkandcached-decl-eq.md) | 76 | `result-track:bb5f3ad99f137bb433c632016eec98b48761342431243cda2ad57fea7bf1e0f4` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:30473a59689245368b7b32efed4128cd59edd9b558d4bf7909ed31030e649bdf` |
| 12 | `theorem` | [denote_mkAndCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/denote-mkandcached.md) | 87 | `result-track:5efe4e51ac76d72000888d99fd645cfbbf7cdc7cf95cf0f952468614d8d3be32` |
| 13 | `theorem` | [mkOrCached_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkorcached-le-size.md) | 91 | `result-track:bb2e3313e1cc258f912f054afc39d69475bb2673e25bfe055cf8c7687d6e836b` |
| 14 | `theorem` | [mkOrCached_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkorcached-decl-eq.md) | 96 | `result-track:ef1585e3c8823e59ed6bda9e87a250438eb7f2f2e586b157559db03ea9405032` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/instance-source-edition-3.md) | 102 | `declaration-track:3e4a42614ac16d13781829272344e0541796e8a58f96d116f8df9d850cfd0993` |
| 16 | `theorem` | [denote_mkOrCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/denote-mkorcached.md) | 107 | `result-track:0c7ceac14f0a651b624657ee2545664edee510da365ec4c37634793b3bf902ef` |
| 17 | `theorem` | [mkXorCached_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkxorcached-le-size.md) | 113 | `result-track:b95e88fa797ee54a15eaf72722137a3525494525fecca8de23e6d57798049654` |
| 18 | `theorem` | [mkXorCached_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkxorcached-decl-eq.md) | 121 | `result-track:0f40d2bf3a45df2642255aa7f131c854d36503ef190934772c4f2e28380863ab` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/instance-source-edition-5.md) | 134 | `declaration-track:c131753176b675af71980fd890af03b3082530a480253e3bb406c35eddce76b8` |
| 20 | `theorem` | [denote_mkXorCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/denote-mkxorcached.md) | 139 | `result-track:7c26ae563225e96a0b5c6f39c79d141e3c36fc89fbb4e37bd5507409e8199bf2` |
| 21 | `theorem` | [mkBEqCached_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkbeqcached-le-size.md) | 148 | `result-track:780d86ef041a5c45cd7e7bcfbdfd7cc26703b05b7bfc08a6bbcd1a1fbb94cc29` |
| 22 | `theorem` | [mkBEqCached_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkbeqcached-decl-eq.md) | 156 | `result-track:dbde44feb96701ef9425040b7bda87571b39b0396343f216c9e2c2a08598075d` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/instance.md) | 169 | `declaration-track:1654a65e9d7b0bc78c927efbed7e4c1c0cee9f24737af44527bf2db9c488a71e` |
| 24 | `theorem` | [denote_mkBEqCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/denote-mkbeqcached.md) | 174 | `result-track:ebb7a7447ba53b86236dd1643904b37566fc0b0dcd060da044ff116346be66d7` |
| 25 | `theorem` | [mkImpCached_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkimpcached-le-size.md) | 183 | `result-track:88ca56912ad24736c4368a85f01a6748169ab0b82788a315711345d1127e2c26` |
| 26 | `theorem` | [mkImpCached_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/mkimpcached-decl-eq.md) | 188 | `result-track:3ada8e57e84b0506c90168dd58a83c0117724c13a9753f5df7331b2a23ca609c` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/instance-source-edition-4.md) | 194 | `declaration-track:8d5cf90f3d30fc9ea729cf84d9d9115ab2b1775729aa3fa6e77f5ea06c08d0f7` |
| 28 | `theorem` | [denote_mkImpCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesLemmasPublic.lean/declarations/denote-mkimpcached.md) | 199 | `result-track:1a401154a07c230f8997423890ad726601dc04ed37c4ecda1551d02dd05c8d19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8590b73e8938aab2ffdae6c19332afd5b36f8c7b559892e82ff6ca7f3d2c2d37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
