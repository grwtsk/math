# Verification target: Finite Dimension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38ad00a787d9a4846c927e05102ead4031bc01a0",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimension/Variant858199fcee78bf6180872593f527e826d5ae3d8ad6743cea8567c9c80692b613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38ad00a787d9a4846c927e05102ead4031bc01a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimension/Variant858199fcee78bf6180872593f527e826d5ae3d8ad6743cea8567c9c80692b613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimension/Variant858199fcee78bf6180872593f527e826d5ae3d8ad6743cea8567c9c80692b613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Determinant` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Simple` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/instance.md) | 59 | `declaration-track:9d950bd6b720da0d36afc4b9a03eda60edcca4deddc820616b22cbc18e329572` |
| 2 | `theorem` | [unique_topology_of_t2](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/unique-topology-of-t2.md) | 75 | `result-track:092dfb6c5d6b0c63b2fecf68c56b6af13936fca64713a37f469022dd875e2fde` |
| 3 | `theorem` | [LinearMap.continuous_of_isClosed_ker](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/linearmap-continuous-of-isclosed-ker.md) | 128 | `result-track:f92ea3ab1e7788fa8efc32f305ee546eaa66a86a9f0b4f9368781ad797366d08` |
| 4 | `theorem` | [LinearMap.continuous_iff_isClosed_ker](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/linearmap-continuous-iff-isclosed-ker.md) | 172 | `result-track:6646f8b82e93aa42273df3711587314cfc4e832afc2f3d53bd19e37574fbc0f6` |
| 5 | `theorem` | [LinearMap.continuous_of_nonzero_on_open](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/linearmap-continuous-of-nonzero-on-open.md) | 178 | `result-track:a795b913dfe256a960279b21e2bfa2bc9097d8c8ad1be7b6365f6faf86439c36` |
| 6 | `theorem` | [continuous_equivFun_basis_aux](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/continuous-equivfun-basis-aux.md) | 191 | `result-track:5e9a1a93caa032da76843b8b125d2bcc948b9b1e1f7f85830af4e23ffdd10650` |
| 7 | `theorem` | [LinearMap.continuous_of_finiteDimensional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/linearmap-continuous-of-finitedimensional.md) | 241 | `result-track:aa248a4d36d5775fe4b16458d114636eacd45d3bd0de759cbd310799e666cb1b` |
| 8 | `instance` | [LinearMap.continuousLinearMapClassOfFiniteDimensional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/linearmap-continuouslinearmapclassoffinitedimensional.md) | 258 | `declaration-track:ce86022610b2d74002ce5db60e321b8d3409226b4bbeb74faf6fa00315d525df` |
| 9 | `theorem` | [continuous_equivFun_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/continuous-equivfun-basis.md) | 267 | `result-track:4ebfc6a10ed3f43b56788c0a2cbbbbaacd9cb7f076a28b3bf5ec4b86435a650b` |
| 10 | `def` | [toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/tocontinuouslinearmap.md) | 277 | `declaration-track:8d98563afb0e70ff0beff28295eee9c16301a3985503a544e4db6a3fb034998b` |
| 11 | `def` | [_root_.Module.End.toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/root-module-end-tocontinuouslinearmap.md) | 287 | `declaration-track:7e87f1d851fee648ca5282a3800e00f629fbac7fbdd10e7e6fc687dfecf44de7` |
| 12 | `theorem` | [coe_toContinuousLinearMap'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-tocontinuouslinearmap.md) | 294 | `result-track:5b126f4468d5d2a37c1a003f992cbefd6ba46da4b7761462d60e6fa59a8c0283` |
| 13 | `theorem` | [coe_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-tocontinuouslinearmap-source-edition-2.md) | 298 | `result-track:d54d9e410c1ffa0c2d26548b68a974d9846c288599efb3aa8335edd32d484e96` |
| 14 | `theorem` | [coe_toContinuousLinearMap_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-tocontinuouslinearmap-symm.md) | 303 | `result-track:7ef1cc58f641757be1eb97f35bc165e9d8a60f5456ddeba5b4e8196f74a2fbd4` |
| 15 | `theorem` | [det_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/det-tocontinuouslinearmap.md) | 309 | `result-track:603bab9b28cf445619f39d11dc8ec7d7a5eb06b582f4fe8570306b92b0dfcdd3` |
| 16 | `theorem` | [ker_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/ker-tocontinuouslinearmap.md) | 314 | `result-track:c45fdc75d85500b5a03c8b87732a046bbe79e32f6138c5d1fc4b46e2baf860b2` |
| 17 | `theorem` | [range_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/range-tocontinuouslinearmap.md) | 319 | `result-track:ff6bc6101c01a5cef5fa7621662d8f82c6e2ea6f37a0bb96fec2418abc0c5ba6` |
| 18 | `theorem` | [isOpenMap_of_finiteDimensional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/isopenmap-of-finitedimensional.md) | 324 | `result-track:bf08e1226873e408e3854e06044028e057300c2fee094b80a473152d62f72ab5` |
| 19 | `instance` | [canLiftContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/canliftcontinuouslinearmap.md) | 335 | `declaration-track:d1e4d88c533362cd4b53ce7c00f002e3064dc3eafd1265cf987fe5c53a86783e` |
| 20 | `def` | [toContinuousLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/tocontinuouslinearequiv.md) | 348 | `declaration-track:ed733cbd8802bc505f6e8fe0449a6fb8dbfc7c68c64434e1828627b2606bf6ae` |
| 21 | `theorem` | [coe_toContinuousLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-tocontinuouslinearequiv-source-edition-2.md) | 356 | `result-track:c266ddd7c07e6705c72e54319045a9a66648812c5c0452c788406291481724ba` |
| 22 | `theorem` | [coe_toContinuousLinearEquiv'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-tocontinuouslinearequiv.md) | 360 | `result-track:a30293a2d79164847ee5afba09321665bb98bca8f9983ba25959f77b4c7620b3` |
| 23 | `theorem` | [coe_toContinuousLinearEquiv_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-tocontinuouslinearequiv-symm.md) | 364 | `result-track:6c697a424092e5866b6746f2e86708bcbe95bdcbe82d2cff92996a015003b869` |
| 24 | `theorem` | [coe_toContinuousLinearEquiv_symm'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-tocontinuouslinearequiv-symm-source-edition-2.md) | 369 | `result-track:b5be846b5791fffa618189d3fff111ccb2d4f1b60cc3e4bd09debb3116fc7e6c` |
| 25 | `theorem` | [toLinearEquiv_toContinuousLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/tolinearequiv-tocontinuouslinearequiv.md) | 374 | `result-track:dd8c2e21db29ec1937f7b7426182754405f0618343b58f94f040174cc1ea9963` |
| 26 | `theorem` | [toLinearEquiv_toContinuousLinearEquiv_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/tolinearequiv-tocontinuouslinearequiv-symm.md) | 379 | `result-track:c58a2354f80d8c2e046d24bc5bb8920ffce65c306be9555a6bbb12adc64e63a8` |
| 27 | `instance` | [canLiftContinuousLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/canliftcontinuouslinearequiv.md) | 384 | `declaration-track:c95d11ca6d041c88647b23829ea609050f76566fe0fada0bb72993271abc94bd` |
| 28 | `theorem` | [FiniteDimensional.nonempty_continuousLinearEquiv_of_finrank_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/finitedimensional-nonempty-continuouslinearequiv-of-finrank-eq.md) | 394 | `result-track:7d32c61e43a2f1abb2a834fdaf9c66bcf87d565f8ed89208ddc2b0b3125d630f` |
| 29 | `theorem` | [FiniteDimensional.nonempty_continuousLinearEquiv_iff_finrank_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/finitedimensional-nonempty-continuouslinearequiv-iff-finrank-eq.md) | 400 | `result-track:8079238447dccf6ced30ffb158ebfe538b7a9f2f64ad787080beaf952050e6a4` |
| 30 | `def` | [ContinuousLinearEquiv.ofFinrankEq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/continuouslinearequiv-offinrankeq.md) | 407 | `declaration-track:1c82fa4843ba6f4ea83ffbad44702418ad985110a10857662a57a2cf05d7aee4` |
| 31 | `def` | [constrL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/constrl.md) | 418 | `declaration-track:feb81411f5a2e3bcd8fd628ee1656320b456c57ff8ca8c4b3c39eb637a3431e1` |
| 32 | `theorem` | [coe_constrL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-constrl.md) | 423 | `result-track:750c774133d306ce18493c96f5cfcac6998b74d74df46feb5cb2bd7d5684ce0e` |
| 33 | `def` | [equivFunL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/equivfunl.md) | 429 | `declaration-track:6a1b846b17a57a4e16573d55af951d11e83f9702dbe55c4432ed68e13bb0337f` |
| 34 | `lemma` | [equivFunL_symm_apply_repr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/equivfunl-symm-apply-repr.md) | 439 | `result-track:760b0000180041366a373f6ada15ac7077251f2bea79b78d7b05bcb50b202785` |
| 35 | `theorem` | [constrL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/constrl-apply.md) | 444 | `result-track:309a65fc5f9a84712d3d46e5fad4335ad14d7876f7d12f061719beccaf51f66f` |
| 36 | `theorem` | [constrL_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/constrl-basis.md) | 449 | `result-track:e0ce041f0afba7a687f238e2ef607a362ecfb764ff8b6047064397db49dfa1c7` |
| 37 | `def` | [toContinuousLinearEquivOfDetNeZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/tocontinuouslinearequivofdetnezero.md) | 460 | `declaration-track:a92b569c3958aa0ba6e87021d827acff9af82b19d32ffb62731889957a3be044` |
| 38 | `theorem` | [coe_toContinuousLinearEquivOfDetNeZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/coe-tocontinuouslinearequivofdetnezero.md) | 464 | `result-track:be7c0311db461ffdf7229dda3a1cf67b74335f67eafc04572b8c6d622296a26f` |
| 39 | `theorem` | [toContinuousLinearEquivOfDetNeZero_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/tocontinuouslinearequivofdetnezero-apply.md) | 470 | `result-track:7400cd78eccf4cdd57c0b50aef451ede2b2225cae06b61130a66b17eae614013` |
| 40 | `theorem` | [_root_.Matrix.toLin_finTwoProd_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/root-matrix-tolin-fintwoprod-tocontinuouslinearmap.md) | 474 | `result-track:1cf351af24b159c764222479a07adb86f99ad4361a93080348a87645ac36c7dd` |
| 41 | `theorem` | [FiniteDimensional.complete](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/finitedimensional-complete.md) | 492 | `result-track:aa5c334db342190a5fe5d78c9f41a68da788096e20852305048ecde3631ceca3` |
| 42 | `theorem` | [Submodule.complete_of_finiteDimensional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/submodule-complete-of-finitedimensional.md) | 500 | `result-track:e1efe7861bd1645df9a0227e1e6d7662b77362bef56dcb3e61327a6445bddb42` |
| 43 | `theorem` | [Submodule.closed_of_finiteDimensional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/submodule-closed-of-finitedimensional.md) | 514 | `result-track:ef8af5d76561d6e58c6e30f0dc502091643db900bae34c6dfbcf6e84a5acb333` |
| 44 | `theorem` | [LinearMap.isClosedEmbedding_of_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/linearmap-isclosedembedding-of-injective.md) | 522 | `result-track:593bca5fb417bc7b5ea3dfd7c0f7eb9d9753d0b8aca3913607e661c2cf9fe0b3` |
| 45 | `theorem` | [isClosedEmbedding_smul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/isclosedembedding-smul-left.md) | 530 | `result-track:12f4ccde680fc1261d6c8f1a02f26cbe63c14b8e2b029598e1bd97f2160119f3` |
| 46 | `theorem` | [isClosedMap_smul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/isclosedmap-smul-left.md) | 535 | `result-track:68702cdca6387ab88210da7fec4bc6ab2ef5c0bbdbd5aa89c5b4f813828828a3` |
| 47 | `theorem` | [ContinuousLinearMap.exists_right_inverse_of_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimension.lean/declarations/continuouslinearmap-exists-right-inverse-of-surjective.md) | 541 | `result-track:9fe61156ee053259ab2948c9c3b3d20aca6b7f14f4f67ab8fc6fe273dc3f1257` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51a30c0aea7e309508e3d9a5bbf0826811e968ff5699b7e1b0536fbaebb5a3d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FiniteDimension/Variant858199fcee78bf6180872593f527e826d5ae3d8ad6743cea8567c9c80692b613.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FiniteDimension/Variant858199fcee78bf6180872593f527e826d5ae3d8ad6743cea8567c9c80692b613.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
