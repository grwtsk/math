# Verification target: Properties Namespaced Is Reduced Of Stalk Is Reduced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc765e828347772ace4c80a4b9424c2bb04b9a52",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc765e828347772ace4c80a4b9424c2bb04b9a52`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/instance-source-edition-6.md) | 41 | `declaration-track:9f0f27e05da917930e972258458533c10a401a758fd908b9b52d24c16a569255` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:421204807ed53b6a8aaf797e4ab13031a52d619d7ae01e69a4c8dccdee10edc7` |
| 3 | `class` | [IsReduced](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isreduced.md) | 59 | `declaration-track:f4991dbde1090ca7e482f6a9abb433d98f5368826355a794c6488c326b81fcd9` |
| 4 | `theorem` | [isReducedOfStalkIsReduced](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isreducedofstalkisreduced.md) | 65 | `result-track:04d1d112ab22b3fe03914f0af23e9fe30f47a9706dc3bbe3af7a5f5a13b73b70` |
| 5 | `instance` | [stalk_isReduced_of_reduced](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/stalk-isreduced-of-reduced.md) | 75 | `declaration-track:1df956493dd68ed2afba452243764447b066e955a49d38b3f05eb2657569a7e5` |
| 6 | `theorem` | [isReducedOfOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isreducedofopenimmersion.md) | 88 | `result-track:b3550af0d682ca0e3db2c53311beecaa34c6c7b4abec728d6a05192e492807d6` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/instance-source-edition-7.md) | 101 | `declaration-track:b0bd64ecf59d648f21b32819b8d6939c51c7e1877e1875226dd88bbae82d3690` |
| 8 | `theorem` | [affine_isReduced_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/affine-isreduced-iff.md) | 109 | `result-track:ac524a12d02812377918027504a627e29824b4a2fb404d4676cc998c352de498` |
| 9 | `theorem` | [isReducedOfIsAffineIsReduced](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isreducedofisaffineisreduced.md) | 119 | `result-track:ee06e8e2888b74fe747e0feaa29ba4dc807b5cc6c14663d861f7a1862cf42c75` |
| 10 | `theorem` | [reduce_to_affine_global](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/reduce-to-affine-global.md) | 132 | `result-track:3bd097c3800be63d1cceee67880946087c05c947f7e588a68527b0869f287ed7` |
| 11 | `theorem` | [reduce_to_affine_nbhd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/reduce-to-affine-nbhd.md) | 153 | `result-track:25208a81cc12436bc16b4af80e11a6381df6114f9c6776bb78f9b53adcb943ca` |
| 12 | `theorem` | [eq_zero_of_basicOpen_eq_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/eq-zero-of-basicopen-eq-bot.md) | 164 | `result-track:7bf35573dffaa5f5c544a786c7c6f31c8a42ea7c7acffa05b0773a3597f56ba5` |
| 13 | `theorem` | [basicOpen_eq_bot_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/basicopen-eq-bot-iff.md) | 202 | `result-track:4d4fc6235d6d61d23b72f0bab45dd02c6ecf0c72af90ae30220de73ab9e029f3` |
| 14 | `class` | [IsIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isintegral.md) | 211 | `declaration-track:9fe46ac10364bd3b6a433250af8b48ac70bc7b95179bbaee018c82168c476d92` |
| 15 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/instance-source-edition-5.md) | 219 | `declaration-track:44cb9ddd0cc2988465731a0f25ba8348be30814a6f39a025c4dbf3bd7d0f98c8` |
| 16 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/instance-source-edition-2.md) | 223 | `declaration-track:0b01cc6a5fda4243bb1c2528c23671cbe9afa598e5a1a5d19e7e67697db41358` |
| 17 | `instance` | [is_irreducible_of_isIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/is-irreducible-of-isintegral.md) | 235 | `declaration-track:1a798efc1205320cf1f9449250041a305268832d294418f1884caead759b5f67` |
| 18 | `theorem` | [isIntegralOfIsIrreducibleIsReduced](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isintegralofisirreducibleisreduced.md) | 264 | `result-track:f672705c72cb793ffb59a9ab0adbe68ee2b9ecab799b2bcb812e8d3bf5ceec87` |
| 19 | `theorem` | [isIntegral_iff_is_irreducible_and_isReduced](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isintegral-iff-is-irreducible-and-isreduced.md) | 286 | `result-track:3ad12e440d7da280b784b6ffcb538897f2391fafd96d79fe0f2611c2861240fe` |
| 20 | `theorem` | [isIntegralOfOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isintegralofopenimmersion.md) | 292 | `result-track:dc70b233fe38647547215b5690b4afbeca330e397e7f2a043ce98947e2d4ba69` |
| 21 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/instance-source-edition-3.md) | 306 | `declaration-track:34d17262fcb79ab15c3cd9b6636a58d3bbd85dbf8028c618c49eabe8d2118546` |
| 22 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/instance.md) | 310 | `declaration-track:081ac45efd4e447a1488999e24bba64b88f657c32e2586c2394c678e196af9ee` |
| 23 | `theorem` | [affine_isIntegral_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/affine-isintegral-iff.md) | 313 | `result-track:8ac63cf3d43fc84a1fad3a4be73af360fd9cae020c1bc5d192475e864de24cda` |
| 24 | `theorem` | [isIntegralOfIsAffineIsDomain](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/isintegralofisaffineisdomain.md) | 319 | `result-track:f54eccf04afbdc6c1a5819ffb1f5c951a752d7204b41f58e67d08768d9cb9090` |
| 25 | `theorem` | [map_injective_of_isIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PropertiesNamespacedIsReducedOfStalkIsReduced.lean/declarations/map-injective-of-isintegral.md) | 326 | `result-track:83d5339cf0595749744b32c05ef323e7682a205f147e957017a03bf2b577af3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c43316a6b98a15877f4a0102345e37227be8f39c382c17af7ebaca2c72a9f461 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
