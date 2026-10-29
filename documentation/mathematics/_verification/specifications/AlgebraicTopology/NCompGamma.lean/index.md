# Verification target: NComp Gamma

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c046599f5f698c6ef4f51b8bcb9c1f0d1b731744",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/NCompGamma.lean/index.md) · [Full source](../../../../AlgebraicTopology/NCompGamma.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c046599f5f698c6ef4f51b8bcb9c1f0d1b731744`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.GammaCompN` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.NReflectsIso` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PInfty_comp_map_mono_eq_zero](../../../../AlgebraicTopology/NCompGamma.lean/declarations/pinfty-comp-map-mono-eq-zero.md) | 36 | `result-track:069acca380734f6e4a3ec0b1cb4af843554b481ce9e8fc3dde3f61424b23ad69` |
| 2 | `theorem` | [Γ₀_obj_termwise_mapMono_comp_PInfty](../../../../AlgebraicTopology/NCompGamma.lean/declarations/obj-termwise-mapmono-comp-pinfty.md) | 79 | `result-track:02a535cb74bcecca9f017c8e4f06dfdfac99245e247721d54a41dfa144502690` |
| 3 | `def` | [natTrans](../../../../AlgebraicTopology/NCompGamma.lean/declarations/nattrans-source-edition-2.md) | 128 | `declaration-track:9e3837609fa158b9b43e711f0dfce3ca54a8963ed4400dfe9c326a6a882f352b` |
| 4 | `def` | [Γ₂N₂ToKaroubiIso](../../../../AlgebraicTopology/NCompGamma.lean/declarations/n-tokaroubiiso.md) | 164 | `declaration-track:1317a8acb7d8ec30f19e658d42609f61341679e7f488820bc0456fc4ed041efd` |
| 5 | `def` | [natTrans](../../../../AlgebraicTopology/NCompGamma.lean/declarations/nattrans.md) | 170 | `declaration-track:1592af4ab431c07ca95d707bb90e94c1aa2ff7ef6768c99a7eea152b393892ef` |
| 6 | `theorem` | [natTrans_app_f_app](../../../../AlgebraicTopology/NCompGamma.lean/declarations/nattrans-app-f-app.md) | 174 | `result-track:04c369fb544d64e50ae357e755a9d19ef071cb55ba408655a90d99d57bdcce52` |
| 7 | `theorem` | [compatibility_Γ₂N₁_Γ₂N₂_natTrans](../../../../AlgebraicTopology/NCompGamma.lean/declarations/compatibility-n-n-nattrans.md) | 183 | `result-track:2e6ff6a4ae4111af000415e6eeefc9094ef6e93ebfe41068cb5d55445353cf84` |
| 8 | `theorem` | [identity_N₂_objectwise](../../../../AlgebraicTopology/NCompGamma.lean/declarations/identity-n-objectwise.md) | 195 | `result-track:8c6c903e1682cd55ed5e905a134c8b476aa02f6b8310478f27538fe1dba47322` |
| 9 | `theorem` | [identity_N₂](../../../../AlgebraicTopology/NCompGamma.lean/declarations/identity-n.md) | 214 | `result-track:e36dce9a81fc363ec18fed513d8e93d294eeefd5aabfdc776d31e1ba2af84fdf` |
| 10 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NCompGamma.lean/declarations/instance-source-edition-2.md) | 222 | `declaration-track:eaf3ab0b9787f3d364d4ab793af6e1630a6d5fbb63353e8f52af0af4efcfa081` |
| 11 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NCompGamma.lean/declarations/instance.md) | 234 | `declaration-track:9f4a8d59f3664a8b01838c1839d2fc981e28d3d971001b3cacea0d5dc5394432` |
| 12 | `def` | [Γ₂N₂](../../../../AlgebraicTopology/NCompGamma.lean/declarations/n-source-edition-2.md) | 243 | `declaration-track:7df39d943d6a4652deaed7dcda25679eb9b4e11fc1ee8b4fd56afc006e2183d5` |
| 13 | `def` | [Γ₂N₁](../../../../AlgebraicTopology/NCompGamma.lean/declarations/n.md) | 248 | `declaration-track:0f480fca738b3a03b53c02ae38696c88fb74323e76871ea0082abf75e28fff43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48620517cba39d49c7420b097e560a9d6fe8d43b3a888dcce4cc39166f6f8666 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variante994a3d17af60a72a540d46f757f0acd9af42e90f70891d2767fd861cd60a8e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
