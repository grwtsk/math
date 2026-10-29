# Verification target: Topology Vector Bundle Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef5cdabdd8e5c441c2273fa402d601c61ddee8aa",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyVectorBundleHom.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyVectorBundleHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef5cdabdd8e5c441c2273fa402d601c61ddee8aa`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.VectorBundle.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bundle.ContinuousLinearMap](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/bundle-continuouslinearmap.md) | 57 | `declaration-track:f481d3c990dd6fff0b09123f3940270dd955e48fc1ae45753edb6b01f5b9ad32` |
| 2 | `def` | [continuousLinearMapCoordChange](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/continuouslinearmapcoordchange.md) | 71 | `declaration-track:9dfe129c50d6855bb3893a208bd2005073f0e738e8d2b882fa03c46e7692445c` |
| 3 | `theorem` | [continuousOn_continuousLinearMapCoordChange](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/continuouson-continuouslinearmapcoordchange.md) | 80 | `result-track:9604af4869851bf31c0c1eae3b85848c2bbae5de61430ef0b0b635bc4cd1b8c5` |
| 4 | `def` | [continuousLinearMap](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/continuouslinearmap.md) | 105 | `declaration-track:35fe0fc701d19d7498d59f1ba8c82a2979d68a6e0583bec9b5e6dc3ff14a527d` |
| 5 | `instance` | [continuousLinearMap.isLinear](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/continuouslinearmap-islinear.md) | 133 | `declaration-track:4db22be1b78a3937c672f6cecbe7fdf17841b33bbd606a421ebab9976d59430c` |
| 6 | `theorem` | [continuousLinearMap_apply](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/continuouslinearmap-apply.md) | 145 | `result-track:eedf4fc0cfdfaee5873fdd204076b3382c27013e178f81821dc88b7405df8b8b` |
| 7 | `theorem` | [continuousLinearMap_symm_apply](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/continuouslinearmap-symm-apply.md) | 150 | `result-track:4e233d8b1dad4ad15af31a24b6726eced29b6eb20b9cff14c4d9ba36e99e9e35` |
| 8 | `theorem` | [continuousLinearMap_symm_apply'](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/continuouslinearmap-symm-apply-source-edition-2.md) | 155 | `result-track:e68e628f5bf617c7a1109e00a715f84f08a78905d727728c3e84a555470c8bcf` |
| 9 | `theorem` | [continuousLinearMapCoordChange_apply](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/continuouslinearmapcoordchange-apply.md) | 163 | `result-track:d1a5a078fd66e6bbc302d8439f4c8ceba4187d884285b595e6719125698868d8` |
| 10 | `def` | [Bundle.ContinuousLinearMap.vectorPrebundle](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/bundle-continuouslinearmap-vectorprebundle.md) | 191 | `declaration-track:8846a310a7c2f84823af0a19b9a6e8a990190a8bf09f2c7fbea2bc1e67921ea5` |
| 11 | `instance` | [Bundle.ContinuousLinearMap.topologicalSpaceTotalSpace](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/bundle-continuouslinearmap-topologicalspacetotalspace.md) | 229 | `declaration-track:b933223fac3e130c2e1d2339a954555736dda8efaf875588dbe25003c45250b1` |
| 12 | `instance` | [Bundle.ContinuousLinearMap.fiberBundle](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/bundle-continuouslinearmap-fiberbundle.md) | 234 | `declaration-track:b654f2a76094f76e3d4ee24f5ac5b9285633e5f261868f2d63afe35df1a1d5d6` |
| 13 | `instance` | [Bundle.ContinuousLinearMap.vectorBundle](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/bundle-continuouslinearmap-vectorbundle.md) | 239 | `declaration-track:87299bb0c2cecb700938f0b401d02a61e2842f6e65c8a2ed43ba336d187af79d` |
| 14 | `def` | [Trivialization.continuousLinearMap](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/trivialization-continuouslinearmap.md) | 248 | `declaration-track:29542dfb71b7656ba4ea473a20f5661f5a44f95877ceda0051b19dd9cacd2c83` |
| 15 | `instance` | [Bundle.ContinuousLinearMap.memTrivializationAtlas](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/bundle-continuouslinearmap-memtrivializationatlas.md) | 252 | `declaration-track:41a90b840e94daf88596a055d7f1992f61e27c9ad8347e375394415bfe8dcd05` |
| 16 | `theorem` | [Trivialization.baseSet_continuousLinearMap](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/trivialization-baseset-continuouslinearmap.md) | 261 | `result-track:b4f1bcae425a13d8ed7429d0d7bd0237dd61c715690bf7ef16a8e9a5becbf787` |
| 17 | `theorem` | [Trivialization.continuousLinearMap_apply](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/trivialization-continuouslinearmap-apply.md) | 265 | `result-track:e6aa6073061d4ed14905c4c2146ff22d0e838d7668c23d0848f2fef4eb28f0dc` |
| 18 | `theorem` | [hom_trivializationAt_apply](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/hom-trivializationat-apply.md) | 272 | `result-track:3664589bb0d23d97f7a77217784f7c6c0d9b6702dd570a04d0f8f73bc5f4fde6` |
| 19 | `theorem` | [hom_trivializationAt_source](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/hom-trivializationat-source.md) | 279 | `result-track:79b028cbe7e9b57ccf2b8e32640ba4ff7f91074ed76b1e512ff33dc39e4a0b78` |
| 20 | `theorem` | [hom_trivializationAt_target](../../../../GeneralTopology/TopologyVectorBundleHom.lean/declarations/hom-trivializationat-target.md) | 286 | `result-track:6e0f278e642087da264f2e2f47ca9608fdf666b0a78654ee81c6f64e35ef65fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=441292851a8e258fdbb0aef3506203e4c69cf9344e8999abda8045286760eefe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
