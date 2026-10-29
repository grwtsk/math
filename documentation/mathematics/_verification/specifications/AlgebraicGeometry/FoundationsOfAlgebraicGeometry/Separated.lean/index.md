# Verification target: Separated

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "461406237cc752198497cd5e4b9b02ea38659dae",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `461406237cc752198497cd5e4b9b02ea38659dae`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Products` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Equalizer` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isseparated.md) | 40 | `declaration-track:8da39213c83c1355386ebcdf04a6459d4145e0a0ae0040a96458fa5238b74ec4` |
| 2 | `theorem` | [isSeparated_eq_diagonal_isClosedImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isseparated-eq-diagonal-isclosedimmersion.md) | 48 | `result-track:52b2330a0cc5e682fd87ce75cb9f602992815c71267a568a1014a0e1630fa886` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-9.md) | 54 | `declaration-track:840809abb416eead134c479195031009fd256f2b3f61d06df2bafb19344cd1a6` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-14.md) | 56 | `declaration-track:eb448b744b45fb4858aac159b5808cb624a9310b6b525b9aafce8684fdcbc936` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance.md) | 60 | `declaration-track:28bf379e21c3050cb99be33c8f1f977fa0e1c434e055a8e31b7fb76901789d76` |
| 6 | `instance` | [stableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/stableundercomposition.md) | 62 | `declaration-track:cb8965a3dd679177ea4b0d3a8fd44c3e78e1b4e0248df212600e5c918d3faf72` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-13.md) | 66 | `declaration-track:e17cc9134035042132d1bdfe8c5bbfecfaf93151fa13122585a6646573223934` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-7.md) | 69 | `declaration-track:791c7156dff8eb1cd62b8eb8b950e7b7d8317114e20e14c2448a9b36053784c0` |
| 9 | `instance` | [isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isstableunderbasechange.md) | 72 | `declaration-track:3ead3e564cdcd442f8b67c55e02e448d9c5192f55bbe496928794d636e4a208a` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-11.md) | 76 | `declaration-track:b35baa3b103f3c3407ef2a2da628b797ed886e70c82b5dc0a59db628ff2200bc` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-12.md) | 80 | `declaration-track:d821ea3f6af29d53e843c498bbcf2d129f631ad8d9e9701d6e7404453a973c1a` |
| 12 | `lemma` | [of_isAffineHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/of-isaffinehom.md) | 89 | `result-track:761081713dbb6e07d95faced7fd3ae84576b6d238b52522bc456a68aa615dc29` |
| 13 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:34807379c703ac495db80301726cf4d353f4a207b5a179e7e747f91444776e46` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-5.md) | 107 | `declaration-track:434de2f9bde53059cfecfd40dfe753809d83b45ad9d670e6664ddc8257500b7e` |
| 15 | `lemma` | [Scheme.Pullback.diagonalCoverDiagonalRange_eq_top_of_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/scheme-pullback-diagonalcoverdiagonalrange-eq-top-of-injective.md) | 123 | `result-track:23a1bf0fd69b8decdf6070992a532766866d2fc813d5c7029ec5055a4c213f91` |
| 16 | `lemma` | [Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/scheme-pullback-range-diagonal-subset-diagonalcoverdiagonalrange.md) | 146 | `result-track:3693e4ba0db89ef6865a56e8d020df63eea869f57a3b81b0e5fa768cbaebbb47` |
| 17 | `lemma` | [isClosedImmersion_diagonal_restrict_diagonalCoverDiagonalRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isclosedimmersion-diagonal-restrict-diagonalcoverdiagonalrange.md) | 164 | `result-track:388f936c62108313a7a73c24116c7a2f4ffc9c871986f05224c90e4e3ae0ec18` |
| 18 | `lemma` | [isSeparated_of_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isseparated-of-injective.md) | 184 | `result-track:e90d50416ce4aafc09990b65dc09b5115b9e81fd93d9fba9e258f1f12bed84a6` |
| 19 | `lemma` | [IsClosedImmersion.of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isclosedimmersion-of-comp.md) | 195 | `result-track:19d440acb4b6d3c06a3a9fc06dca71d6d23834f23512aaccca48652cd7ad971e` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-6.md) | 201 | `declaration-track:75bcae55605f8f464be2884009ab149a90bca9ab5e328739e8f593307d2059cf` |
| 21 | `lemma` | [IsSeparated.of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isseparated-of-comp.md) | 207 | `result-track:bf0f914699c5a18d2a1efb3646fdab887129a4bc255816d8652e792a9a39443c` |
| 22 | `lemma` | [IsSeparated.comp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isseparated-comp-iff.md) | 212 | `result-track:b716fe03744f69118f1ccc13a435adc1a9554b6d66140475b2cf268684480079` |
| 23 | `instance` | [isClosedImmersion_equalizer_ι_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isclosedimmersion-equalizer-left.md) | 216 | `declaration-track:d87667cf7c27748f30a73d794f133340213d4d2d0d52367c3b963877933a0eca` |
| 24 | `lemma` | [ext_of_isDominant_of_isSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/ext-of-isdominant-of-isseparated.md) | 229 | `result-track:24f6f215816c8a0f31b2d861a148139da25df87b168cea60ed95904cdb7eb5a8` |
| 25 | `lemma` | [ext_of_isDominant_of_isSeparated'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/ext-of-isdominant-of-isseparated-source-edition-2.md) | 254 | `result-track:e28b9d172366ba3100a4efd9f4d28c324bfc5d5a35be328d464d0f30df89000c` |
| 26 | `class` | [IsSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isseparated-source-edition-2.md) | 263 | `declaration-track:c032d493aef3339a3cfac0f2567be2af145ea8ffc19261b08fa660540a7fbb6c` |
| 27 | `lemma` | [isSeparated_iff_isClosedImmersion_prod_lift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isseparated-iff-isclosedimmersion-prod-lift.md) | 268 | `result-track:f82743c0bc0fdc70700b4eb7979f51cf53db52519440851277ea0b071de25e7f` |
| 28 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-10.md) | 275 | `declaration-track:9785c441350788cc02a5bf4b6541c9bf1cee722828f3611966716ffd56b6ab2f` |
| 29 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-8.md) | 278 | `declaration-track:7c6f298b1425ce82cc7f3f33fb4d1dfc2d2e29f6a5ae9057a0cffb670bb2c454` |
| 30 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-3.md) | 280 | `declaration-track:37598d295a3b9034412c4f0f1c978c79d879cca9612d11bf03fa0e50c0f686e0` |
| 31 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/instance-source-edition-4.md) | 285 | `declaration-track:424e37b297f0e9a5b4f2daab10c7cb6f534544bb23e217278e38b47a7a290780` |
| 32 | `instance` | [IsSeparated.hasAffineProperty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/isseparated-hasaffineproperty.md) | 290 | `declaration-track:4ffc10546eeae38177da97c409e9834970514c6db7cd052b788fe60b8214c05b` |
| 33 | `lemma` | [ext_of_isDominant](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Separated.lean/declarations/ext-of-isdominant.md) | 302 | `result-track:04f9cc3bdc8a1a1f06ff43650dddac0c56fdcc45262ec6ac0dd33d99a4a8e0b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6044d0c063212c21eef46d281446d4c9c5490be659a731f0b7fe6be2542f381f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
