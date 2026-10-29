# Verification target: Continuous Linear Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e72e4119f6869bf26e702d508c00a1ad384feccc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Variant23257e999f5db1a268ee4860979457affd099973e46e0147ca9a346c472e9306.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e72e4119f6869bf26e702d508c00a1ad384feccc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Variant23257e999f5db1a268ee4860979457affd099973e46e0147ca9a346c472e9306.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousLinearMap/Variant23257e999f5db1a268ee4860979457affd099973e46e0147ca9a346c472e9306.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.mkContinuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-mkcontinuous.md) | 59 | `declaration-track:77ad9d3fe70ac87f1b32e4546a8dcc033e78a08266b61cc3f2088110598a2e7f` |
| 2 | `def` | [LinearMap.mkContinuousOfExistsBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-mkcontinuousofexistsbound.md) | 65 | `declaration-track:eecc1462dc92eb1a891d528f5c568e6432b6384232b0fbc4be1fb8505b2dec3f` |
| 3 | `theorem` | [continuous_of_linear_of_boundₛₗ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/continuous-of-linear-of-bound-source-edition-2.md) | 70 | `result-track:c10b33219bfd627f63890334fdbbcd185de92f608d7ba9265529af57ee3c07fa` |
| 4 | `theorem` | [continuous_of_linear_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/continuous-of-linear-of-bound.md) | 79 | `result-track:7a8b821840afa38f8462d3b13b5aa451dd9468b0b9fbeb6a08f0eb4954e6207e` |
| 5 | `theorem` | [LinearMap.mkContinuous_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-mkcontinuous-coe.md) | 89 | `result-track:346e94da9887106395f9280a4ea5e7a49e68c53ea1dc470898200e24d62ba124` |
| 6 | `theorem` | [LinearMap.mkContinuous_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-mkcontinuous-apply.md) | 94 | `result-track:021a184cf3876028187ccc984bc6c1b17b31655116dd8b6ec62411b60ffd7067` |
| 7 | `theorem` | [LinearMap.mkContinuousOfExistsBound_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-mkcontinuousofexistsbound-coe.md) | 99 | `result-track:69bfb0eb5238f54c2d153355607eb3632c9770c0def829c2cfd22c2df9887f1f` |
| 8 | `theorem` | [LinearMap.mkContinuousOfExistsBound_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-mkcontinuousofexistsbound-apply.md) | 104 | `result-track:321133dfba19dc2db60710c252dec78652d9b32d8a90d9149d0b4573bf3980ab` |
| 9 | `theorem` | [antilipschitz_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/antilipschitz-of-bound.md) | 110 | `result-track:0473952c968488ddf6d35c668742c4e656a2059040cc259f3eadc21f78882b99` |
| 10 | `theorem` | [bound_of_antilipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/bound-of-antilipschitz.md) | 114 | `result-track:e6856f0ceee42f77f617c487f0fba92944df43f7c481b0f9684310c8074efdcc` |
| 11 | `def` | [LinearEquiv.toContinuousLinearEquivOfBounds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearequiv-tocontinuouslinearequivofbounds.md) | 126 | `declaration-track:4ed51f1d373d2b863e2eecc34a6d70376766655be11a8b7450478a9b0af767b5` |
| 12 | `def` | [LinearMap.toContinuousLinearMap₁](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-tocontinuouslinearmap.md) | 143 | `declaration-track:73bc99d17e645515c85a8c6f91fe75531f3d1863bf872e7a3d6dbc823cef91f7` |
| 13 | `theorem` | [LinearMap.toContinuousLinearMap₁_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-tocontinuouslinearmap-coe.md) | 149 | `result-track:07033ad5353329bb616a1940d0ae6b5967c68b5d8995b93c5689b0667156edec` |
| 14 | `theorem` | [LinearMap.toContinuousLinearMap₁_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/linearmap-tocontinuouslinearmap-apply.md) | 154 | `result-track:a1cfdcb7a4d4534a9e938f4180d011aaa9e71eb3fc6aae8ba9ed1acb34260633` |
| 15 | `theorem` | [ContinuousLinearMap.isUniformEmbedding_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/continuouslinearmap-isuniformembedding-of-bound.md) | 165 | `result-track:f332ece05c01ec6b264456afb83e25d3ecff068375fd754bc398fc9c92e0d28a` |
| 16 | `def` | [ContinuousLinearMap.ofHomothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/continuouslinearmap-ofhomothety.md) | 184 | `declaration-track:df25ca689d755c9a47c87e1eb0d8ec72f2dd6b09586fcb6e986889b75d3d81d7` |
| 17 | `theorem` | [ContinuousLinearEquiv.homothety_inverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/continuouslinearequiv-homothety-inverse.md) | 190 | `result-track:c4ad514b61ee47d2f2108e04693cc22d253c33308e9c6c0af2616859764ae46f` |
| 18 | `def` | [ContinuousLinearEquiv.ofHomothety](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousLinearMapNamespaced.lean/declarations/continuouslinearequiv-ofhomothety.md) | 200 | `declaration-track:2766f52e4ac0d95e6fae0f67d748e9806aca1774849c6793687c91da3e64e9f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed2d403b6f8dd1534fb457f95af6084e908945c1683b82d52fea9f77c799be28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Variant23257e999f5db1a268ee4860979457affd099973e46e0147ca9a346c472e9306.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ContinuousLinearMap/Variant23257e999f5db1a268ee4860979457affd099973e46e0147ca9a346c472e9306.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
