# Verification target: Error Transform Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4f03457fc634d747ab0c19df315ad47aba748fe",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4f03457fc634d747ab0c19df315ad47aba748fe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Attention.Residual` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ErrorFactor](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/errorfactor.md) | 28 | `declaration-track:c8a3bcb34a452666362622e6eff83dbd04d6dcd800b1cb5f0a217880e0ba076a` |
| 2 | `def` | [toResidualBound](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/toresidualbound.md) | 35 | `declaration-track:ea4a4cee1a91876e1d6ba3d06e082512a8519ddec6f7695d6f3b0a2c393a417f` |
| 3 | `def` | [advance](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/advance.md) | 42 | `declaration-track:2e35333ee8acd85fc2b8d4c1224865c5611f979af39616c12d6f7ed8255f561e` |
| 4 | `def` | [propagateFrom](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/propagatefrom.md) | 46 | `declaration-track:a883110c8b2a59e7047e85e8402d9d11407544579e1d3983c39a9a20513b053b` |
| 5 | `def` | [propagateResiduals](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/propagateresiduals.md) | 50 | `declaration-track:af3df3204f60456c030d3df49d36fa46e4216f6b0280a0075af68645cf49b46e` |
| 6 | `def` | [downstreamGain](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/downstreamgain.md) | 54 | `declaration-track:99ff80f5d876bb33d00d2661dd9372ee155edb16fc07e8235684161971d619d1` |
| 7 | `def` | [weightedResidual](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/weightedresidual.md) | 58 | `declaration-track:f79637f1090541e93a3c0a106f8b369857e1204e1337b538d09a22a19537e3cf` |
| 8 | `theorem` | [advance_def](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/advance-def.md) | 62 | `result-track:e021ff55cb536db8b92ff1e2d6427aeac711e3e68d42f2408783b69b2f44f4c8` |
| 9 | `theorem` | [propagateFrom_nil](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/propagatefrom-nil.md) | 66 | `result-track:4866a149a3ed79d1ea18d0abd526c55beeb4d75115acdf5e7a503f0ae30aa96e` |
| 10 | `theorem` | [propagateFrom_cons](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/propagatefrom-cons.md) | 70 | `result-track:c890c5aceb66c17116b87778a86fb65bc669c7d154fe46e325cf72462c0ad148` |
| 11 | `theorem` | [propagateFrom_append](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/propagatefrom-append.md) | 78 | `result-track:9a2c7350a79ed0c88cb28ebb83d621944dab0e08073c0a31cd51fbc08957259f` |
| 12 | `theorem` | [propagateFrom_closedForm](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/propagatefrom-closedform.md) | 91 | `result-track:29e7766c0bf4e24813e45ccefa14e63a7d27839d3d90bac8ca06380832f808a6` |
| 13 | `theorem` | [propagateResiduals_closedForm](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/propagateresiduals-closedform.md) | 103 | `result-track:75b8cea1fca40deee10dadd6c12fd2ffd28c84fd22eabd6a45e38d87af2323f6` |
| 14 | `structure` | [ErrorTransform](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/errortransform.md) | 113 | `declaration-track:7f19eb6785a96e3386bf72d33eb98d983204ef97433d7b06fd11524956445045` |
| 15 | `def` | [apply](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/apply.md) | 120 | `declaration-track:7ffea488dea20404795656b800fc13efe8495ddc1fc607acfc8015e2b591f040` |
| 16 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/instance.md) | 123 | `declaration-track:3d7f6ffc7c975bbd8f19aad1c4ca89b9911e3fc85a0eb8e4567ae1bed38a683e` |
| 17 | `def` | [id](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/id.md) | 127 | `declaration-track:7c0695b1e1778ef12927d643339b897a4ca695046d5846bcf354fa2754347107` |
| 18 | `def` | [comp](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/comp.md) | 132 | `declaration-track:f8257b71a70312f18db116124b7b2881c050284654028259cbe2c8e570effa7d` |
| 19 | `def` | [ofFactor](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/offactor.md) | 137 | `declaration-track:fee8969ed897db44720a99672aca77a8fe274bcbee54fd6d37f8368bf5361142` |
| 20 | `theorem` | [apply_def](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/apply-def.md) | 142 | `result-track:0d9b4ebcce2260e060e740e53bc293ec5a6266e1e542dc66465f3fbaeeb40dd7` |
| 21 | `theorem` | [id_apply](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/id-apply.md) | 146 | `result-track:8427a3e61c8b51107bf7867105694faf8e3a68eee30070d52f6917139cb3f3a8` |
| 22 | `theorem` | [comp_apply](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/comp-apply.md) | 151 | `result-track:d4a85897802b25352c01294f1cff77a4d3d68b8244499b68d83d9b8f8728bf8b` |
| 23 | `theorem` | [id_comp](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/id-comp.md) | 159 | `result-track:0952375ff5a2e90c27e6eb259467439f23bf4a311e146288a723f41c6e9d9cfb` |
| 24 | `theorem` | [comp_id](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/comp-id.md) | 164 | `result-track:bd3bd75094e5fedc65592c1837e85b2236fa304a308f40830ff008b6d8b7351a` |
| 25 | `theorem` | [comp_assoc](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/comp-assoc.md) | 169 | `result-track:1a59d3734dd88b749cfd13da026feb097949bd8033fe2275fe1dd1a24a1f713c` |
| 26 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/instance-source-edition-2.md) | 175 | `declaration-track:65a9b7a5b20f3913af43c3f6e0e1bf2918cf882d5b96834c4da0a42dce3898d0` |
| 27 | `def` | [segment](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/segment.md) | 183 | `declaration-track:a6dc7ff7b77d543e5a9211f3ace4f92fa1947af5876098f76936cbc8e8e230b3` |
| 28 | `theorem` | [segment_nil](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/segment-nil.md) | 188 | `result-track:7640e5728dc1215705fb95251b3ec031aadf0fb6f12f6988b31bdc3ae3de9ce1` |
| 29 | `theorem` | [segment_cons](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/segment-cons.md) | 192 | `result-track:d709ac40738adec6039e86b353fa91875727a471ddefb9f58de31e86a37f48c1` |
| 30 | `theorem` | [segment_apply](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/segment-apply.md) | 198 | `result-track:157ea229f39d49309f0ed8af32fd228544e062c6445ab5b93251fcfbe8c50023` |
| 31 | `theorem` | [segment_gain](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/segment-gain.md) | 216 | `result-track:f9433bf91b338baa23a8c3fe2bdb23de666b30c984db8ba6cff1e4204bae70f6` |
| 32 | `theorem` | [segment_offset](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/segment-offset.md) | 238 | `result-track:7fa0a1dedc733650a2443ace70e46b11ddb36409f216e0ee38a8596ac582bf01` |
| 33 | `def` | [toErrorTransform](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/toerrortransform.md) | 257 | `declaration-track:3669d18a83a8d6c82644c16644ba1fc60ae3d3f8ef78bb24ec4d3389f8eb9dfe` |
| 34 | `def` | [toErrorFactor](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/toerrorfactor.md) | 264 | `declaration-track:0188f29894b0ff1ae78e45809d3b0a9e0e3d322d0cf2d7efb23babc8a834c2c8` |
| 35 | `def` | [errorTransformer](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/errortransformer.md) | 271 | `declaration-track:4abc79b9f2763ee88599ffe92f3d31bb97b88c0baa886409f8e6f7f9dede29a0` |
| 36 | `theorem` | [toErrorTransform_comp](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/toerrortransform-comp.md) | 277 | `result-track:8c50681a3f36cca7ceb1de5254768584d30c1bc2d0e6fa45e76ce1da694b0a45` |
| 37 | `theorem` | [toErrorTransform_toErrorFactor](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/toerrortransform-toerrorfactor.md) | 286 | `result-track:461849af3671a557580603a9c61cbcc0b778bd56822e7047098b930a53073926` |
| 38 | `theorem` | [errorTransformer_comp](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/errortransformer-comp.md) | 292 | `result-track:7ce6665d4be599a0a020482f3c2a9be5030a862f921b7f3c4750d7dee243e10d` |
| 39 | `theorem` | [input_error_bound](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/input-error-bound.md) | 305 | `result-track:31023a8ff7fa529cb3e4b830eeff2fd47c81c9204a94eac6a77469a4de356f05` |
| 40 | `theorem` | [comp_lipschitz_assoc](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/comp-lipschitz-assoc.md) | 346 | `result-track:93cdbee3a7f6e6b1cd5e1190a538a159e379a33f76f2ac717337b5166ce09ed9` |
| 41 | `theorem` | [comp_reference_assoc](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/comp-reference-assoc.md) | 358 | `result-track:a392c7be07b378ef83b23822c44e45597bf15c9e89d62d9a7c79f6af9e103179` |
| 42 | `theorem` | [comp_implementation_assoc](../../../../../GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/declarations/comp-implementation-assoc.md) | 368 | `result-track:3d9b4287ad268be8642b152acd0fc27ed9dfbc0995705fcf37dd55f901ff0bee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1872fb0225a459ebb5803b088870ced138827af69ce9d4dab2bc6a405d9628fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
