# Verification target: Dynamics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "959de951c6fb7a7bef94b113d7566bdc93ee59a6",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/index.md) · [Full source](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `959de951c6fb7a7bef94b113d7566bdc93ee59a6`.

Source path: `GRWTSK/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.System` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.PerturbationTail` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteBitfieldKernel](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/finitebitfieldkernel.md) | 21 | `declaration-track:54a0362ef8fbf3ad55664553bc9099ef80635c99a4463b06236b2d6df301d092` |
| 2 | `structure` | [WassersteinLawCarrier](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/wassersteinlawcarrier.md) | 40 | `declaration-track:efec19a039780259fee08ee3e4824665f4a029cf941ef670e7e78114497a3233` |
| 3 | `structure` | [ScheduleKernelFamily](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/schedulekernelfamily.md) | 80 | `declaration-track:7d617067810464074ccc5c7e76235ddf7d1ffaa9591e03809116e4b2dcefac15` |
| 4 | `def` | [toBoundaryCertificate](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/toboundarycertificate-source-edition-3.md) | 102 | `declaration-track:6963fc9758342c2c28b212f41597642bc2f0ba43b8536394a54a0750b2835ece` |
| 5 | `def` | [iterateLaw](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/iteratelaw-source-edition-3.md) | 128 | `declaration-track:b07ea37c54b4041ab4d6f719d796590f0832df5301818d2b60aed5c36d3e7cd3` |
| 6 | `theorem` | [iterateLaw_wasserstein_le](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/iteratelaw-wasserstein-le.md) | 144 | `result-track:27a787ef3a571b3df0ff1cf7ba5c93459c8a740df45f0764d7746ef84b41e39a` |
| 7 | `theorem` | [invariantLaw_unique](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/invariantlaw-unique-source-line-166-occurrence-2.md) | 166 | `result-track:b00d8ee860f6cf7343bc46a7dc7a2f711221649b684ab193ed85081a3b11449c` |
| 8 | `structure` | [PerturbedScheduleKernelDynamics](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/perturbedschedulekerneldynamics.md) | 212 | `declaration-track:fb4f4f1eebbe7371ca01f289e2e36d62f7e065469cb23b992cbd0b8f3dad8b0d` |
| 9 | `def` | [PerturbedScheduleKernelDynamics.toBoundaryCertificate](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/perturbedschedulekerneldynamics-toboundarycertificate.md) | 228 | `declaration-track:2a8ef906ccf163b1b10c54f81d92d94cdcee6462ce82509abbe079b391a26310` |
| 10 | `def` | [PerturbedScheduleKernelDynamics.TailOutcome](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/perturbedschedulekerneldynamics-tailoutcome.md) | 248 | `declaration-track:db27e5fe4ca37cbe1fa6f5509c97bc0f459c306782c93efe5d2529c6778308d1` |
| 11 | `structure` | [ContractiveBitfieldDynamics](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/contractivebitfielddynamics.md) | 264 | `declaration-track:4778b1aaa8235bec716e4940a4bd7bdee5acd2d15ba2540d8ac75c4ee7ee46c2` |
| 12 | `def` | [toScheduleFamily](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/toschedulefamily.md) | 282 | `declaration-track:ca3050448c6d53b662adb57036d5bfbec4c8d9588d4924a63d0fed7a2cd04ccd` |
| 13 | `def` | [toBoundaryCertificate](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/toboundarycertificate-source-edition-2.md) | 299 | `declaration-track:40321ab12e071be0073550e685420ec364711032ca1d96bbf47e13337bbc3efa` |
| 14 | `def` | [iterateLaw](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/iteratelaw-source-edition-2.md) | 309 | `declaration-track:82c3b190b5c71e03df5c28c5c920bd8625592c6bf51aa4054ea73fd8385b548f` |
| 15 | `theorem` | [iterateLaw_wasserstein_le](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/iteratelaw-wasserstein-le-source-edition-2.md) | 323 | `result-track:40251be76028e705f1a2c238f585bc6620e2b2415318d28e35a4d726d27d4ecb` |
| 16 | `theorem` | [invariantLaw_unique](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/invariantlaw-unique.md) | 343 | `result-track:7156f257ad3dadecdea0014b6cfca893ccf8c1903e6ef5f57b99aacfac81be55` |
| 17 | `structure` | [PerturbedBitfieldDynamics](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/perturbedbitfielddynamics.md) | 388 | `declaration-track:ccf9aa0337690414aeb5c31e3c217339a49726e0b83f152b5f5b699933268442` |
| 18 | `def` | [toBoundaryCertificate](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/toboundarycertificate.md) | 405 | `declaration-track:108893233529426309115a99aa3e163424dbeddd249ecd402436b513657058e8` |
| 19 | `def` | [iterateLaw](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/iteratelaw.md) | 426 | `declaration-track:3b3b6f9960c39d22485fe4d1267f100a2063aec589fd5426ec98eebaf0fc03e5` |
| 20 | `def` | [weightedTail](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/weightedtail.md) | 442 | `declaration-track:16e8a49fae76510f54576fece28386a57ca95fa3c313bc5690f4291a135fe8e1` |
| 21 | `def` | [TailOutcome](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/tailoutcome.md) | 455 | `declaration-track:98361997d8fb59c10790e2f15e5d1c5a1d3b1ee23b19cea0e369ba834c68b7a8` |
| 22 | `inductive` | [CertifiedBoundaryLawOutcome](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/certifiedboundarylawoutcome.md) | 470 | `declaration-track:a8147fa18939d2b6bc4767e8887d9bb72d49c7e284cc500ae795626ceab8f7d9` |
| 23 | `theorem` | [cross_implementation_wasserstein_le](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/Dynamics.lean/declarations/cross-implementation-wasserstein-le.md) | 488 | `result-track:1729d4ad5ffe3695e62a6dbaa558ab45d5828090401ca85681d1525e0c1fc169` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69bc833e5695ba775bfd262780e137146334ad9dce5a6ab43b915ccf5115e32a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
