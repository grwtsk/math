# Verification target: Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7db65edd605681bd194be97b778e52dd4db8d7c6",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variant4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/Cast.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/Cast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7db65edd605681bd194be97b778e52dd4db8d7c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variant4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variant4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hom.cast](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/hom-cast.md) | 32 | `declaration-track:13f3640f458dc6b449028091d92ef819ad0b86f7cc0aec72db18284857408d05` |
| 2 | `theorem` | [Hom.cast_eq_cast](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/hom-cast-eq-cast.md) | 35 | `result-track:759bda9fcbed32cac4a4d7fffa4564f60cf9fd029367012841f97913dd661c10` |
| 3 | `theorem` | [Hom.cast_rfl_rfl](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/hom-cast-rfl-rfl.md) | 41 | `result-track:334693c098c0361866d673ed0feecffd614638c8c52d8a0d18ecfcd74f68d787` |
| 4 | `theorem` | [Hom.cast_cast](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/hom-cast-cast.md) | 45 | `result-track:25ffc51cddd2e40de15d6f297d17421577272a8e58da71f67642acc98136ee01` |
| 5 | `theorem` | [Hom.cast_heq](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/hom-cast-heq.md) | 51 | `result-track:b654550cdc916e98962c072a19d6176bd0bc75a4bd5ca67ae7666c7f7deb4481` |
| 6 | `theorem` | [Hom.cast_eq_iff_heq](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/hom-cast-eq-iff-heq.md) | 56 | `result-track:928597f3ddf327d92931c43ee8cfb29155c355cc2f6d6a13d4aa8fad053acf5a` |
| 7 | `theorem` | [Hom.eq_cast_iff_heq](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/hom-eq-cast-iff-heq.md) | 61 | `result-track:526608fd57b27dc110c138c9ad8696c0bfac50d8ed5d7ca56fc33abbf0bb2d6c` |
| 8 | `def` | [Path.cast](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-cast.md) | 74 | `declaration-track:5289476fcfb8be04f1098f55434bac6d6eff280ddd6fb80f42a6ddf1eae9b427` |
| 9 | `theorem` | [Path.cast_eq_cast](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-cast-eq-cast.md) | 77 | `result-track:664aacf380fc6a0e07176b830953bc327a684090397a50c97428997d37163c3b` |
| 10 | `theorem` | [Path.cast_rfl_rfl](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-cast-rfl-rfl.md) | 83 | `result-track:6578712bee465ebe96d166bf4e654377bb1d721dd3da234a002f56ec5f5e052c` |
| 11 | `theorem` | [Path.cast_cast](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-cast-cast.md) | 87 | `result-track:a7694c2149c65595bbd9529cbe7b7b87a36a43468041252ab47fb832d81384b5` |
| 12 | `theorem` | [Path.cast_nil](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-cast-nil.md) | 94 | `result-track:14318e6831f0d9730017b8c3ac1f257d65fafe581f241bec787c2fcb99353822` |
| 13 | `theorem` | [Path.cast_heq](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-cast-heq.md) | 98 | `result-track:7036443dbcec642863bbb35b286739a666095b71bdaa1f91b21e8cbf4027b27d` |
| 14 | `theorem` | [Path.cast_eq_iff_heq](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-cast-eq-iff-heq.md) | 103 | `result-track:5fa431b4e6c69964c4f6f23473cbf899e63dbd5967f29b4e8e0f85e40500d0ec` |
| 15 | `theorem` | [Path.eq_cast_iff_heq](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-eq-cast-iff-heq.md) | 108 | `result-track:42bf2628762843d890709961157ccb1e351a482777a372d00fd311b36343909a` |
| 16 | `theorem` | [Path.cast_cons](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/path-cast-cons.md) | 113 | `result-track:220bb318038c1cabadeef5c44cf9852ae74d06db620723b1f606495602957190` |
| 17 | `theorem` | [cast_eq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/cast-eq-of-cons-eq-cons.md) | 118 | `result-track:b8f5258fb9f92611e99163db5be5586be786cc26d4261b84569f278545a5f74a` |
| 18 | `theorem` | [hom_cast_eq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/hom-cast-eq-of-cons-eq-cons.md) | 123 | `result-track:42419f2b63a6a266989645fa2296fe3e35dee9987d2ccc3c316f6814671cde85` |
| 19 | `theorem` | [eq_nil_of_length_zero](../../../../../Combinatorics/GraphTheory/Cast.lean/declarations/eq-nil-of-length-zero.md) | 128 | `result-track:62aabd83b96a51e8f8da96088efdaebb722b0416340b73dfc6ddd4e73148d9dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42b87f076e19c2eabcc5846888b9ba043edee0a84a68af2b8727a10b81c32455 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variant4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variant4d20e3c089a01505810737cc723842578cb3c2611b09ebbe1db6ec05b07fb16c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
