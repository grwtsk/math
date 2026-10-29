# Verification target: Uniform On Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8990a3d4d000bd00015cc105ba20e65b17af790",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/UniformOn/Variant21982b6a83fb9840a07f905f93cf4a832927944b02d4a8ab3560bd7237abdf81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8990a3d4d000bd00015cc105ba20e65b17af790`.

Source path: `GRWTSK/Topology/UniformOn/Variant21982b6a83fb9840a07f905f93cf4a832927944b02d4a8ab3560bd7237abdf81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/UniformOn/Variant21982b6a83fb9840a07f905f93cf4a832927944b02d4a8ab3560bd7237abdf81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformConvergence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasProdUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasproduniformlyon.md) | 47 | `declaration-track:f632c3e6f44ac190212bb109047bdc856f48abe7bbafa6941cd3045aaded2fb3` |
| 2 | `def` | [MultipliableUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/multipliableuniformlyon.md) | 55 | `declaration-track:4326419e3119430070f50ffd340bd408141d3e3ae5ff727cd623a16dea72818b` |
| 3 | `lemma` | [MultipliableUniformlyOn.exists](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/multipliableuniformlyon-exists.md) | 59 | `result-track:95c460b6b2c9585b0f66edd04fcef5b74ffe3417e566a036dd3ac3c31b2a80de` |
| 4 | `theorem` | [HasProdUniformlyOn.multipliableUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasproduniformlyon-multipliableuniformlyon.md) | 64 | `result-track:8d4da9e3d5f22c54f5a8605aabda32552edb6ce8c367c86b40f57ffc3ab20587` |
| 5 | `lemma` | [hasProdUniformlyOn_iff_tendstoUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasproduniformlyon-iff-tendstouniformlyon.md) | 69 | `result-track:6a517f67b7df683962f9390b3f1f74b085eee4f604cb77363d54ab9716ebd101` |
| 6 | `theorem` | [HasProdUniformlyOn.hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasproduniformlyon-hasprod.md) | 75 | `result-track:873753992feadad91173442a7a7426564520a45db9d962dd54d5d18b3f4c08f6` |
| 7 | `theorem` | [HasProdUniformlyOn.tprod_eqOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasproduniformlyon-tprod-eqon.md) | 80 | `result-track:619746d75f4f2c299bbd887197ec1ba966d3b4cd664f36ab6d02954b423e14bb` |
| 8 | `theorem` | [HasProdUniformlyOn.tprod_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasproduniformlyon-tprod-eq.md) | 85 | `result-track:4b58316fbbff322fd3e747991f78cf3e8dc6fbbfb97b44d23c4e496f93e9c40e` |
| 9 | `theorem` | [MultipliableUniformlyOn.multipliable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/multipliableuniformlyon-multipliable.md) | 92 | `result-track:42fd4e1f88b7ba833d89846faa3f5a383cb082b5921287da7c31ddfce1d90239` |
| 10 | `theorem` | [MultipliableUniformlyOn.hasProdUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/multipliableuniformlyon-hasproduniformlyon.md) | 97 | `result-track:b25d850542cade0d184dcc89f49cd86f89abe7e049e1bbd94f56a7403b0268f8` |
| 11 | `def` | [HasProdLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasprodlocallyuniformlyon.md) | 120 | `declaration-track:611182c0f32cf4ac7edcffea98bae05b62bc47f34834abb236592be80125ced5` |
| 12 | `def` | [MultipliableLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/multipliablelocallyuniformlyon.md) | 128 | `declaration-track:f689bbf6a8ffd4efb7d78ec449d369f7b2de8dd8fc1d741cbc58cc21c141742d` |
| 13 | `lemma` | [hasProdLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasprodlocallyuniformlyon-iff-tendstolocallyuniformlyon.md) | 131 | `result-track:332b94087e4837e23ce9a0830d515b57d2f44b1250ed954f3fd1f04ca00f96a4` |
| 14 | `lemma` | [hasProdLocallyUniformlyOn_of_of_forall_exists_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasprodlocallyuniformlyon-of-of-forall-exists-nhds.md) | 142 | `result-track:464cedaa85739c522a848a2628c13d63c2f629538b14034ec2a7829b06a6079e` |
| 15 | `theorem` | [HasProdLocallyUniformlyOn.multipliableLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasprodlocallyuniformlyon-multipliablelocallyuniformlyon.md) | 154 | `result-track:ca3adcd4a43402b6073e750b0771a5ddd4492dc7f0125c573e70f3881b3ccfec` |
| 16 | `lemma` | [multipliableLocallyUniformlyOn_of_of_forall_exists_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/multipliablelocallyuniformlyon-of-of-forall-exists-nhds.md) | 164 | `result-track:de2caaac3a4315e332bc03f81a52a7c1667ce1f80c12f78dfbb0cefdced3141d` |
| 17 | `theorem` | [HasProdLocallyUniformlyOn.hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasprodlocallyuniformlyon-hasprod.md) | 179 | `result-track:950117ce22e1530a41ba63e92755ad82d8a96982cc3da71548237808634d204f` |
| 18 | `theorem` | [MultipliableLocallyUniformlyOn.multipliable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/multipliablelocallyuniformlyon-multipliable.md) | 184 | `result-track:77ecfd0bf91aa496ad4fa88db32bbad055bdc522b3de8c9c12722d62cbfea0b9` |
| 19 | `theorem` | [MultipliableLocallyUniformlyOn.hasProdLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/multipliablelocallyuniformlyon-hasprodlocallyuniformlyon.md) | 189 | `result-track:8c80c7c013b7e67cc2d23e0074cffe9d21358f96ee44bbb79f675c1f8b7d083a` |
| 20 | `theorem` | [HasProdLocallyUniformlyOn.tprod_eqOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOnNamespaced.lean/declarations/hasprodlocallyuniformlyon-tprod-eqon.md) | 195 | `result-track:b753cc273dfaa3a5254e19a5fd746af97785fcb9a06381babb94d0ec63449ecb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b8cde25a1c19cf5e9cbaa0132104b116cd74e2fbf7e1ed5760e9c3e757e80ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/UniformOn/Variant21982b6a83fb9840a07f905f93cf4a832927944b02d4a8ab3560bd7237abdf81.lean","GRWTSK/_verification/specifications/Topology/UniformOn/Variant21982b6a83fb9840a07f905f93cf4a832927944b02d4a8ab3560bd7237abdf81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
