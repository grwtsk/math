# Verification target: Convolution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ad0437d72e1196c30f3744582121ddaf0774a52",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ad0437d72e1196c30f3744582121ddaf0774a52`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Transformation` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.ActiveRegion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeightDependencyProfile](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/weightdependencyprofile.md) | 33 | `declaration-track:2b395a11dcc5133392149ab07ae996b30400d54736341875a27779cf5d326ed8` |
| 2 | `structure` | [ConvolutionPins](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/convolutionpins.md) | 44 | `declaration-track:7db4bbe1552ca7edf4f2f5f2d7e78356a53395642fe997fe43f2517aa69917ec` |
| 3 | `inductive` | [ApproximationStatus](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/approximationstatus.md) | 52 | `declaration-track:d8f1b681850a1e35152c01e2a38a0ca6f799601c2e068920795fca9611c0fe97` |
| 4 | `structure` | [ContributionDefect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/contributiondefect.md) | 58 | `declaration-track:9bcf8a31cbd465cf51bb760ab50ee4772003666f7ac251adb7e2949ed80b35b9` |
| 5 | `structure` | [FiniteModelConvolution](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/finitemodelconvolution.md) | 70 | `declaration-track:136c11c378d1cfbcd431db0543101cbbe12c07e65226e2f609de39fa380ee1a3` |
| 6 | `def` | [denominator](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/denominator.md) | 106 | `declaration-track:a43729d7c1f4809a9b9b7accd8a040fa56403d2d715e115eabe3ccfb3c070f71` |
| 7 | `def` | [numerator](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/numerator.md) | 113 | `declaration-track:93bc04910dd8e31a58d2998cd9ba16a3299ab38eb4acb31ab25608c98d2ae834` |
| 8 | `def` | [outputAt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/outputat.md) | 121 | `declaration-track:b59333e0b0ea36ece71dd8673fc7cb80e33a6434d51d68478861fec3cbc4c302` |
| 9 | `theorem` | [finite_overlap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/finite-overlap.md) | 128 | `result-track:59f87c00bd50a9229dbe38a7c43d873c2ea32bf088acc031eb087af89a8b74d8` |
| 10 | `theorem` | [denominator_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/denominator-pos-source-edition-2.md) | 135 | `result-track:c7ce1d14f8036c451e2189b997044ea5f7b2f0fe05f32c6d37354b93d1210dbf` |
| 11 | `theorem` | [denominator_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/denominator-ne-zero.md) | 143 | `result-track:807959b8731e1afa54bc1253c3cf6ed3940a19f37455e3a582f85d4eae05a28a` |
| 12 | `theorem` | [output_deterministic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/output-deterministic.md) | 151 | `result-track:41bc3f94917814b6e334eaa596b1465f2c5f318f91e10c5247a234d63655e9c6` |
| 13 | `theorem` | [approximation_status_preserved](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/approximation-status-preserved.md) | 159 | `result-track:ccb198f77e5bc235d5e29d6675b9e3b92f812a8e7a3eaeab54d8b83a2c5d40f2` |
| 14 | `theorem` | [authority_nonpromotion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/authority-nonpromotion.md) | 165 | `result-track:b4a131210cb05068384530c11874288011123d9b4f315af06ac9643ffbefbbb9` |
| 15 | `theorem` | [incompatible_contributions_record_defect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/incompatible-contributions-record-defect.md) | 171 | `result-track:e0a74b5095ecb1d48e4d68c8a4afb058e18d3f1a45799588da7f3861f6a39419` |
| 16 | `theorem` | [averaging_does_not_erase_incompatibility](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/averaging-does-not-erase-incompatibility.md) | 184 | `result-track:66de031352d2ca1a730c2ed77694f08d660d808e4dd2a5e3185164a058fd2019` |
| 17 | `structure` | [RegistryFiniteModelConvolution](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/registryfinitemodelconvolution.md) | 197 | `declaration-track:12aad94955594eb4d4aaaa02adb38f0f0300766c72e991b141142f1a5eba929f` |
| 18 | `theorem` | [active_models_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/active-models-exact.md) | 209 | `result-track:9212564015055d8fc5ee6ba0e141c91d8d9ac69be6f6b010a777c7af5e8a159f` |
| 19 | `theorem` | [denominator_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/denominator-pos.md) | 217 | `result-track:6b3044122cdfb305ff7f1871a58e83175637993544fd5b9f19aeaf585c17d125` |
| 20 | `structure` | [ConvolutionCostScope](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/convolutioncostscope.md) | 229 | `declaration-track:678d694ae676778ca7359ea993f927c879a2115736446116a5a5c12775f264c5` |
| 21 | `theorem` | [convolution_cost_names_scope](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvolutionNamespaced.lean/declarations/convolution-cost-names-scope.md) | 237 | `result-track:73e8153c5bba8124ef0e9e4052e1cb7df81f0a2e5eccfa6aa779e816c719e835` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10bc3db52934a7922929d4cc00bc9502263e36cb8e24f39716b3533e0d7a200d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
