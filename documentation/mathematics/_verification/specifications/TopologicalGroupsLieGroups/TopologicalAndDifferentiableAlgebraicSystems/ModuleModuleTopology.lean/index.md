# Verification target: Module Module Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27dc805877bd08369627e7a2f39843214cd8651c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27dc805877bd08369627e7a2f39843214cd8651c`.

Source path: `GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [moduleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/moduletopology.md) | 123 | `declaration-track:f3e7a16a8a9c6ec77feb318a6e8e230fa9ec92a610f641830609713894a473a3` |
| 2 | `class` | [IsModuleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/ismoduletopology.md) | 128 | `declaration-track:f40b9d6fe1d4adfb1407561ecc6e46c346173a0fc271ec995b18304076391950` |
| 3 | `theorem` | [eq_moduleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/eq-moduletopology.md) | 133 | `result-track:92a80dbb8d051b3fee91a6851a32e00294146a5ab0ddcf3cb1a7662887a1a775` |
| 4 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/instance.md) | 141 | `declaration-track:33fa84a7285124e605cd265e29dbcc8e766403a5dc92d2b4ded328b6d8547507` |
| 5 | `theorem` | [ModuleTopology.continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/moduletopology-continuoussmul.md) | 147 | `result-track:c397a21736a82f0d42e96692be4b00494dae94485aeebc9782eac0207a8f1113` |
| 6 | `theorem` | [ModuleTopology.continuousAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/moduletopology-continuousadd.md) | 159 | `result-track:9aa328c3e2d5b45f68c312a9392a808786fbcf15fcb3c72550060d062b537878` |
| 7 | `instance` | [IsModuleTopology.toContinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/ismoduletopology-tocontinuoussmul.md) | 162 | `declaration-track:9c226d584bc682f2c7c34f2d64bb123e80d835f0bfc1342fe1eb0515c61f7eef` |
| 8 | `theorem` | [IsModuleTopology.toContinuousAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/ismoduletopology-tocontinuousadd.md) | 166 | `result-track:878b235cdda010136dab9a25dddef89e3c60bea20bbc77fcac7813d3ce6a1987` |
| 9 | `theorem` | [moduleTopology_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/moduletopology-le.md) | 170 | `result-track:20ad0d8d14d081118565e6ae812a42d648cc80530780e665266a99e584c6fa3c` |
| 10 | `theorem` | [of_continuous_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/of-continuous-id.md) | 185 | `result-track:8443febbd22bfa3872f48fbddb4cb8533f887b3ce7c0f159112495175ed5c922` |
| 11 | `instance` | [instSubsingleton](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/instsubsingleton.md) | 194 | `declaration-track:7bf8f359a67c44d20bb7a2fab6eefbbc889b323ba3856abe2f3a3c9195a3c610` |
| 12 | `theorem` | [iso](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/iso.md) | 207 | `result-track:166e202cec4a8acdaeb7c16ba40797c2ba17b47b7022a37bd5b6016734b14604` |
| 13 | `instance` | [_root_.IsTopologicalSemiring.toIsModuleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/root-istopologicalsemiring-toismoduletopology.md) | 243 | `declaration-track:5c76c7e682fb5bee2f6d68aea186f6b5f7d285f2ff83a45a9e07248519408479` |
| 14 | `instance` | [_root_.IsTopologicalSemiring.toOppositeIsModuleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/root-istopologicalsemiring-tooppositeismoduletopology.md) | 279 | `declaration-track:f2c7ef4306d34a8c9f3bc75daf8c4dd0d7f15df6123dd12f80b7902ed6fee521` |
| 15 | `theorem` | [continuous_of_distribMulActionHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuous-of-distribmulactionhom.md) | 294 | `result-track:e0822f1712d93974a129aa2486de9684aafed5616e56260942b71f2c890486fa` |
| 16 | `theorem` | [continuous_of_linearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuous-of-linearmap.md) | 305 | `result-track:8ff984cb61e23f89362588c58df3967a1ddf5cc8dd9aaea9ea0c06fc3dfcf69d` |
| 17 | `theorem` | [continuous_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuous-neg.md) | 309 | `result-track:6689ed008e36c46a4f513c23302112a39e2d823082ddeca9029b0335bb0937f2` |
| 18 | `theorem` | [continuousNeg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuousneg.md) | 315 | `result-track:6cbf1b9e2e71b24bf7c5c54668f407ac6cc8d792b1e3739b9fad3c7821d85245` |
| 19 | `theorem` | [topologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/topologicaladdgroup.md) | 320 | `result-track:fd137ce881ff5a4a395dede7d54998c870ff97b0f39cf9751f5e3d6cd7c196d9` |
| 20 | `theorem` | [continuous_of_ringHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuous-of-ringhom.md) | 326 | `result-track:fe6c43bd745ae9a79014ee8c070dd01a9211fd316c2e56fe7ca92505d0c3245a` |
| 21 | `theorem` | [isQuotientMap_of_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/isquotientmap-of-surjective.md) | 347 | `result-track:978c08920df75ffc13b5be9b4c223c291bcf131830e3d5db7d38a55d86f53817` |
| 22 | `lemma` | [_root_.ModuleTopology.eq_coinduced_of_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/root-moduletopology-eq-coinduced-of-surjective.md) | 417 | `result-track:8641591a4a37e283d6948c473f3269e936e0c4a42abf6a24029aac4b2ad2a918` |
| 23 | `instance` | [instProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/instprod.md) | 434 | `declaration-track:2454d5e628197fa6321352f19e6da4a203aa0663a75e9b75e726ff7776883dd4` |
| 24 | `instance` | [instPi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/instpi.md) | 477 | `declaration-track:9fcd1df410de38e4160127469cfa2ff77806f0afec5f84fad0ed299aab82109d` |
| 25 | `theorem` | [continuous_bilinear_of_pi_fintype](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuous-bilinear-of-pi-fintype.md) | 520 | `result-track:9aac04ce6829278ccab8946f3678c023253af84ce1108e7484b6ef7e8b14021c` |
| 26 | `theorem` | [continuous_bilinear_of_finite_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuous-bilinear-of-finite-left.md) | 556 | `result-track:38eb4e7ec577d45ba560f09752740d761e16f3d15f9a40584a1b408db46afb27` |
| 27 | `theorem` | [continuous_bilinear_of_finite_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuous-bilinear-of-finite-right.md) | 575 | `result-track:a253940f95bf81159861981b9c63f3a3fd30a921caa629a696274ab91b46d78b` |
| 28 | `theorem` | [continuous_mul_of_finite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/continuous-mul-of-finite.md) | 596 | `result-track:86f7cecd621360079efae55964ad21e353a743dddf6029c8efdc7cb56ea84855` |
| 29 | `theorem` | [isTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopology.lean/declarations/istopologicalring.md) | 603 | `result-track:246302b65cf9613cab1df108dbfaa2e7abcedc02669d11143bfd8c2b24ac70a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18173fd1f4181c04320871087fa8805f946e80a749f6d477c3fd16e51cda182b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
