# Verification target: Functor Gamma Namespaced Splitting Map Eq Id

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2da03bb257a35794629723e95a364ea5bfb7a84d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/index.md) · [Full source](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2da03bb257a35794629723e95a364ea5bfb7a84d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.SplitSimplicialObject` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Isδ₀](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/is.md) | 56 | `declaration-track:fb535a47182f70e857af3fdd39fccd59b30681e28ece572473c1dd2edc782ca3` |
| 2 | `theorem` | [iff](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/iff.md) | 62 | `result-track:020e1d9d1a6b4ad4c9d56d68c71af98f87d349af98038ab274f86c9d29e470e4` |
| 3 | `theorem` | [eq_δ₀](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/eq.md) | 71 | `result-track:dbfb2f21840606838d8bd609ac30cf5a3c1e361e09b511b7b25e070747975454` |
| 4 | `def` | [summand](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/summand.md) | 86 | `declaration-track:68c7e366c6b3d70fa0fa2ef0d2a21e048a7e94b6c961fcf1ac9fe98fa1c49bec` |
| 5 | `def` | [obj₂](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/obj.md) | 92 | `declaration-track:a8ec4bc93f65b1abd04d5f894c7f8de3101261d9ec5172f9c1d75d844e96559a` |
| 6 | `def` | [mapMono](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/mapmono.md) | 101 | `declaration-track:59b4a2f65eafe7d4e9018bc6cc2c6d5a606ddb292aa2acd735239dd40f194149` |
| 7 | `theorem` | [mapMono_id](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/mapmono-id.md) | 112 | `result-track:22c3563997f61dbae9cab8baa613db75c1a37097c74ef489d894d7bb095eb9b7` |
| 8 | `theorem` | [mapMono_δ₀'](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/mapmono-source-edition-3.md) | 119 | `result-track:cc269d2a544bd585509b2b5d380be88ec078d176e5049b493d0163cec1350f29` |
| 9 | `theorem` | [mapMono_δ₀](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/mapmono-source-edition-2.md) | 128 | `result-track:c7a3cd1dcc8372645f66e87d74ec18febbeabfc371ee6637b84951e2c19b66e7` |
| 10 | `theorem` | [mapMono_eq_zero](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/mapmono-eq-zero.md) | 132 | `result-track:cc3e02ab46b9c7fcc36525386716327744a25308caba734ae85d9a47a7616e33` |
| 11 | `theorem` | [mapMono_naturality](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/mapmono-naturality.md) | 142 | `result-track:a28837932abf692c798789ac1eca97709231cfd005fa4971c0c5b16635283914` |
| 12 | `theorem` | [mapMono_comp](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/mapmono-comp.md) | 155 | `result-track:02c0b65e87564436905c33060642f0ab1faf8ec5afbd694a216239863e6c1ee5` |
| 13 | `def` | [map](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/map.md) | 191 | `declaration-track:1674d7ac6819f8c458805f20665475e0474a2bd6bfc01fa9f7d10d74fa836acd` |
| 14 | `theorem` | [map_on_summand₀](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/map-on-summand-source-edition-2.md) | 197 | `result-track:b199074fcebbcc1ec953871ece95ff74379262bda58b75251f737bc3bab1f415` |
| 15 | `theorem` | [map_on_summand₀'](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/map-on-summand.md) | 213 | `result-track:59c424036d05f84130bb85ebb79e18c408128c27724bee87920b388ae52f677a` |
| 16 | `def` | [obj](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/obj-source-edition-2.md) | 225 | `declaration-track:c0a222ce723b77a41d786a6e3c2e793d792f842305a5e4667d6a23bc0ab2fe49` |
| 17 | `theorem` | [splitting_map_eq_id](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/splitting-map-eq-id.md) | 243 | `result-track:480428b453c9e6fa9e0f403383eb9f9e2d90acada22e2b0c3ebe17488f7183a2` |
| 18 | `def` | [splitting](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/splitting.md) | 258 | `declaration-track:f1364a014d12e36eaafef43cf9c7513647c3f348416f9394c34037f555f80213` |
| 19 | `theorem` | [splitting_iso_hom_eq_id](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/splitting-iso-hom-eq-id.md) | 267 | `result-track:4a29c6b6ed6a88a10b6e6eceff0c9000aadc16608dce1c2a6e3571843f378df7` |
| 20 | `theorem` | [Obj.map_on_summand](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/obj-map-on-summand-source-edition-2.md) | 272 | `result-track:edd59bb521bac2968f6466c7056504e10f2e8cb34ed34c425aa04f6346986a71` |
| 21 | `theorem` | [Obj.map_on_summand'](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/obj-map-on-summand.md) | 283 | `result-track:7e5abd0a70689472729868f22d10403f508f5f2cfbfdede70442d9ab514eba54` |
| 22 | `theorem` | [Obj.mapMono_on_summand_id](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/obj-mapmono-on-summand-id.md) | 291 | `result-track:5f9e5b77c69c6e39a725c72a3b137d9ba3020678161569934258c80ccb70e7fd` |
| 23 | `theorem` | [Obj.map_epi_on_summand_id](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/obj-map-epi-on-summand-id.md) | 298 | `result-track:5121cef72e0587a5dac925e317579a3b9c763c61e8e59f434933244033ecd459` |
| 24 | `def` | [map](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/map-source-edition-2.md) | 308 | `declaration-track:9dddab35cecb3e8f4c94deeb9c3891f6159094b34cd7e672eb1b3735a50dbb35` |
| 25 | `def` | [Γ₀'](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/anonymous.md) | 327 | `declaration-track:1b4de687bc97e386d59ab82f8acc0fd703b654829e08f72a2d10b170e30c817d` |
| 26 | `def` | [Γ₀](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/anonymous-source-edition-2.md) | 342 | `declaration-track:52184555dbf62db5e712cde963e73b5ff463550850cb0090f686ffcda20bc9bc` |
| 27 | `def` | [Γ₂](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/anonymous-source-edition-3.md) | 350 | `declaration-track:e6df7b3f084ee821620c370376df1f40bf48912ef4b5d0543430bdea0515e71c` |
| 28 | `theorem` | [HigherFacesVanish.on_Γ₀_summand_id](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/higherfacesvanish-on-summand-id.md) | 354 | `result-track:a03d3058d91c67969b16fa31a870ceb90ead06cd49d27b14b75403b31af7f7ac` |
| 29 | `theorem` | [PInfty_on_Γ₀_splitting_summand_eq_self](../../../../AlgebraicTopology/FunctorGammaNamespacedSplittingMapEqId.lean/declarations/pinfty-on-splitting-summand-eq-self.md) | 366 | `result-track:fa480283f5da7ade30aefbfab06a3574db20c359b06f53e6f2c33f65ea832c20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=090f2bb140a3c3221848a87cf31da4fadcae9712d06a51e798795fdf52281de3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant5a254b8eeae204c4a1918c96188e5607977898acd18f0acabbeabbd11fa758cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
