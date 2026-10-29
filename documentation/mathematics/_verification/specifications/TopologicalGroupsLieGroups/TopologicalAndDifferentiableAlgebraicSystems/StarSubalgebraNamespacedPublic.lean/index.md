# Verification target: Star Subalgebra Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eef3222ec34dea3ee0b0a0364ebb9196d46c20b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eef3222ec34dea3ee0b0a0364ebb9196d46c20b`.

Source path: `GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 45 | `declaration-track:5b17d707cea37316f7faed5aa90bdc37b4b438fa86f9dcbde3bc9f93b3ed4d9c` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:e205f7451cf2338018b6ba8ab731fbfb51b9f2d0572bd5c8ffa4a93bf43fcbc7` |
| 3 | `lemma` | [isEmbedding_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/isembedding-inclusion.md) | 52 | `result-track:35c8246504c0ab507c0818dd8a4beacb312de1afca2846a8f6b3217e084f1b71` |
| 4 | `theorem` | [isClosedEmbedding_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/isclosedembedding-inclusion.md) | 58 | `result-track:ae3dec4ccc0b6b0566bccb3752121275e156e6f2d15681a7b2fa553b6cda839d` |
| 5 | `def` | [topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure.md) | 72 | `declaration-track:5bf60c08d7cbd7a20853920ee9233bdf34a5e69f24e1c225d28661d87b9b6008` |
| 6 | `theorem` | [topologicalClosure_toSubalgebra_comm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure-tosubalgebra-comm.md) | 79 | `result-track:4226796780e6dc109554f1cb4d7bd3c86bc040750d22d4256767b52b963d7815` |
| 7 | `theorem` | [topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure-coe.md) | 84 | `result-track:b1fe89922f22420479974bd09560561055efc2f0d39fc46510f97e06a299ed23` |
| 8 | `theorem` | [le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/le-topologicalclosure.md) | 88 | `result-track:ba38ef663b73168542228853f86637b9a94a00b067615db4ca23593ec8c7cec6` |
| 9 | `theorem` | [isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/isclosed-topologicalclosure.md) | 91 | `result-track:6723cea5cc88b4a394ba4be0ecf74a76211d1e639750c6c5e76ec310b5f725e3` |
| 10 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/instance.md) | 95 | `declaration-track:221563153ae70527f1993abd5a867dc250c1235b76f40bf62f2b7534a530e6c4` |
| 11 | `theorem` | [topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure-minimal.md) | 100 | `result-track:ae0908d5eb26c704a8d543bc11ff2d2f400c5cfca8467052c672376e4fc6a82e` |
| 12 | `theorem` | [topologicalClosure_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure-mono.md) | 105 | `result-track:519147d8879477669591b22c9931bad101ba777142aecadc764e153fd27580dc` |
| 13 | `theorem` | [topologicalClosure_map_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure-map-le.md) | 109 | `result-track:7cbdf79adf254f617316e7b87dd2bea67a29feb83b483adddad9ec480658819a` |
| 14 | `theorem` | [map_topologicalClosure_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/map-topologicalclosure-le.md) | 114 | `result-track:012d75e603b12ca2e43289f4ff9a4b6ff797a18ff0d48d92c20fe0fd35d42481` |
| 15 | `theorem` | [topologicalClosure_map](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure-map.md) | 119 | `result-track:30969c71e0f674829435951836183d700a3682d5addcbb6d270f81d24c54eb83` |
| 16 | `lemma` | [topologicalClosure_adjoin_le_centralizer_centralizer](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure-adjoin-le-centralizer-centralizer.md) | 126 | `result-track:c49277793610f5822c21abf13dcf64bacb459ed1c746b8dd38f9d01c43de028d` |
| 17 | `theorem` | [Star Subalgebra Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/topologicalclosure-star-comm.md) | 130 | `result-track:3bc58c39470bcf508eb776ccf5579774267feb254361b6700ff77ea3891d298d` |
| 18 | `instance` | [isMulCommutative_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/ismulcommutative-topologicalclosure.md) | 137 | `declaration-track:2c781c626b3b86ce67aa816f01890c9ef0d60c46463e953f41d3353677aad431` |
| 19 | `abbrev` | [commSemiringTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/commsemiringtopologicalclosure.md) | 145 | `declaration-track:968f8d776167b38603f857d62d15f12d65759c4198f74d0affa9f36a8bbd8eb7` |
| 20 | `abbrev` | [commRingTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/commringtopologicalclosure.md) | 155 | `declaration-track:ae92d5165c63de8e3d479297c90cdfc58aa88a425e17a92a8340a6192058d797` |
| 21 | `theorem` | [Star Subalgebra Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/ext-topologicalclosure.md) | 166 | `result-track:0f84ef50db250fee22cac9b029b27649d52b5542fa22a6cb4e9d40c5dd026e6d` |
| 22 | `theorem` | [Star Subalgebra Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/ext-topologicalclosure-source-line-177-occurrence-2.md) | 177 | `result-track:31621787d5a6e30469d1d7d79706480f68ae24db422e6386373fdb5c227767a0` |
| 23 | `def` | [elemental](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/elemental.md) | 205 | `declaration-track:ab6ab084bdf0554f3796bee869e1d26c38a146311e15b9c925d1bf241860600d` |
| 24 | `theorem` | [self_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/self-mem.md) | 211 | `result-track:9c6afdf5fbca6b8a629511c20b9c407a9d0336f2382fa139f435798e7afffefd` |
| 25 | `theorem` | [star_self_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/star-self-mem.md) | 215 | `result-track:abb6ce0dccd87e70728a82c37b77c6beaa3eec5bf66fc984776fc009c700faee` |
| 26 | `instance` | [isMulCommutative](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/ismulcommutative.md) | 218 | `declaration-track:f0d7ab352d5e8dcb631bada9f13fdabe8516b0ac28e799ce138dd2cfe09136f7` |
| 27 | `theorem` | [isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/isclosed.md) | 222 | `result-track:956afd876a61888a5c9f68eb9f06e7a8d663a7cf6679a678f86c79693f92c3c2` |
| 28 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 225 | `declaration-track:a42c52ec553fda3a6469e9991688b4ac6ea06fb4d019aa55c625ac70b66c1ea1` |
| 29 | `theorem` | [le_of_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/le-of-mem.md) | 231 | `result-track:c75c11a7fce54ab99adb2563e7dcacaa76a623c461795bcc5e0a603525e7b618` |
| 30 | `theorem` | [le_iff_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/le-iff-mem.md) | 236 | `result-track:dd2632ce9882c30983acf1343e0a1086f24c1748dc0f17eea755d3ba85e9bcf9` |
| 31 | `theorem` | [isClosedEmbedding_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/isclosedembedding-coe.md) | 241 | `result-track:a541e46077c659070c744111d53a5984c651d197d2c73e8b95156f2bf45da774` |
| 32 | `lemma` | [le_centralizer_centralizer](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/le-centralizer-centralizer.md) | 246 | `result-track:e5e38f3668bed7b9ff1c1497afc5354b6a2ff85ffb83b61ea55572ac54151e0b` |
| 33 | `theorem` | [induction_on](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/induction-on.md) | 251 | `result-track:fee50928c8cbaa61e23f0c4496cf1b5a2c447bdfcbdcfb1ff0fcee8cb58faec6` |
| 34 | `theorem` | [starAlgHomClass_ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedPublic.lean/declarations/staralghomclass-ext.md) | 275 | `result-track:8adaa6ffa823e217f4dc84d6470619e83340188657597681cb53d901426313c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3046ff9463b0c2a23627c71eed63f5941e75621b2c55923331ec998b9bd266a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
