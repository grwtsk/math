# Verification target: Separated Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Products` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Equalizer` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isseparated.md) | 48 | `declaration-track:129c1d720688f215cccf4764bb4d9f1b7dcc16989c51080d812052cf379e2448` |
| 2 | `theorem` | [isSeparated_eq_diagonal_isClosedImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isseparated-eq-diagonal-isclosedimmersion.md) | 56 | `result-track:b98735dc454c04540c6ea6730f80dccf12c039d13c2597ea1299ab26590a2715` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-8.md) | 62 | `declaration-track:70d348e3e873904cfc42ba9c6802a14a92e7ab305410240fc37639fdcd781225` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-10.md) | 64 | `declaration-track:afe2822e91548407a1519ed91aa0dbf4be1e751669fa0f231e3d9842b365ebb2` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-6.md) | 68 | `declaration-track:4b31a1157df8dfc28e9a4624ac6e23e65ffe82ee7e6cb4dd9d085bc73efc3b0d` |
| 6 | `instance` | [stableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/stableundercomposition.md) | 70 | `declaration-track:fdb6f46a065c6399db1d7280f9117b71bb750f1d1767f15a04495d3c202fb228` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-3.md) | 74 | `declaration-track:14a2ab8cb78ce5b33b3298a0f93c63c498437d90b7f9947ef3b1937c2ed9f48f` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-4.md) | 77 | `declaration-track:1f531a796c47495fa390884e2542be4a4bf263c4c3f50a25a50d26b5833f1737` |
| 9 | `instance` | [isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isstableunderbasechange.md) | 80 | `declaration-track:e679f97c354745f8b9e2dbfa6a3f1b2155985003687047564221a26ffbcb3ec8` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-5.md) | 84 | `declaration-track:4158bc06ad1b530595ea372321b4fca381b17e705c085f6afb8543e0349aced1` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-12.md) | 88 | `declaration-track:b2580b9d0c59a8ded9ce77df8a16cafaeb70bd19442e13871aae83d96cb3cdd5` |
| 12 | `lemma` | [of_isAffineHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/of-isaffinehom.md) | 97 | `result-track:6461a24547f078c4806bd5363b8c061831678c5d0f5561584f828cbe7f40a666` |
| 13 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-7.md) | 108 | `declaration-track:52572ab7383508f1bf073df217cb2b79321782ec5153694c03705e12d6d1b57d` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-11.md) | 115 | `declaration-track:b1a08e11729465c183bc4a8990a4f59c17f049470d3dfbb0bd879f2841ab6ef0` |
| 15 | `lemma` | [Scheme.Pullback.diagonalCoverDiagonalRange_eq_top_of_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/scheme-pullback-diagonalcoverdiagonalrange-eq-top-of-injective.md) | 131 | `result-track:b33c859db9aafc2f32b546045347663cb488e551308d2c058f7ffa23f8c37dc5` |
| 16 | `lemma` | [Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/scheme-pullback-range-diagonal-subset-diagonalcoverdiagonalrange.md) | 154 | `result-track:4fbe2792195d216cf6b0506ae5ab41c15193aba64e608615122b2d4a8b84bfb4` |
| 17 | `lemma` | [isClosedImmersion_diagonal_restrict_diagonalCoverDiagonalRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isclosedimmersion-diagonal-restrict-diagonalcoverdiagonalrange.md) | 172 | `result-track:e5c1d6419d7cc56946165cbf188053b8cf4e352c3d60bf19143aa1934dc086fc` |
| 18 | `lemma` | [isSeparated_of_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isseparated-of-injective.md) | 192 | `result-track:e519d71b567c9f9db5e254966c81654445df921575cd7171b60b1dad47fdd39c` |
| 19 | `lemma` | [IsClosedImmersion.of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isclosedimmersion-of-comp.md) | 203 | `result-track:20a793e91044b9648849d73a3973f4fa1fe2e619498de44e991708e621de2325` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-13.md) | 209 | `declaration-track:c6a613b3598f467e861e7eeb14abd993e098110344af96b4f411c884e70e162f` |
| 21 | `lemma` | [IsSeparated.of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isseparated-of-comp.md) | 215 | `result-track:3a4b0698157b1d89d595b2192d45480fb7dce18505e0d261c298b297972656b7` |
| 22 | `lemma` | [IsSeparated.comp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isseparated-comp-iff.md) | 220 | `result-track:8e40ad194d8da6bdaf2ee30dfd2af02e57fbed6272f8d71527d4c0c55c91f660` |
| 23 | `instance` | [isClosedImmersion_equalizer_ι_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isclosedimmersion-equalizer-left.md) | 224 | `declaration-track:4457a9eab406628f2b226ce6bcbbd20b71c4a48ee655193192c7514add17ef61` |
| 24 | `lemma` | [ext_of_isDominant_of_isSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/ext-of-isdominant-of-isseparated-source-edition-2.md) | 237 | `result-track:857e896995f5090fd0e511ba869c79acc9862768d54ecef36a80fac0a583d0c7` |
| 25 | `lemma` | [ext_of_isDominant_of_isSeparated'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/ext-of-isdominant-of-isseparated.md) | 262 | `result-track:5f26d8ec364b7e596c893995a224f28c7026e2326b33f9e1c7c13e3183eed36f` |
| 26 | `class` | [IsSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isseparated-source-edition-2.md) | 271 | `declaration-track:c5e1cc58ad2b7509b747883c5cc766ab33b979b66e7726a931c5f24428020430` |
| 27 | `lemma` | [isSeparated_iff_isClosedImmersion_prod_lift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isseparated-iff-isclosedimmersion-prod-lift.md) | 276 | `result-track:373979ba926c294def614b6c1d2fe3d346f4ee03be5927ed4b5424d3ffc180bf` |
| 28 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance.md) | 283 | `declaration-track:0c31db992e4f42d201f2250b5b0b66ff6ec57fe98418336331ad042662131011` |
| 29 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-9.md) | 286 | `declaration-track:7181201aae43f7b28f8cd62754f351b274e122671d7046bb18aa7f2eee4d8a1a` |
| 30 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-14.md) | 288 | `declaration-track:d2735b16724425e3d020385bb48d396e3720eab34b7746a4f3d54630f427b362` |
| 31 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/instance-source-edition-2.md) | 293 | `declaration-track:12ce90cf9f6f7d4390046afb9404947314cb5c1e4d6032b0e44137ee9e0c2a70` |
| 32 | `instance` | [IsSeparated.hasAffineProperty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/isseparated-hasaffineproperty.md) | 298 | `declaration-track:8856fc735ee6b4e275ee12129cd0348a582cacf58ba5aed94f7c7a4884ed05fd` |
| 33 | `lemma` | [ext_of_isDominant](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SeparatedNamespaced.lean/declarations/ext-of-isdominant.md) | 310 | `result-track:26620ee0bce8916d6ff7468f8ea4b49abf180b84a3813617f767ee35ca9bbba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6d8d7cfaf4e3c041951760d3c8f757e14ab4a1a0289887f90fa0f69033a9503 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
